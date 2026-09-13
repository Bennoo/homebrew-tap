class Mawaku < Formula
  desc "Command-line tool scaffold for generating video call backgrounds"
  homepage "https://github.com/Bennoo/mawaku-cli"
  version "0.1.2"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Bennoo/mawaku-cli/releases/download/v0.1.2/mawaku-v0.1.2-macos-arm64.tar.gz"
      sha256 "6443fbe48a5b52657151eca7c41b98d196b60b4201144ed07c9b9ef0b8d978b3"
    else
      url "https://github.com/Bennoo/mawaku-cli/releases/download/v0.1.2/mawaku-v0.1.2-macos-x86_64.tar.gz"
      sha256 "258f80aadf3907ad4164e9d719fbd3782017c2f9cfda9233f665361236b7947f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Bennoo/mawaku-cli/releases/download/v0.1.2/mawaku-v0.1.2-linux-arm64.tar.gz"
      sha256 "ce45e74c26e1856fd9e1e71334814d4cf0cdc4be7922f0b143ae2217e4cbe1c9"
    else
      url "https://github.com/Bennoo/mawaku-cli/releases/download/v0.1.2/mawaku-v0.1.2-linux-x86_64.tar.gz"
      sha256 "66296ecdd65a4b10abb04cfd0ad36b61c92a91b632c31486b00c81b733414474"
    end
  end

  def install
    bin.install "mawaku"
  end

  test do
    system "#{bin}/mawaku", "--version"
  end
end
