cask "textpond" do
    version "0.1.0"
    version_suffix = "alpha"
    sha256 "c1042d484032ba3d7bc77b1264dd6c096ae2b8956a2f992168718f7d7a8c195c"
  
    url "https://github.com/pond-ai/homebrew-textpond/releases/download/v#{version}-#{version_suffix}/Textpond_#{version}_aarch64.dmg",
        verified: "github.com/pond-ai/homebrew-textpond/"
    name "Textpond"
    desc "Connect your AI apps to your messages"
    homepage "https://trypond.ai"
  
    depends_on macos: ">= :catalina"
    depends_on arch: :arm64
    app "Textpond.app"
  
    zap trash: [
      "~/Library/Application Support/Textpond",
      "~/Library/Logs/com.textpond.*",
    ]
end