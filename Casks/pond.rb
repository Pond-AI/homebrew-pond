cask "pond" do
  version "0.1.6-alpha"
  sha256 "f2f2eddfadb5a131be9e1512d73273658b881dd1c3f52e804dd3571411375be7"

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
