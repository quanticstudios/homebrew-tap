# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.2.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.8/pitwall_darwin_arm64.tar.gz"
      sha256 "127926b5b8842e7ca54095770f1173de7def8826c19460894e31af29d6932130"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.8/pitwall_darwin_amd64.tar.gz"
      sha256 "5ce210cf29ff4f2fe76c1acce795e4d07f116194868081655072fc7922153719"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.8/pitwall_linux_arm64.tar.gz"
      sha256 "f55084969e3e7c793f04848cb3cd975bae61b3a1a4058f689940feb8173f9238"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.8/pitwall_linux_amd64.tar.gz"
      sha256 "27bc5c09f8be66ceb4814ec12ed4e055d9e7af4a16ba951a56b6a65a30f6f7ad"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
