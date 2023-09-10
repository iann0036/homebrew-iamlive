# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.53.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.53.0/iamlive-v0.53.0-darwin-amd64.zip"
    sha256 "215d14c13ffa620c32defeb82969b31bb6d66a39793273d6c85ad78a24c2c24f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.53.0/iamlive-v0.53.0-darwin-arm64.zip"
    sha256 "5815cbc5b950bc7c21b9c9f6d0411e6bb7ac8ae226920746a089c4237b70f174"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v0.53.0/linux-v0.53.0-linux-386.zip"
    sha256 "91efddd80286d0dbeca0a22d68ec392fd5a480261627626228c76dd603454bd8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v0.53.0/linux-v0.53.0-linux-amd64.zip"
    sha256 "726dbda8ee3e3b5838cca04dc085c62b5ab1ec7165924f992965310ddb33605e"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.53.0/linux-v0.53.0-linux-arm64.zip"
    sha256 "c73cfaa63a1e30dd3c37e84dec0ef3294ff033cfb8a427cd3e1d7da9cb83a02e"
  end

  def install
    bin.install "iamlive"
  end
end
