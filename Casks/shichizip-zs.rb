cask "shichizip-zs" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.6"
  sha256 arm:   "d6b2380332e990971ae699fc528cb9d8bfd19b4aec1f7b750cc3a541d437377a",
         intel: "1d5f802731f924fb4d905c2a81e39caec6ebdd2431bb80dd971fd3ef015fbb4f"

  url "https://github.com/idawnlight/ShichiZip/releases/download/v#{version}/ShichiZipZS-v#{version}-#{arch}.zip"
  name "ShichiZip ZS"
  desc "7-Zip derivative GUI (ZS variant with Zstandard compression support)"
  homepage "https://github.com/idawnlight/ShichiZip"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "ShichiZip ZS.app"

  zap trash: [
    "~/Library/Application Scripts/ee.dawn.ShichiZipZS.OpenInShichiZipAction",
    "~/Library/Application Scripts/ee.dawn.ShichiZipZS.RevealInFileManagerAction",
    "~/Library/Application Scripts/ee.dawn.ShichiZipZS.SmartQuickExtractAction",
    "~/Library/Group Containers/VNM753Y3JX.ShichiZipZS",
    "~/Library/Preferences/ee.dawn.ShichiZipZS.plist",
  ]
end
