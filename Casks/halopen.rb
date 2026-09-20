cask "halopen" do
  version "1.8.30,190"
  sha256 "a0f30a8e3fd1ef24d44641dd0ca352b2d40b91203cdb8168f3c2ba8433bc4357"

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
