cask "halopen" do
  version "1.8.40,200"
  sha256 "b65a90571dd62b1c5b626780c820e0d4b36b73fb684034da6e3a81c3d1f84a6d"

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
