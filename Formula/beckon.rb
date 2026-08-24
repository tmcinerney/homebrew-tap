class Beckon < Formula
  desc "Glove80 agent-pane status display and Herdr navigation"
  homepage "https://github.com/tmcinerney/beckon"
  url "https://github.com/tmcinerney/beckon/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "de0be578a4f04e07a2f1d57c36b5528937f9d6c78a342c338a21a5209d643432"
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
