cask "pond" do
  version "0.1.5-alpha"
  sha256 "8ce56902b6d11208e244d85065b16a9af28ee6eb91878db90fd38d6bbafa954c"

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
