cask "pond" do
  version "0.1.0-alpha"
  sha256 "7ba64e758285aab42bdbac504cfd70c2d012f960f225c967b15c22ce3a0a87f8"

  url "https://github.com/pond-ai/homebrew-pond/releases/download/v#{version}/pond_#{version}_aarch64.dmg",
      verified: "github.com/pond-ai/homebrew-pond/"
  name "pond"
  desc "Connect your AI apps to your messages"
  homepage "https://trypond.ai/"

  depends_on macos: ">= :catalina"
  depends_on arch: :arm64

  app "Pond.app"

  zap trash: [
    "~/Library/Application Support/Pond",
    "~/Library/Logs/com.pond.*",
  ]
end
