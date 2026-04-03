cask "souz-ai" do
  version "1.0.5"

  on_arm do
    sha256 "e58e99246d3aeff368babe5dea1155e52f5ac87fe8b7b96eff21257bf8c08890"
    url "https://github.com/D00mch/souz/releases/download/1.0.5/Souz_aarch64-1.0.5.dmg"
  end

  on_intel do
    sha256 "891627032a487adb4af9dc5e22a2e037555e49e0100da4551d4210edda3e5e3c"
    url "https://github.com/D00mch/souz/releases/download/1.0.5/Souz_X86_64-1.0.5.dmg"
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
