# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.0/pitwall_darwin_arm64.tar.gz"
      sha256 "97184b5e4cb5484bccd8d029c2f567cee50a0ee4b1bc7984de75775b92560224"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.0/pitwall_darwin_amd64.tar.gz"
      sha256 "aa39963c816d26e24e33936f7df1045bc65e4e33999409bf6184d1f061dbe8eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.0/pitwall_linux_arm64.tar.gz"
      sha256 "0b3e1f0e3a3790bfc6af470f70c2671e33ec420b8922c38d303270f7aa6c8fd9"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.0/pitwall_linux_amd64.tar.gz"
      sha256 "5ce0ada6bde641cb8a65c215602e738c6663019f4156e4d29dfa5b25087c4ed0"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
