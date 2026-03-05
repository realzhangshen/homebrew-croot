class Croot < Formula
  desc "Lightweight terminal file tree sidebar with vim-style navigation"
  homepage "https://github.com/realzhangshen/croot"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realzhangshen/croot/releases/download/v0.2.4/croot-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "41a959fabe9d302fc2ddd2138ca21c04fb1ba431dd7c762d22f046b94f00787d"
    else
      url "https://github.com/realzhangshen/croot/releases/download/v0.2.4/croot-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "d1ec4653ed2aebf6e51ef62df8d2b41a02dd2cc2d64df0d0f3acbc748f21e580"
    end
  end

  def install
    bin.install "croot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/croot --version")
  end
end
