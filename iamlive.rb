# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS, Azure, or Google Cloud (GCP) calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "1.1.5"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.5/iamlive-v1.1.5-darwin-amd64.zip"
    sha256 "d5ba18ada0356c8b633a9ee13d80ed49e32f4fdf9a962c22d0377180d41e2ce3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.5/iamlive-v1.1.5-darwin-arm64.zip"
    sha256 "6f8e77eb52ecdfc72a47d8f041d014a66d844a9ce67ae046b5949b078f0907fa"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.5/linux-v1.1.5-linux-386.tar.gz"
    sha256 "749867af12c5e920657f7748590295f3541d5f3fc65a7bd3c1b61a89b89bbf03"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.5/linux-v1.1.5-linux-amd64.tar.gz"
    sha256 "c7cc621e9d3865cbd4f166782ecce4568fc98594987ffd85d285e0166bcabd20"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.5/linux-v1.1.5-linux-arm64.tar.gz"
    sha256 "b694960ef0c68f307451bfc8117e0bc1bf5bc52a0074ebd7fd25d060dda39519"
  end

  def install
    bin.install "iamlive"
  end
end
