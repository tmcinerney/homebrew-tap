class GranolaCli < Formula
  desc "Unofficial Granola CLI (Rust port with credential-storage fix for desktop ≥7.162)"
  homepage "https://github.com/tmcinerney/granola-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.1.0/granola-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "06c680e29737e6fcf047b4bae6f6dfdd00d91d96c07422146d42c3a72a63fbc5"
    end
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.1.0/granola-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "4618d36821f266abebfebafe3cd70e327729abddd0df9c660178363a01693a38"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.1.0/granola-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7348e1aac5b12593373819b83a3856b9ee494c9931375d3fba0c415dec3fd3e9"
    end
  end

  def install
    bin.install "granola"
  end

  test do
    assert_match "granola #{version}", shell_output("#{bin}/granola --version")
  end
end
