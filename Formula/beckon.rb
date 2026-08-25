class Beckon < Formula
  desc "Glove80 agent-pane status display and Herdr navigation"
  homepage "https://github.com/tmcinerney/beckon"
  url "https://github.com/tmcinerney/beckon/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "a7edde011173022b24f12fad8d29c8b14be3b9b5f08e479be0156d477a232d79"
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
