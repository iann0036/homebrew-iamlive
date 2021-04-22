# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.32.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.32.0/iamlive-v0.32.0-darwin-amd64.zip"
    sha256 "0906ef8e66d74a9ffb316512df6fabc879b0df964e6f69b4e18a3b1e2a44e9c7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.32.0/iamlive-v0.32.0-darwin-arm64.zip"
    sha256 "358dcb2c8bed0bfa2d02288a7fdf7fc64f1e3e214b9b2bace415e0f88f500215"
  end

  def install
    bin.install "iamlive"
  end
end
