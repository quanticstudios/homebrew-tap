# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.0-beta.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.6/pitwall_darwin_arm64.tar.gz"
      sha256 "7c998548435e3dc515d060668e7cb7f4e8e8bd817478ddbf50575efe29fde657"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.6/pitwall_darwin_amd64.tar.gz"
      sha256 "06426681cf950782fcdf206dde758edf3a5f8677a3dfbe73e7d8df92aa3c0c4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.6/pitwall_linux_arm64.tar.gz"
      sha256 "6b12e7771957253806cb21114ebb2b898886ff79dc2e65665a6c9ad88634ef9a"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.6/pitwall_linux_amd64.tar.gz"
      sha256 "fce253455a0987e2bab0d36413b322fa825856ded8cacca385bbe0d1f708acd0"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
