# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.43.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.43.0/iamlive-v0.43.0-darwin-amd64.zip"
    sha256 "ccb48050ad4aa334fbe1603f9f66f2e97bdb806a4b51bde72dded059e44c6852"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.43.0/iamlive-v0.43.0-darwin-arm64.zip"
    sha256 "c71f6a40ed4a46d2ef9bf75005bf09e133576bcdb0596050c48887d23d53240e"
  end

  def install
    bin.install "iamlive"
  end
end
