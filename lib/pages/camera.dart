import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:spectacolr/filters.dart';

int f = 0;

class CameraPage extends StatefulWidget {
  final List <CameraDescription> camera;
  CameraPage({key, required this.camera});
  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  CameraController contr = CameraController(CameraDescription(name: "", lensDirection: CameraLensDirection.front, sensorOrientation: 0), ResolutionPreset.medium);
  @override
  void initState(){
    super.initState();
    getf();
    contr = CameraController(widget.camera[0], ResolutionPreset.medium);
    contr.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    contr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: filterz[f],
      child: AspectRatio(
        aspectRatio: 1/contr.value.aspectRatio,
        child: CameraPreview(contr),
      ),
    );
  }
}

void getf() async {
  f = await getActive();
}