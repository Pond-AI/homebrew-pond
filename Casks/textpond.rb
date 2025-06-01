cask "textpond" do
  version "0.1.0-alpha"
  sha256 "5bc3e7924c87f5668591a53b0c6d0486f262e0a9ba958733b3966deeeb09f07d"

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
