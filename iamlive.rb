# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.41.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.41.0/iamlive-v0.41.0-darwin-amd64.zip"
    sha256 "bc4fbdaddb23afc8637ccd38b15c5f16b4f58bd9e9a5f45794b520aef569afb1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.41.0/iamlive-v0.41.0-darwin-arm64.zip"
    sha256 "aad10749018f2be5df28eebb01819eb657523ea46bd0c113c0907ad1ae2c80b8"
  end

  def install
    bin.install "iamlive"
  end
end
