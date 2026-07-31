class GranolaCli < Formula
  desc "Unofficial Granola CLI and MCP server with desktop 7.427+ refresh bootstrap"
  homepage "https://github.com/tmcinerney/granola-cli"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.5.2/granola-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "3bf1271d357a509140f53a8f18680b5178c8c107397fcd9a855d3659aeb7d47a"
    end
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.5.2/granola-v0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "240d6e32deb44826e22de7da2b6da6d53f9185407b97d41265c5bd5e7a489fdd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.5.2/granola-v0.5.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f0abac5ec44f6f1f09b6d4b999c11009187d006016a297cffff9b1323609ea08"
    end
  end

  def install
    bin.install "granola"
  end

  test do
    assert_match "granola #{version}", shell_output("#{bin}/granola --version")
  end
end
