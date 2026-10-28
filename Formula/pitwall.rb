# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.5/pitwall_darwin_arm64.tar.gz"
      sha256 "9b30d590786cd738f76ec486e302149d200e8ed77906d3c7ef6f056fb37f08d5"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.5/pitwall_darwin_amd64.tar.gz"
      sha256 "f3e0386404176705fd5aa0dbcadc9ab2fe064f5a55bb1d64f1a47dfd08dff0cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.5/pitwall_linux_arm64.tar.gz"
      sha256 "9fe7bc7a4c868504ce864e652a21e26019a79191484e3e9e0ced5c973ed5e8c5"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.5/pitwall_linux_amd64.tar.gz"
      sha256 "8597f3c79338b8c1b511c8a5afda406f3a903babfe4d2eff7b9445a58dd08fa4"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
