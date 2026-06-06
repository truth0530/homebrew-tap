class Screenpath < Formula
  desc "Capture a screen region and copy the file PATH to the clipboard (not the image)"
  homepage "https://github.com/truth0530/screenpath"
  url "https://github.com/truth0530/screenpath/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "5a417ceade22144958abd91833de47221618a45b7fb9f5bfab5850d751b5421a"
  license "MIT"

  def install
    bin.install "bin/screenpath"
    (share/"screenpath/raycast").install "extras/raycast/screenpath.sh"
  end

  test do
    assert_match "screenpath #{version}", shell_output("#{bin}/screenpath --version")
  end
end
