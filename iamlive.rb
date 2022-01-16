# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.44.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.44.0/iamlive-v0.44.0-darwin-amd64.zip"
    sha256 "79792c0b41111bfe9fba4ec38089cb65421b98547f58b3cea5c3d340ee1ab021"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.44.0/iamlive-v0.44.0-darwin-arm64.zip"
    sha256 "00625fcc773f6d9db37e43dcb3680110d633f44c38be2bac67e6c64716ee1f28"
  end

  def install
    bin.install "iamlive"
  end
end
