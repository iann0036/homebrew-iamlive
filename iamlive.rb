# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS, Azure, or Google Cloud (GCP) calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "1.1.27"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.27/iamlive-v1.1.27-darwin-amd64.zip"
    sha256 "6f830cade45e0fab8856064e7ec293579e6650387732b523e7b56653c0f16402"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.27/iamlive-v1.1.27-darwin-arm64.zip"
    sha256 "fe7a74f7bbcade8174a5c5ecbe2f1f13c061b9629d5cb94e7da99711544f519a"
  end
  if OS.linux? && Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.27/iamlive-v1.1.27-linux-386.tar.gz"
    sha256 "0e3c594be409d0e1abd368316752f87e71d1d63ece78ecf3dc70ed915246644e"
  end
  if OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.27/iamlive-v1.1.27-linux-amd64.tar.gz"
    sha256 "76446c992e4526694035fa929ad6624f9a96d542a72218a1d7d953eaea1abe7d"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.27/iamlive-v1.1.27-linux-arm64.tar.gz"
    sha256 "374b171cebe3caf0d6ea6e6ab07dbc6fed1cf0627230e97074209aa6093ce701"
  end

  def install
    bin.install "iamlive"
  end
end
