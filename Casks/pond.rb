cask "pond" do
  version "0.1.1-alpha"
  sha256 "b3c113749e11966e121b4359139039370572e447aeccdfe57a393de603ccdaaa"

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
