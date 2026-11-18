# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.2.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.16/pitwall_darwin_arm64.tar.gz"
      sha256 "3ac4e2bbe5102ad3a3dcf09872f5079c1f5d5ee7e5bb32a923579ad03a71f4b7"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.16/pitwall_darwin_amd64.tar.gz"
      sha256 "5282ec70eb013120115878d89a5ac6a2f36ba0bdd3945097b002c1eb59a72db8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.16/pitwall_linux_arm64.tar.gz"
      sha256 "360835565c86f2f8780006a8d5e0800704aeaeba9b2bd3522f704f9cde96af5a"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.16/pitwall_linux_amd64.tar.gz"
      sha256 "2d1a5d6443d14a2da7831a639d442d7bf9e0e283e5a11c40bac2231455acf9e5"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
