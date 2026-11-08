# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.0/pitwall_darwin_arm64.tar.gz"
      sha256 "f72b2883feeb7937c4f8346e922fca20869a8f654928bbb84d1c66feea1cd787"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.0/pitwall_darwin_amd64.tar.gz"
      sha256 "0d105894a00a0cb7854d431366b27395eba541b323eb01e934a8ff22fc565eea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.0/pitwall_linux_arm64.tar.gz"
      sha256 "6a723997a4bbad49f07b15d96f79106c55b2887c89bef2d6f102422704ed7c4a"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.0/pitwall_linux_amd64.tar.gz"
      sha256 "303dfff67f65e99f47cdd7bad8892ecdcaab786e918acbe590903c461236f296"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
