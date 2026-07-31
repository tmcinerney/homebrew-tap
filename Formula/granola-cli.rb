class GranolaCli < Formula
  desc "Unofficial Granola CLI and MCP server with desktop 7.427+ refresh bootstrap"
  homepage "https://github.com/tmcinerney/granola-cli"
  version "0.5.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.5.5/granola-v0.5.5-aarch64-apple-darwin.tar.gz"
      sha256 "9f48f7a37b75f63a2abf6449ec4aa8fa02801cc30d13bbe5b1873f2d9b263a77"
    end
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.5.5/granola-v0.5.5-x86_64-apple-darwin.tar.gz"
      sha256 "e2c11364cb9b93ea1077a450990c5655b18c9d7fb2ea4a69708df5170c26bd8a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.5.5/granola-v0.5.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aae116868831dfc408493e06aba651539b08fa450c69ced5e9931d511431305d"
    end
  end

  def install
    bin.install "granola"
  end

  test do
    assert_match "granola #{version}", shell_output("#{bin}/granola --version")
  end
end
