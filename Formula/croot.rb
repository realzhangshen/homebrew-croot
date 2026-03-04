class Croot < Formula
  desc "Lightweight terminal file tree sidebar with vim-style navigation"
  homepage "https://github.com/realzhangshen/croot"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realzhangshen/croot/releases/download/v0.2.1/croot-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "30aa3b0f983d555f1783d78506c5fcc197ab8432e33f05804d6f17aef23a4067"
    else
      url "https://github.com/realzhangshen/croot/releases/download/v0.2.1/croot-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "677f272e23200a42a485d6f438a73df663eabe54c3eedbd7e4a5ebd85f3004d4"
    end
  end

  def install
    bin.install "croot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/croot --version")
  end
end
