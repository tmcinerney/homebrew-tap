class Beckon < Formula
  desc "Glove80 agent-pane status display and Herdr navigation"
  homepage "https://github.com/tmcinerney/beckon"
  url "https://github.com/tmcinerney/beckon/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "1dd8d609d2289a7887a95dd693ec5d5e078beac4928d1177b286f9ab46739191"
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
