class GranolaCli < Formula
  desc "Unofficial Granola CLI and MCP server with desktop 7.427+ refresh bootstrap"
  homepage "https://github.com/tmcinerney/granola-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.3.0/granola-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "e0e93f52ddbd24ebeba7b8c5719d5f9a08f06c7416395c13043feeab465edd76"
    end
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.3.0/granola-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "99a89713dccc3f050d6ef3b37dd6a3450c091a59674e69e6a7a3025cbeef6aa0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.3.0/granola-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cb00ea44f72c7734f56a03b0dd4a01562d406bde56545047e7f31ee20b5b4a97"
    end
  end

  def install
    bin.install "granola"
  end

  test do
    assert_match "granola #{version}", shell_output("#{bin}/granola --version")
  end
end
