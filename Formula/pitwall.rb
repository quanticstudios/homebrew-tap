# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.0-beta.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.1/pitwall_darwin_arm64.tar.gz"
      sha256 "a8940c4bd961969ff50bbf79ccfd13cd6579f1eb6ead713232a9765c8558688e"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.1/pitwall_darwin_amd64.tar.gz"
      sha256 "6964e2d2aa1d51a4857e445ce5c3f94d77118bb5b20c103f3290440cfd46ede3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.1/pitwall_linux_arm64.tar.gz"
      sha256 "a01e699ee94f19d08df7dc84f17d8f1513fafee491be1da9e92cff114ac494ab"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.1/pitwall_linux_amd64.tar.gz"
      sha256 "1cb1333174d3e2ffe802579afd78293dd6f6d0ee6cd9e8267272682dd7f7440e"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
