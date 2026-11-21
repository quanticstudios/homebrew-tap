# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.2/pitwall_darwin_arm64.tar.gz"
      sha256 "2c6af37b6f2f9e5de6751d4d3eae0d89fe6d99ce02e74277f17eba106dadf01b"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.2/pitwall_darwin_amd64.tar.gz"
      sha256 "48bd2b77658ce44e66f48e8b8996b96c6b29b03b0e4ecccd047c6f7177ae9212"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.2/pitwall_linux_arm64.tar.gz"
      sha256 "533cd914a8d7ad11fc43b08bff081bb27ad35bfa37a076ba2c89160bd1090b58"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.2/pitwall_linux_amd64.tar.gz"
      sha256 "f9fa0af1f0626291f6a9b7a2b141e392b1beee4c55469f97b1ff8748428c0c56"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
