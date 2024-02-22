cask "testing" do
  version "0.1"
  sha256 "c87621e77683dd9cc1853f52a824b2f1eb4594383299967028918cc32aa5d213"

  url "https://github.com/satrik/testing/releases/download/#{version}/testing.dmg"
  name "testing"
  desc "testing desc"
  homepage "https://github.com/satrik/testing"

  depends_on macos: ">= :mojave"

  app "toggleMute.app"

end

