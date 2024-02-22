cask "testing" do
  version "0.1"
  sha256 "97de86279a93d519acc8dabbdd2c9aadb6682bbd7533a4edb5ef6ca4cdaa9125"

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

