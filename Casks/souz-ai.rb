cask "souz-ai" do
  version "1.0.6"

  on_arm do
    sha256 "63e4fa9bce0be0d1f5f79a29f75a9c7477eabb57bab76c9c030d0b5ddea494f8"
    url "https://github.com/D00mch/souz/releases/download/1.0.6/Souz_aarch64-1.0.6.dmg"
  end

  on_intel do
    sha256 "6de75df5ecf457c433950072ebf58ef4701aac86a74153b8e4451c447d667fdf"
    url "https://github.com/D00mch/souz/releases/download/1.0.6/Souz_X86_64-1.0.6.dmg"
  end

  name "Souz AI"
  desc "Security-focused desktop AI assistant"
  homepage "https://souz.app"

  livecheck do
    url :url
  end

  depends_on macos: ">= :monterey"

  app "Souz AI.app"

  zap trash: [
    "~/.local/state/souz",
    "~/Library/Application Support/Souz",
  ]
end
