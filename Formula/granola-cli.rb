class GranolaCli < Formula
  desc "Unofficial Granola CLI and MCP server with desktop 7.427+ refresh bootstrap"
  homepage "https://github.com/tmcinerney/granola-cli"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.7.0/granola-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "c6cc998475f739e7a5b8db911bffd035d841703475b04d91400cfe6dc3213c29"
    end
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.7.0/granola-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "f7a26f4933ddc84c58cd746ea2c2b55036e9629106df0c30821776b838b78208"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.7.0/granola-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "265200d07f83a6aaecc4faff2b828ba9c056fe4b777630d0b65a74730a9e1d89"
    end
  end

  def install
    bin.install "granola"
  end

  test do
    assert_match "granola #{version}", shell_output("#{bin}/granola --version")
  end
end
