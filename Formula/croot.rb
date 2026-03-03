class Croot < Formula
  desc "Lightweight terminal file tree sidebar with vim-style navigation"
  homepage "https://github.com/realzhangshen/croot"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realzhangshen/croot/releases/download/v0.1.0/croot-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "1253a2cf78cf052d65972f940dc394311d421f71849348cb2015a0e394cff64d"
    else
      url "https://github.com/realzhangshen/croot/releases/download/v0.1.0/croot-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "e8669b3f51689acd75da04a4d2754ac09ed046af8babc6021cca48118209d25b"
    end
  end

  def install
    bin.install "croot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/croot --version")
  end
end
