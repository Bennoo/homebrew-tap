class Mawaku < Formula
  desc "Command-line tool scaffold for generating video call backgrounds"
  homepage "https://github.com/Bennoo/mawaku-cli"
  version "0.6.1"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Bennoo/mawaku-cli/releases/download/v0.6.1/mawaku-v0.6.1-macos-arm64.tar.gz"
      sha256 "3d48361fd8f9381ca4297b732807172e8b25167ea2f404d49571cd49ec976d3d"
    else
      url "https://github.com/Bennoo/mawaku-cli/releases/download/v0.6.1/mawaku-v0.6.1-macos-x86_64.tar.gz"
      sha256 "dc082af7dcc0af1fd1aac8cfa384e47bb675f489a987121210ae0e0162d7f992"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Bennoo/mawaku-cli/releases/download/v0.6.1/mawaku-v0.6.1-linux-arm64.tar.gz"
      sha256 "cd6da4ccf6ed4513a5465ba03cae2fcd2790403dd4a578c5adad0f056df9c3ec"
    else
      url "https://github.com/Bennoo/mawaku-cli/releases/download/v0.6.1/mawaku-v0.6.1-linux-x86_64.tar.gz"
      sha256 "576043752eeea71057745a27bc93c5f27d8ecc2e5fee731af07595cbfbb9e616"
    end
  end

  def install
    bin.install "mawaku"
  end

  test do
    system "#{bin}/mawaku", "--version"
  end
end
