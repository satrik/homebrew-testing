cask "testing" do

  version "1.6"
  sha256 "9addbf7dea866fb0e862334999292fecbc17bbce33e6e9d4fe58a68f8809038e"

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
