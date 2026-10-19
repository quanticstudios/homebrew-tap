# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.0-beta.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.12/pitwall_darwin_arm64.tar.gz"
      sha256 "ae2eb713af5c345b02fdaaaeb49d358b56b780dc2858ec3a5e41b8d01204d453"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.12/pitwall_darwin_amd64.tar.gz"
      sha256 "21101ca707595f576c1c88811931e9fc889dea9811516d5687eb7f3933f59fad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.12/pitwall_linux_arm64.tar.gz"
      sha256 "c8c0ce4664fc18fd61c122e2737261461caa7491740ad28252518689a596ca86"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.12/pitwall_linux_amd64.tar.gz"
      sha256 "cf3e4085ea07e764f8365ce1e8b492d43af237d6b8479350ef4cb379e5e2c44f"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
