class Jsonparser < Formula
    desc "A powerful command-line tool for parsing, querying, and displaying JSON data"
    homepage "https://github.com/davidhoo/jsonparser"
    url "https://github.com/davidhoo/jsonparser/archive/refs/tags/v0.0.2.tar.gz"
    sha256 "b2184b0e9ebe6ae99567db62f65c318b868171e91c77c63c474968dd394b6c6b" # 请替换为实际的 SHA256 校验和
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args, "main.go"
    end
  
    test do
      system "#{bin}/jp", "--help"
    end
  end