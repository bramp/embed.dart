import 'package:embed/src/embedders/embedder.dart';
import 'package:embed/src/embedders/string_embedder.dart';
import 'package:embed_annotation/embed_annotation.dart';
import 'package:source_gen/source_gen.dart';

Embedder resolveEmbedder(ConstantReader annotation) {
  final contentPath = annotation.read("path").stringValue;

  if (_instanceOf(EmbedStr, annotation)) {
    return StringEmbedder(EmbedStr(
      contentPath,
      raw: annotation.read("raw").boolValue,
    ));
  } else {
    throw ArgumentError.value(annotation);
  }
}

bool _instanceOf(Type type, ConstantReader annotation) =>
    annotation.instanceOf(TypeChecker.fromRuntime(type));
