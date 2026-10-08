cask "halopen" do
  version "1.8.41,201"
  sha256 "ef24f32495702b368b15c97dca219261b7722718a778cf8afc6ce8b674cd6c97"

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
