class GranolaCli < Formula
  desc "Unofficial Granola CLI (Rust port with credential-storage fix for desktop ≥7.162)"
  homepage "https://github.com/tmcinerney/granola-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.1.1/granola-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "f54043d7bced3a7de2d8c3e96fd434b67a0b9eb4b9c0032a5b8fd00653a0ae4a"
    end
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.1.1/granola-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "865b194d553848be79ef968ab5a95f8c83b8dd28bc4bebfbd612d2752a63b19e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.1.1/granola-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea14ea105a0127a0459656737ce2001d3a2e82da078c595cec35773c43993407"
    end
  end

  def install
    bin.install "granola"
  end

  test do
    assert_match "granola #{version}", shell_output("#{bin}/granola --version")
  end
end
