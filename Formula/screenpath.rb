class Screenpath < Formula
  desc "Capture a screen region and copy the file PATH to the clipboard (not the image)"
  homepage "https://github.com/truth0530/screenpath"
  url "https://github.com/truth0530/screenpath/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "cd53b187e831254df32572ccbd44929f58e22afed371cbba01f3d16b87974ad1"
  license "MIT"

  def install
    bin.install "bin/screenpath"
    (share/"screenpath/raycast").install "extras/raycast/screenpath.sh"
  end

  def caveats
    <<~EOS
      screenpath needs "Screen Recording" permission for the app that launches it
      (Terminal / Raycast / Shortcuts):
        System Settings > Privacy & Security > Screen Recording

      A global hotkey must be bound by you. See:
        screenpath --setup
    EOS
  end

  test do
    assert_match "screenpath #{version}", shell_output("#{bin}/screenpath --version")
    assert_match "USAGE", shell_output("#{bin}/screenpath --help")
  end
end
