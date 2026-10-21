# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.0-beta.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.17/pitwall_darwin_arm64.tar.gz"
      sha256 "481f43539b0fc50f10505bca7858c6f17f220e73ab89fa60a1b8e6b6eb8d61e4"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.17/pitwall_darwin_amd64.tar.gz"
      sha256 "36a780f75a61ab5ff22f139e8c0524835f8d8d1dd2e344a2c113ea3a54342c9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.17/pitwall_linux_arm64.tar.gz"
      sha256 "faa13d735f1fb1b967f59c5e39bbcf101ea28e86c5261d00e4c7b128758cf62c"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.17/pitwall_linux_amd64.tar.gz"
      sha256 "5ac23f13323daa61753febabc58405473c65b7988cd76dbd25eb3af4cd5579b6"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
