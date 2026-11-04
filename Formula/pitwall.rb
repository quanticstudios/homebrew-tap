# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.13/pitwall_darwin_arm64.tar.gz"
      sha256 "a4865d2216f45c98065d97740a6d2aedb0300734033c932076fd191d6ea5d0d8"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.13/pitwall_darwin_amd64.tar.gz"
      sha256 "62d88dcd0b7295efe34db8d83da7935acfd5f67e59e11bf8637c82a063728895"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.13/pitwall_linux_arm64.tar.gz"
      sha256 "e856a40facc3903b955ca76d7ba6bd67b42e19d1ae1413ffe8a2ad5740c8391d"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.13/pitwall_linux_amd64.tar.gz"
      sha256 "e1f8182453c71cc4b79e3caf30fbb773cbf6ccf83d71ab282c57386f24e1cd9c"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
