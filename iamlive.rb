# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS, Azure, or Google Cloud (GCP) calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "1.1.20"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.20/iamlive-v1.1.20-darwin-amd64.zip"
    sha256 "60b5dca7cb367af65b7c95fc41047c9f665b33076faaf66ecc5562f159b84bfe"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.20/iamlive-v1.1.20-darwin-arm64.zip"
    sha256 "e3bd3c52049eba2e2a03469802589e185f3684659f7ec64df76d546308715c36"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.20/linux-v1.1.20-linux-386.tar.gz"
    sha256 "688371472edb1db2178e2c0d3d6bb5880022a69742183d47739c643fb74dba61"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.20/linux-v1.1.20-linux-amd64.tar.gz"
    sha256 "4dc5377810eea2d0de99cf2079358a1a3fcf12ef867c4396ef40eba51c98876b"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.20/linux-v1.1.20-linux-arm64.tar.gz"
    sha256 "aa6ee221c8bd6702b18e7ad4aacceceeb0f45ffb60609e289e2ed704c45cf887"
  end

  def install
    bin.install "iamlive"
  end
end
