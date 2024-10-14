class Jsonparser < Formula
    desc "A powerful command-line tool for parsing, querying, and displaying JSON data with various options"
    homepage "https://github.com/davidhoo/jsonparser"
    url "https://github.com/davidhoo/jsonparser/archive/refs/tags/v0.0.2.tar.gz"
    sha256 "b2184b0e9ebe6ae99567db62f65c318b868171e91c77c63c474968dd394b6c6b" # 确保使用最新的 SHA256 校验和
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "mod", "tidy" # 确保依赖项是最新的
      system "go", "build", "-o", bin/"jp", "main.go" # 指定输出文件名为 jp
    end
  
    test do
      # 测试帮助命令
      system "#{bin}/jp", "--help"

      # 测试有效的 JSON 文件
      (testpath/"test.json").write('{"key": "value"}')
      assert_match "value", shell_output("#{bin}/jp test.json")

      # 测试无效的 JSON 文件
      (testpath/"invalid.json").write('{"key": "value"') # 缺少闭合括号
      assert_match "Error parsing JSON", shell_output("#{bin}/jp invalid.json 2>&1", 1)
    end
  end
