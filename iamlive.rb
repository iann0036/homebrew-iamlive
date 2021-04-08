# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.29.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.29.0/iamlive-v0.29.0-darwin-amd64.zip"
    sha256 "015fe663798272672e800973202a91e748ecb79d1d594dac5fa627a2c3f7e966"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.29.0/iamlive-v0.29.0-darwin-arm64.zip"
    sha256 "44384a5d1539b9971d2737bf9cbc8f55c3a0ed967a21efb1a2f100fa046a8c37"
  end

  def install
    bin.install "iamlive"
  end
end
