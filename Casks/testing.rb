cask "testing" do

  version "1.5"
  sha256 "1330e4dadf0356cc8c24fac7d1cccc10ec25865f2e6bbc0c250b77d681781235"

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
