

import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;



class SocketService {



   static  late  var ipAddress ;
  //192.168.31.192

  static IO.Socket? socket;

  static void init() {
      print('the api is $ipAddress');
    socket = IO.io('http://$ipAddress:3030/user',
        IO.OptionBuilder()
            .setTransports(['websocket']) // for Flutter or Dart VM
            .disableAutoConnect()
            .build()


    );

    // socket = IO.io('http://localhost:3000', <String, dynamic>{
    //   'transports': ['websocket'],
    //   'autoConnect': false,
    //
    // });
  }

 static void connect(BuildContext context,Function mapdata) async {
      socket?.connect();
    socket?.onConnect((_) {
      print('connected Socket');
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Connected to the server'),
      ));

      socket?.on('C_bus_moved', (data) {

        mapdata(data);

        //
        // if (data != null && data is Map<String, dynamic>) {
        //   int latitude = data['lat'] ?? 0.0;
        //   int longitude = data['long'] ?? 0.0;
        //
        //
        //
        //
        //   // Now you can use latitude and longitude as needed
        //   print('Latitude: $latitude, Longitude: $longitude');
        // }

      });





    });
    socket?.onConnectError((data) {
      print('connect error $data');
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Connection error'),
      ));


    });






  }


  static void disconnect() {
    socket?.disconnect();
  }

  static void sendMessage(dynamic message) {
    if (socket != null) {
      socket?.emit('bus_moved', message);
      print('Message sent: $message');
    } else {
      print('Socket is not available. Message not sent.');
    }
  }



  //  void listenToMessage(Function(dynamic) onMessage) {
  //   socket?.on('C_bus_moved', (dynamic data) => onMessage(data));
  //
  // }

  static void listenToServer(){
    print('Listening to server...');
    socket?.on('C_bus_moved', (data) => print("The server says: $data"));
  }



}