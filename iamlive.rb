# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS, Azure, or Google Cloud (GCP) calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "1.1.16"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.16/iamlive-v1.1.16-darwin-amd64.zip"
    sha256 "3d2bcd66eac70f12fd38b1ed4dea953868f21e02e00fb1d7b38f5a7dc66b6099"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.16/iamlive-v1.1.16-darwin-arm64.zip"
    sha256 "10a3f0c14fdc22f82f2b7cc953aaec28bb22b8e2235c930bcfbb960ec4130b72"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.16/linux-v1.1.16-linux-386.tar.gz"
    sha256 "dde8530bbcfeac0d83cebd8259775d369b8afc5c323e001a3fe7fc4743443f02"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.16/linux-v1.1.16-linux-amd64.tar.gz"
    sha256 "8d5d2736c5dedfa62055bda66ef0755ad2a1739ea62250fdc1b5c43819fc3a4b"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.16/linux-v1.1.16-linux-arm64.tar.gz"
    sha256 "78971033a47fbfc2f71b3db2a0328925fcba86d4dcb6415fb16d6b8850fdf14e"
  end

  def install
    bin.install "iamlive"
  end
end
