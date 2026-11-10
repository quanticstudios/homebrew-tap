# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.5/pitwall_darwin_arm64.tar.gz"
      sha256 "df14563220e2e06ba9c82b57e9afd0c38b257d42e7c1cda40d61bd4935c6d0b3"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.5/pitwall_darwin_amd64.tar.gz"
      sha256 "452d82439b8eb72da78526d83ddee79dd02dc283b435ea5c7b1d623fd520bddb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.5/pitwall_linux_arm64.tar.gz"
      sha256 "e6c39e4011e4fa9a6a7bbb138df55c59642352c47a5bd28b25d3b4158fa1198d"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.5/pitwall_linux_amd64.tar.gz"
      sha256 "28752e7f8f38fa89317bd5f061d944c648ebe9436257737f0b85fde99609b44c"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
