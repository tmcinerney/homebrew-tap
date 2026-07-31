class GranolaCli < Formula
  desc "Unofficial Granola CLI and MCP server with desktop 7.427+ refresh bootstrap"
  homepage "https://github.com/tmcinerney/granola-cli"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.5.1/granola-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "d38fef51389a01e1ce2dcd2120b6c5a388f7d0773bb85bb05ceb72372849609a"
    end
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.5.1/granola-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "fb8f581fc9a2fac756420e35e566288781d36710642b0c894f7e25089b4afaab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.5.1/granola-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d969acc04907ae57b2490cd5f908c7f85ea53dc6c7f157895b43cdf0a47bf5f9"
    end
  end

  def install
    bin.install "granola"
  end

  test do
    assert_match "granola #{version}", shell_output("#{bin}/granola --version")
  end
end
