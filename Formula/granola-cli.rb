class GranolaCli < Formula
  desc "Unofficial Granola CLI and MCP server with desktop 7.427+ refresh bootstrap"
  homepage "https://github.com/tmcinerney/granola-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.5.0/granola-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "377cc2fbb3b21002a41fea31e3ea770f2396015baf7c1dd0eb9549b84b520fe2"
    end
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.5.0/granola-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "2661b531369431ea70bb11b30a0f12311fb1b70326aeea3797e0633f35efc595"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.5.0/granola-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dbbc16c886df615f465842b292b18f6cd7ad929912467739e45090d3fd450667"
    end
  end

  def install
    bin.install "granola"
  end

  test do
    assert_match "granola #{version}", shell_output("#{bin}/granola --version")
  end
end
