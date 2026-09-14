class Mawaku < Formula
  desc "Command-line tool scaffold for generating video call backgrounds"
  homepage "https://github.com/Bennoo/mawaku-cli"
  version "0.7.1"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Bennoo/mawaku-cli/releases/download/v0.7.1/mawaku-v0.7.1-macos-arm64.tar.gz"
      sha256 "8b5608bd67336fbf71a5a7acdaadd9388e4281f305cd3dbd70e4778a65e8693a"
    else
      url "https://github.com/Bennoo/mawaku-cli/releases/download/v0.7.1/mawaku-v0.7.1-macos-x86_64.tar.gz"
      sha256 "2987ea25d7695bf55aab764cc96caef184dd90e4dedaee01bc4c0b491d5a5bbd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Bennoo/mawaku-cli/releases/download/v0.7.1/mawaku-v0.7.1-linux-arm64.tar.gz"
      sha256 "2601bc6130e10069b24789dee3c94acb15f2eb5027cc52d0cedaef21fed4c581"
    else
      url "https://github.com/Bennoo/mawaku-cli/releases/download/v0.7.1/mawaku-v0.7.1-linux-x86_64.tar.gz"
      sha256 "17f3a5db38d78e935c704b4198b3cc166a05dc46a3af272013b1233801877ca7"
    end
  end

  def install
    bin.install "mawaku"
  end

  test do
    system "#{bin}/mawaku", "--version"
  end
end
