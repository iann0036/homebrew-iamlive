# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.45.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.45.0/iamlive-v0.45.0-darwin-amd64.zip"
    sha256 "9d8e82ffee6044d8babf5c791a297a7dcee1d7c57fd6f3fdf2cad3967ea73544"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.45.0/iamlive-v0.45.0-darwin-arm64.zip"
    sha256 "524c6ace2be4a41d3c336b4a85b1358f6551e383ef9cb1211c6db60ed17eaef4"
  end

  def install
    bin.install "iamlive"
  end
end
