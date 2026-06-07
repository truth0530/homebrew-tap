class Screenpath < Formula
  desc "Capture a screen region and copy the file PATH to the clipboard (not the image)"
  homepage "https://github.com/truth0530/screenpath"
  url "https://github.com/truth0530/screenpath/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "927319af60673a27e2e26d62194e392d5e1472d16543e9b7854aa31040001f79"
  license "MIT"

  def install
    bin.install "bin/screenpath"
    (share/"screenpath/raycast").install "extras/raycast/screenpath.sh"
  end

  test do
    assert_match "screenpath #{version}", shell_output("#{bin}/screenpath --version")
  end
end
