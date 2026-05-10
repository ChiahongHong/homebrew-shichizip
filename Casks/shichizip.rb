cask "shichizip" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.5"
  sha256 arm:   "5e6c3c7aac5dfc4cdbe8df3bea73d436ebc627f7fd27c6b62c1152c57856c848",
         intel: "324efd796989af19707f7dce7ce99fab68bd32370ca8e3f2c955c091e00b39e6"

  url "https://github.com/idawnlight/ShichiZip/releases/download/v#{version}/ShichiZip-v#{version}-#{arch}.zip"
  name "ShichiZip"
  desc "7-Zip derivative intended for macOS"
  homepage "https://github.com/idawnlight/ShichiZip"

  depends_on macos: ">= :ventura"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ShichiZip.app"

  zap trash: [
    "~/Library/Application Scripts/ee.dawn.ShichiZip.OpenInShichiZipAction",
    "~/Library/Application Scripts/ee.dawn.ShichiZip.RevealInFileManagerAction",
    "~/Library/Application Scripts/ee.dawn.ShichiZip.SmartQuickExtractAction",
    "~/Library/Group Containers/VNM753Y3JX.ShichiZip",
    "~/Library/Preferences/ee.dawn.ShichiZip.plist",
  ]
end
