cask "testing" do
  version "0.1"
  sha256 "1ad7b7222c675bd7a4be7a976e0caef98c839d014ab539733091a813873c0917"

  url "https://github.com/satrik/testing/releases/download/#{version}/testing.dmg"
  name "testing"
  desc "testing desc"
  homepage "https://github.com/satrik/testing"

  depends_on macos: ">= :mojave"

  app "testing.app"

end
