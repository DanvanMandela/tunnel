class GET {
  final String path;
  const GET(this.path);
}

class POST {
  final String path;
  const POST(this.path);
}

class Body {
  const Body();
}

class Query {
  final String name;
  const Query(this.name);
}

class Header {
  final String name;
  const Header(this.name);
}