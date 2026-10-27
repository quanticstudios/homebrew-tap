# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.4/pitwall_darwin_arm64.tar.gz"
      sha256 "7cb21187c7c345b6c415c6a2b7a57511ecfaf00bb5f20084afc8cf6459242a51"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.4/pitwall_darwin_amd64.tar.gz"
      sha256 "e999e8e4b974c10cc59204aea06e7a95c9ab2dadf8e9d38b5c1acacf3547e6b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.4/pitwall_linux_arm64.tar.gz"
      sha256 "d548d9f7da6316b7192f1f315fe1dc02d00e7fdcf0572b2b2f70f8bfb0bef390"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.4/pitwall_linux_amd64.tar.gz"
      sha256 "7e92913dcb740ce09698df45fd9f01a526488b4d9b67e235bab427953cd065ed"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
