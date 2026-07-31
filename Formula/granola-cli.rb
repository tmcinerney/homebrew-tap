class GranolaCli < Formula
  desc "Unofficial Granola CLI and MCP server with desktop 7.427+ refresh bootstrap"
  homepage "https://github.com/tmcinerney/granola-cli"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.6.0/granola-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "6b6081ea0e27ffbb0dc316a72e7c57020f04cb5d8738f75fee54c417711805d5"
    end
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.6.0/granola-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "9dabbbf531695073947efcab26d1e401487cfafdbdda351d98c0c61e55d90d88"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.6.0/granola-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7633e9284593d07f2983a08c8e46fa588bd60dad622a597bd9d248a2f4aebe00"
    end
  end

  def install
    bin.install "granola"
  end

  test do
    assert_match "granola #{version}", shell_output("#{bin}/granola --version")
  end
end
