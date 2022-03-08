# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.46.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.46.0/iamlive-v0.46.0-darwin-amd64.zip"
    sha256 "7ffdda6428867f4bc11135475fbdd47edcbc034041483c4ef83aa31931131957"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.46.0/iamlive-v0.46.0-darwin-arm64.zip"
    sha256 "ea318f11303f3b231187f0c508bc142d48f474ca1a19f1ff5a155b837833431f"
  end

  def install
    bin.install "iamlive"
  end
end
