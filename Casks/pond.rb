cask "pond" do
  version "0.1.3-alpha"
  sha256 "6c3290bdb1cd17070019a3b8f88e54033fccc8fbe254445db9fcf9bcde4451fa"

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
