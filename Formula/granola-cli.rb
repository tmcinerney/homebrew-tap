class GranolaCli < Formula
  desc "Unofficial Granola CLI and MCP server with desktop 7.427+ refresh bootstrap"
  homepage "https://github.com/tmcinerney/granola-cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.3.1/granola-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "28fd3a8de3366d39bed36699bedebebf421697daeb52aa696b8e80884774ba5e"
    end
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.3.1/granola-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "cef2605502f0c6b18c78f56737410fcf22b8f5288ccabc628a79180108a09665"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.3.1/granola-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0536422645e4b1a023a94fe9ef9c1ce6b31d539bc562ad1c11eeb1b51c009954"
    end
  end

  def install
    bin.install "granola"
  end

  test do
    assert_match "granola #{version}", shell_output("#{bin}/granola --version")
  end
end
