class GranolaCli < Formula
  desc "Unofficial Granola CLI with desktop 7.427+ refresh bootstrap"
  homepage "https://github.com/tmcinerney/granola-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.2.0/granola-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "51e9c6782c2a72d61d03d2a8fb45259f998344a4bee514dad3230085a83b7a08"
    end
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.2.0/granola-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "943759c8a933c566d2d417f00bedc5e01e17c631c63c4595940466bcb8d63fdc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.2.0/granola-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ab090e132affaa2cb824eb2457acdf9600f5ee8d30344717e2ab332e79caa144"
    end
  end

  def install
    bin.install "granola"
  end

  test do
    assert_match "granola #{version}", shell_output("#{bin}/granola --version")
  end
end
