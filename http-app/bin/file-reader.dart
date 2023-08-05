import 'dart:io';
import 'dart:convert' as converter;

Future<void> main(List<String> args) async {
  File file = File('/home/solom/dartTraining/node.dart');
  try {
    //bytes
    // Stream<List<int>> stream = await file.openRead();
    // await for (var element in stream.transform(converter.utf8.decoder)) {
    //   print(element);
    // }

    Stream<List<int>> stream = file.openRead();

    stream.listen((data) async {
     print(converter.Utf8Decoder().convert(data));
      // await for (var element in stream.transform(converter.utf8.decoder)) {
      //   print(element);
      // }
    });
  } on FileSystemException catch (err) {
    print(err);
  }
}
