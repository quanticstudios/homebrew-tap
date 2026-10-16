# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.0-beta.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.10/pitwall_darwin_arm64.tar.gz"
      sha256 "144c86ce32d4b750434d31cffc1efa476d2fee172c7b93e9feca688c7307a80a"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.10/pitwall_darwin_amd64.tar.gz"
      sha256 "236f91df06c18c79b946f0e1c365ad60f6e5da473e36b14838ea26cb801f9944"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.10/pitwall_linux_arm64.tar.gz"
      sha256 "6b54dac6907020762e485aa1df08f72acd6a2eb829e386f50d3bb7727ed29abd"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.10/pitwall_linux_amd64.tar.gz"
      sha256 "518a4bbd6f51749d749d5cf54a8c7e6f51c61dbb2b08b437b5322c3b838c764f"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
