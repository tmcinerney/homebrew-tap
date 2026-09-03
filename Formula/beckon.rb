class Beckon < Formula
  desc "Glove80 agent-pane status display and Herdr navigation"
  homepage "https://github.com/tmcinerney/beckon"
  url "https://github.com/tmcinerney/beckon/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "0f6a9eefc84d30937148d3ddc679c56216221b8c1e38ef4bd8086778eabe7076"
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
