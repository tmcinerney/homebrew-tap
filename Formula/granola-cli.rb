class GranolaCli < Formula
  desc "Unofficial Granola CLI with desktop 7.427+ refresh bootstrap"
  homepage "https://github.com/tmcinerney/granola-cli"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.1.4/granola-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "5c8f3da3b50834981501c7e0829cf3d4c9c8ac89c2c42bc7de8b61be4cf58fc4"
    end
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.1.4/granola-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "708c8d8866675f46435ab9ff4692159cec3cd332067e259f1962d8949c245739"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.1.4/granola-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9cec150578de2057481acd9a9d270bd9b15e305135a3234d3ab177641c41b6f6"
    end
  end

  def install
    bin.install "granola"
  end

  test do
    assert_match "granola #{version}", shell_output("#{bin}/granola --version")
  end
end
