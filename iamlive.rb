# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.39.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.39.0/iamlive-v0.39.0-darwin-amd64.zip"
    sha256 "7e35f24fdf1aa38d1f9ba2c0a6d0ec1972c6d5b40fc664392e1f683e67f7efda"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.39.0/iamlive-v0.39.0-darwin-arm64.zip"
    sha256 "34b533a20bc06503296cb16fcdaabb8c1512b5ef0e059c09e2bc5a52523e5c48"
  end

  def install
    bin.install "iamlive"
  end
end
