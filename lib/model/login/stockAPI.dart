import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'dart:io';
import 'package:oauth2/oauth2.dart' as oauth2;

class StockAPI {

    // This URL is an endpoint that's provided by the authorization server. It's
    // usually included in the server's documentation of its OAuth2 API.
    var num;
    final authorizationEndpoint =
        Uri.parse("https://api.au-syd.apiconnect.appdomain.cloud/bochk-fintech-dev/sb/oauth2-provider/oauth2/token");

    // The OAuth2 specification expects a client's identifier and secret
    // to be sent when using the client credentials grant.
    //
    // Because the client credentials grant is not inherently associated with a user,
    // it is up to the server in question whether the returned token allows limited
    // API access.
    // 
    // Either way, you must provide both a client identifier and a client secret:
    final identifier = "218d1356-d15b-491c-aba6-49ac9c888b01";
    final secret = "J0vU1yF1jX3hM2tH5sQ2rK3rM0fR1sP0rF5jF4yX1xV7yA1gJ8";
    final credentialsFile = new File("~/.myapp/credentials.json"); 
    /// Either load an OAuth2 client from saved credentials or authenticate a new
    /// one.
    StockAPI();
    Future<oauth2.Client> getClient() async {
      var exists = await credentialsFile.exists();

      // If the OAuth2 credentials have already been saved from a previous run, we
      // just want to reload them.
      if (exists) {
        var credentials = new oauth2.Credentials.fromJson(
            await credentialsFile.readAsString());
        return new oauth2.Client(credentials,
            identifier: identifier, secret: secret);
      }
    }

    Future<String> getPrice() async {
        // Calling the top-level `clientCredentialsGrant` function will return a
        // [Client] instead.
        
        var client = await oauth2.clientCredentialsGrant(
            authorizationEndpoint, identifier, secret);
        // With an authenticated client, you can make requests, and the `Bearer` token
        // returned by the server during the client credentials grant will be attached
        // to any request you make.
        var response = await client.read("https://api.au-syd.apiconnect.appdomain.cloud/bochk-fintech-dev/sb/api/investments/stock-price?stock_code=1'");
        print('sssresponse');
        // You can save the client's credentials, which consists of an access token, and
        // potentially a refresh token and expiry date, to a file. This way, subsequent runs
        // do not need to reauthenticate, and you can avoid saving the client identifier and
        // secret.
        await credentialsFile.writeAsString(client.credentials.toJson());
        var r = jsonDecode(response);

        print('$response');
        return r;  
    }
}