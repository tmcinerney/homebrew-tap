class GranolaCli < Formula
  desc "Unofficial Granola CLI and MCP server with desktop 7.427+ refresh bootstrap"
  homepage "https://github.com/tmcinerney/granola-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.4.0/granola-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "7f9dd21ad92f70139c9d11f536fe771bd446fd2e280a4f05e8d8a3bae06b842b"
    end
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.4.0/granola-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "8fe426e127982b6a7189ccb30048e25ee472a0184630ccbba399fb841defbfb3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.4.0/granola-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a39ab9cbafb192f5fbc0bf6adbdb33b9251b6a0fcd6c5eee25c80f1c2c975e75"
    end
  end

  def install
    bin.install "granola"
  end

  test do
    assert_match "granola #{version}", shell_output("#{bin}/granola --version")
  end
end
