cask "souz-ai" do
  arch arm: "aarch64", intel: "X86_64"

  version "1.0.8"
  sha256 arm:   "6256dcf4025478ea29a28d2bfbd901d2fd594b59e216e86b9346bf571ba347f0",
         intel: "8403d78de3deca44c865a73a9e11e1ddfb21d981542b72ada816bfad3917e316"

  url "https://github.com/D00mch/souz/releases/download/#{version}/Souz_#{arch}-#{version}.dmg",
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
