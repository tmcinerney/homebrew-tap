cask "colimacontrol" do
  version "0.1.0"
  sha256 "e68cef4b4682d270e03fdd9c1a02573191b9ce074b0bb9cfed33d7ce434b6cd9"

  url "https://github.com/tmcinerney/ColimaControl/releases/download/v#{version}/ColimaControl-#{version}.zip",
      verified: "github.com/tmcinerney/ColimaControl/"
  name "ColimaControl"
  desc "Menu bar app for managing the Colima container runtime"
  homepage "https://github.com/tmcinerney/ColimaControl"

  # AIDEV-NOTE: :github_releases rather than the default :github_latest.
  # Versions below 1.0.0 publish as pre-releases, and :github_latest skips
  # those, so livecheck would report nothing until the first stable tag.
  livecheck do
    url :url
    strategy :github_releases
  end

  # The app sets MACOSX_DEPLOYMENT_TARGET = 26.0. A bare symbol already means
  # ">=" here (Cask::DSL::DependsOn#macos= parses with comparator ">="), so this
  # admits macOS 26 and newer; the ">= :tahoe" string form is deprecated.
  depends_on macos: :tahoe

  # AIDEV-NOTE: deliberately no `depends_on formula: "colima"`. The app resolves
  # Colima through the user's login shell precisely so Nix, MacPorts and manual
  # installs work. Declaring a Homebrew dependency would install a second,
  # unused Colima alongside the one those users already have.

  app "ColimaControl.app"

  zap trash: [
    "~/Library/Application Support/sh.trav.ColimaControl",
    "~/Library/Caches/sh.trav.ColimaControl",
    "~/Library/HTTPStorages/sh.trav.ColimaControl",
    "~/Library/Preferences/sh.trav.ColimaControl.plist",
    "~/Library/Saved Application State/sh.trav.ColimaControl.savedState",
  ]
end
