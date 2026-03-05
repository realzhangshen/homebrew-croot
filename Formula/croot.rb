class Croot < Formula
  desc "Lightweight terminal file tree sidebar with vim-style navigation"
  homepage "https://github.com/realzhangshen/croot"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realzhangshen/croot/releases/download/v0.3.0/croot-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "ae0ec4c60c8a56d02fc6643e259d63d217984d574d6e30410b02d968b9fd0a8d"
    else
      url "https://github.com/realzhangshen/croot/releases/download/v0.3.0/croot-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "ca6dcb92a4918a5d5df6966f8f0d473308bb80a238b571a282d336cf3746625d"
    end
  end

  def install
    bin.install "croot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/croot --version")
  end
end
