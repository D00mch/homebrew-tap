cask "souz-ai" do
  version "1.0.4"

  on_arm do
    sha256 "48852f549dba89746c1b2b83f61d6d22c250405a2aa896ac09909920e5550754"
    url "https://github.com/D00mch/souz/releases/download/1.0.4/Souz_aarch64-1.0.4.dmg"
  end

  on_intel do
    sha256 "09c0c70a2e40fda4f6804dbecde59f75b76f7c6ce6433e2b9854d0a7ed9a494a"
    url "https://github.com/D00mch/souz/releases/download/1.0.4/Souz_X86_64-1.0.4.dmg"
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
