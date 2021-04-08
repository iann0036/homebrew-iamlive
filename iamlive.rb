# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.28.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.28.0/iamlive-v0.28.0-darwin-amd64.zip"
    sha256 "0ecccd4bce5c24ad971f8927e5393c106d73166bf937292a7b04839de099b4e6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.28.0/iamlive-v0.28.0-darwin-arm64.zip"
    sha256 "ba06703e75b5f38ccf557dcc89c76e3e98d3b714b5bd509cc7c0ab857a1c4b09"
  end

  def install
    bin.install "iamlive"
  end
end
