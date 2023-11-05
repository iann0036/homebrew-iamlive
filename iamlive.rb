# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS, Azure, or Google Cloud (GCP) calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "1.1.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.3/iamlive-v1.1.3-darwin-amd64.zip"
    sha256 "bf5d4c61adcc2854c942a8924f0fcaa656c49e3ad7ffc2b111d623252201bb69"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.3/iamlive-v1.1.3-darwin-arm64.zip"
    sha256 "e37249fca47472a22e2464b0124d1460175e6898daa3dc9e290eded4fde3ea48"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.3/linux-v1.1.3-linux-386.tar.gz"
    sha256 "9e27e19230a7ccdcc326789aa1d769d095ed7785035aab196c714b81a03a7261"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.3/linux-v1.1.3-linux-amd64.tar.gz"
    sha256 "4b85741d3354d47e111ff4e22bd42450f9cac45c56edb8f2787081d98a44c31c"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.3/linux-v1.1.3-linux-arm64.tar.gz"
    sha256 "4d27fa9e86afcbf87ffdbe73945257686ceaa5f87646d272a9e00abdb91360f4"
  end

  def install
    bin.install "iamlive"
  end
end
