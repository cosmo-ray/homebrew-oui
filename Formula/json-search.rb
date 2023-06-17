class JsonSearch < Formula
  desc "Small utility to search for elements in Jsons"
  homepage "https://github.com/cosmo-ray/json-search"
  url "https://github.com/cosmo-ray/json-search.git"
  head "https://github.com/cosmo-ray/json-search.git", branch: "master"
  sha256 ""
  license "WTFPL"
  version "0.0.0"

  depends_on "json-c"

  def install
    system "./configure"
    system "make json-search"
    system "mkdir -p #{prefix}/bin"
    system "cp ./json-search #{prefix}/bin/"
  end

  test do
    str = shell_output("#{bin}/json-search --help")
    assert_match "json-search [OPTION] [NEEDLE] [FILES]", str
  end
end
