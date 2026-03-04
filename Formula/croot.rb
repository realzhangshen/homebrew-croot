class Croot < Formula
  desc "Lightweight terminal file tree sidebar with vim-style navigation"
  homepage "https://github.com/realzhangshen/croot"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realzhangshen/croot/releases/download/v0.2.0/croot-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "9537ead11e6546a19160337d5933d1a65da4b4d651961896b02d387dd5fe0b2e"
    else
      url "https://github.com/realzhangshen/croot/releases/download/v0.2.0/croot-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "3d509f758470324e5d4d9713ba6e879162eaaef427b9a46e95508bdeb2d2f48a"
    end
  end

  def install
    bin.install "croot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/croot --version")
  end
end
