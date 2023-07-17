import 'package:embed/src/str/str_embedding_generator.dart';
import 'package:source_gen_test/source_gen_test.dart';

Future<void> main() async {
  final libraryReader = await initializeLibraryReaderForDirectory(
    "test/generators/str/",
    "embed_str_test_src.dart",
  );

  initializeBuildLogTracking();
  testAnnotatedElements(libraryReader, StrEmbeddingGenerator());
}
