class GranolaCli < Formula
  desc "Unofficial Granola CLI and MCP server with desktop 7.427+ refresh bootstrap"
  homepage "https://github.com/tmcinerney/granola-cli"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.7.1/granola-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "a6336ba696b0e5a61a29ed1444ddf0d98e8df1da241dbb626f3c72d9f096c444"
    end
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.7.1/granola-v0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "a238f2c8516f2c924afde6350b9376fecc405fad24102e26b87ae2317f51b411"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.7.1/granola-v0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d007cffc8c0c09dfc2a53f69a2db007c35ad86fbcac5af9892c70dc10ea54d9"
    end
  end

  def install
    bin.install "granola"
  end

  test do
    assert_match "granola #{version}", shell_output("#{bin}/granola --version")
  end
end
