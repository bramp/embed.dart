sealed class Embed {
  const Embed(this.path);
  final String path;
}

class EmbedStr extends Embed {
  const EmbedStr(super.path, {this.raw = true});
  final bool raw;
}
