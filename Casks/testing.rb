cask "testing" do

  version "1.6"
  sha256 "42395bd3618cf538b01b32dfcd306e471242b3205cfd80d0e06a9a25bedfe388"

  url "https://github.com/satrik/testing/releases/download/#{version}/toggleMute.dmg"
  name "testing"
  desc "testing desc"
  homepage "https://github.com/satrik/testing"

  livecheck do
    url "https://github.com/satrik/testing/releases/download/#{version}/toggleMute.dmg"
    regex(/toggleMute.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :mojave"

  app "toggleMute.app"

end
