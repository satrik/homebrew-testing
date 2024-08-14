cask "testing" do

  version "1.6"
  sha256 "ba9afa4f1fdaceefac895b0aa21e56b48f70a1a72043b873664863fcd02acb0f"

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
