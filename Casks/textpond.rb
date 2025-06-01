cask "textpond" do
  version "0.1.0-alpha"
  sha256 "7b1b64f974675020ba97a761c28ca4c97b30d39f02170a91f46269ab953a642e"

  url "https://github.com/pond-ai/homebrew-textpond/releases/download/v#{version}/Textpond_#{version}_aarch64.dmg",
      verified: "github.com/pond-ai/homebrew-textpond/"
  name "Textpond"
  desc "Connect your AI apps to your messages"
  homepage "https://trypond.ai/"

  depends_on macos: ">= :catalina"
  depends_on arch: :arm64

  app "Textpond.app"

  zap trash: [
    "~/Library/Application Support/Textpond",
    "~/Library/Logs/com.textpond.*",
  ]
end
