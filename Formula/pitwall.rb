# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.2.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.11/pitwall_darwin_arm64.tar.gz"
      sha256 "929b0a16aded24c30c27a091c7221609045e60b9e5c21bb6223aea4c1c1b0f9a"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.11/pitwall_darwin_amd64.tar.gz"
      sha256 "02206caf1e6e2033e2c879c9b24717d589f3f4a7514ab3b6601aa31546bee5dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.11/pitwall_linux_arm64.tar.gz"
      sha256 "a882904b9878da07f7fd9c01fa1fe75b3ab9e2da7b0f8de13b407eb5bddc9a13"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.11/pitwall_linux_amd64.tar.gz"
      sha256 "14ffacda035f5fe8c2854ca2c6f9e206430048a4c75f7ce22fb787da71c69242"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
