# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS, Azure, or Google Cloud (GCP) calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "1.1.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.1/iamlive-v1.1.1-darwin-amd64.zip"
    sha256 "aeed868f4353206ed804b2bcd27c1a9ec1f4776775dd3c9ab81f678790c3e638"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.1/iamlive-v1.1.1-darwin-arm64.zip"
    sha256 "035d1b357cdfd2b50dfd16b2ee1339f4025c3bf8cbeceec76adca94af9d95172"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.1/linux-v1.1.1-linux-386.tar.gz"
    sha256 "44e5821c27fbefa91f81999639c7510ef2546e13be91d411ef5e30a64e3100b8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.1/linux-v1.1.1-linux-amd64.tar.gz"
    sha256 "9da1d7362a2f49cbc189286c627dcd3559b41575f7fc34b21944fb69a799d049"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.1/linux-v1.1.1-linux-arm64.tar.gz"
    sha256 "ea1871c010f16a9c757ddfe62b40d9350c43d303f4b5d6083f3f57e6e9f47e09"
  end

  def install
    bin.install "iamlive"
  end
end
