cask "testing" do

  version "1.5"
  sha256 "d43e85599d5f3b9213dffdc4be831f09867754c4f3a51b7f94042bd9a41fbef2"

  url "https://github.com/satrik/testing/releases/download/#{version}/testing.dmg"
  name "testing"
  desc "testing desc"
  homepage "https://github.com/satrik/testing"

  livecheck do
    url "https://github.com/satrik/testing/releases/download/#{version}/testing.dmg"
    regex(/testing.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :mojave"

  app "testing.app"

end
