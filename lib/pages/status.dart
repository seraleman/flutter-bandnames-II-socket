import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:band_name/services/socket_service.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    final socketService = Provider.of<SocketService>(context);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.message),
        onPressed: () {
          socketService.emit(
            'emitir-mensaje',
            {'nombre': 'Flutter', 'mensaje': 'Hola desde Flutter'},
          );
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ServerStatus: ${socketService.serverStatus}'),
          ],
        ),
      ),
    );
  }
}
