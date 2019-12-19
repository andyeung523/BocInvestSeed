import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'dart:io';
import 'package:oauth2/oauth2.dart' as oauth2;
import 'package:http/http.dart' as http;

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
    final credentialsFile = new File("C:\Users\ycm\Developer\Flutter\BocHack\invest_game\lib\model\login\credentials.json"); 
    //stock_code":"1","name_en":"CKH HOLDINGS","name_tc":"長和","price":"71.75","change":"-0.45","change_pct":"-0.62","pe_ratio":"7.1","turnover":"309210000"
    int stock_code=0;
    String name_en = '';
    double price = 0.0;
    double change = 0.0;
    double change_pct = 0.0;
    double pe_ratio = 0.0;
    int turnover = 0;
    
    
    

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
    
    Future<double> getPrice(var num) async {
        // Calling the top-level `clientCredentialsGrant` function will return a
        // [Client] instead.
        print('getprice');
        print('$Client');
        var client = await oauth2.clientCredentialsGrant(
            authorizationEndpoint, identifier, secret, scopes: ['all']);
        //print('$response');

        // With an authenticated client, you can make requests, and the `Bearer` token
        // returned by the server during the client credentials grant will be attached
        // to any request you make.
        var response = await client.read("https://api.au-syd.apiconnect.appdomain.cloud/bochk-fintech-dev/sb/api/investments/stock-price?stock_code=$num");
        print('$response');
        
        Map<String, dynamic> map = jsonDecode(response);
        // You can save the client's credentials, which consists of an access token, and
        // potentially a refresh token and expiry date, to a file. This way, subsequent runs
        // do not need to reauthenticate, and you can avoid saving the client identifier and
        // secret.
        //await credentialsFile.writeAsString(client.credentials.toJson());
        var r = map['price']; 
        print('$response');
        print('getprice_fin');
        print(r);
        return Future.value(double.parse(r));  
    }

    Future<Void> get_stock_info(var num) async {
        // Calling the top-level `clientCredentialsGrant` function will return a
        // [Client] instead.
        print('info');
        print('$Client');
        var client = await oauth2.clientCredentialsGrant(
            authorizationEndpoint, identifier, secret, scopes: ['all']);
        //print('$response');

        // With an authenticated client, you can make requests, and the `Bearer` token
        // returned by the server during the client credentials grant will be attached
        // to any request you make.
        var response = await client.read("https://api.au-syd.apiconnect.appdomain.cloud/bochk-fintech-dev/sb/api/investments/stock-price?stock_code=$num");
        print('$response');
        
        Map<String, dynamic> map = jsonDecode(response);
        // You can save the client's credentials, which consists of an access token, and
        // potentially a refresh token and expiry date, to a file. This way, subsequent runs
        // do not need to reauthenticate, and you can avoid saving the client identifier and
        // secret.
        //await credentialsFile.writeAsString(client.credentials.toJson());
        this.price = double.parse(map['price']);
        this.stock_code = num;
        this.name_en = map['name_en'];
        this.change = double.parse(map['change']);
        this.change_pct = double.parse(map['change_pct']);
        this.pe_ratio = double.parse(map['pe_ratio']);
        this.turnover = int.parse(map['turnover']);
        print('ss');
        print('$price');
        print('$stock_code');
        print('$name_en');
        print('$change');
        print('$change_pct');
        print('$pe_ratio');
        print('$turnover');
        return null;
    }
    double get_price(){
      return this.price;
    }
    double get_change(){
      return this.change;
    }
    double get_change_pct(){
      return this.change_pct;
    }
    double get_pe_ratio(){
      return this.pe_ratio;
    }
    int get_turnover(){
      return this.turnover;
    }
    int get_stock_code(){
      return this.stock_code;
    }
    String get_name_en(){
      return this.name_en;
    }
}