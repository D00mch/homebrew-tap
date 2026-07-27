cask "souz-ai" do
  arch arm: "aarch64", intel: "X86_64"

  version "1.0.7"
  sha256 arm:   "e3d298eb235c7d31aaf1216b66b5f353d7c29bf0a62601eebf56b8ee6cf5b5a0",
         intel: "f3ca93ce9a572e2cd85ec97cddab50776bec2370fe1b19ef4c7b1226c0adfd23"

  url "https://github.com/D00mch/souz/releases/download/1.0.7/Souz_#{arch}-1.0.7.dmg",
      verified: "github.com/D00mch/souz/"
  name "Souz AI"
  desc "Security-focused desktop AI assistant"
  homepage "https://souz.app/"

  depends_on macos: :monterey

  app "Souz AI.app"

  zap trash: [
    "~/.local/state/souz",
    "~/Library/Application Support/Souz",
  ]
end
