class Beckon < Formula
  desc "Herdr pane navigation and pluggable status displays"
  homepage "https://github.com/tmcinerney/beckon"
  url "https://github.com/tmcinerney/beckon/archive/refs/tags/v0.2.4.tar.gz"
  sha256 "54fcaeed239d469f7d8f949181a99e4f208e1408e896ede15b3845562af50a5b"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
    (bin/"beckond").write <<~SH
      #!/bin/sh
      exec "#{bin}/beckon" daemon "$@"
    SH
    chmod 0755, bin/"beckond"
  end

  test do
    assert_match "Beckon", shell_output("#{bin}/beckon --help")
  end
end
