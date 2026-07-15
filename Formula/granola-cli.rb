class GranolaCli < Formula
  desc "Unofficial Granola CLI (Rust port with credential-storage fix for desktop ≥7.162)"
  homepage "https://github.com/tmcinerney/granola-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.1.3/granola-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "a1c4a3e7d2d2b8cccc7145f73ef6475acc25be05607387bca8835863457308f0"
    end
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.1.3/granola-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "d7d190b27eba700a70ed0ac036fd3179ea3e1174040fe1a598d7c7a924d7d091"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.1.3/granola-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fb3ae67287f9a1c10a46b4c8b377a33b80b5af6a1fe52e4d3f7f1489fa22963a"
    end
  end

  def install
    bin.install "granola"
  end

  test do
    assert_match "granola #{version}", shell_output("#{bin}/granola --version")
  end
end
