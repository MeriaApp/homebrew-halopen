cask "halopen" do
  version "1.8.39,199"
  sha256 "025d5df6e08e7e6cfa5d55c9e0af72c801a148259a0d75b0eaba6a9aeb3ffe2f"

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
