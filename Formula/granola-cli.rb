class GranolaCli < Formula
  desc "Unofficial Granola CLI (Rust port with credential-storage fix for desktop ≥7.162)"
  homepage "https://github.com/tmcinerney/granola-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.1.2/granola-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "05ff96641e1995955dda81c5f237b2ea5355103a08612bc1b4312b3cb1022492"
    end
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.1.2/granola-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "a7071482bb977de027adada15b419b5058eb6e4bd6128bf8bc5dad7ba8a8d220"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tmcinerney/granola-cli/releases/download/v0.1.2/granola-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "683831285f3014588be1b57127a5efa141c9cc971515677c65a8e429bc39505b"
    end
  end

  def install
    bin.install "granola"
  end

  test do
    assert_match "granola #{version}", shell_output("#{bin}/granola --version")
  end
end
