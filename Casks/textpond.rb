cask "textpond" do
    version "0.1.0-alpha"
    sha256 "784a4400c64ea108a2f9418ac8b7f5b4aa481e800a4f9db94f2d053063dafacd"
  
    url "https://github.com/pond-ai/homebrew-textpond/releases/download/v#{version}/Textpond_#{version}_aarch64.dmg",
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