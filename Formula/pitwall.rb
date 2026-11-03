# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.12/pitwall_darwin_arm64.tar.gz"
      sha256 "08fff860be0e7f47e0897214badc777df2ea60befaec7b40fa56c55eb52aba80"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.12/pitwall_darwin_amd64.tar.gz"
      sha256 "ec898bb03f533c330676264f79377e58ac26e3f0d08ada0df59c99f3b30745db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.12/pitwall_linux_arm64.tar.gz"
      sha256 "a92bf68999395b6214a415e905b74f8041f9530e1ccf8b88afbf11de9cb3c882"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.12/pitwall_linux_amd64.tar.gz"
      sha256 "9949320abb415d69ebdb303caff34c6e03bac4633be77c6aa973244ef5f67f38"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
