# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS, Azure, or Google Cloud (GCP) calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "1.1.12"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.12/iamlive-v1.1.12-darwin-amd64.zip"
    sha256 "7f1c0be030fe8bb9a672afc935dcde4fef5783ac9954d14bef2bb261f1db427c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.12/iamlive-v1.1.12-darwin-arm64.zip"
    sha256 "2e0e088736c5b1e3562a26165af565d67612522c2aadbaef6aa6018c9dd5ed29"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.12/linux-v1.1.12-linux-386.tar.gz"
    sha256 "a8935259f650e4a933bf050300c081f4fc79ba1f3333f2f4e7333df9a4beb08b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.12/linux-v1.1.12-linux-amd64.tar.gz"
    sha256 "d5bbceb775a432a401401fe57361e09f3bdf832c6150499bbeb53c186a3158a4"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.12/linux-v1.1.12-linux-arm64.tar.gz"
    sha256 "fc4c971779be2f7aa5ff5152432a473f6633ea76743c35ea6f4d6ee4f1bda452"
  end

  def install
    bin.install "iamlive"
  end
end
