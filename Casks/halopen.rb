cask "halopen" do
  version "1.8.37,197"
  sha256 "8325445b6e8bf234d633cfa225012a2adc2e38f1fa637405cccc1d23ac82be51"

  url "https://halopen.com/releases/Halopen-#{version.csv.first}.dmg"
  name "Halopen"
  desc "Dictation app that writes what you said"
  homepage "https://halopen.com/"

  livecheck do
    url "https://halopen.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Halopen.app"

  uninstall quit: "com.halopen.Halopen"

  zap trash: [
    "~/Library/Application Support/Halopen",
    "~/Library/Caches/com.halopen.Halopen",
    "~/Library/HTTPStorages/com.halopen.Halopen",
    "~/Library/Preferences/com.halopen.Halopen.plist",
    "~/Library/WebKit/com.halopen.Halopen",
  ]
end
