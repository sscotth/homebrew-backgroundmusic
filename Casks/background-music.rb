cask 'background-music' do
  version 'untagged-221ecabb2d939df5ed86'
  sha256 'deae401360b3471fb1e08c1cca8eb7889906e5d974d0a484d3188bae6507c03d'

  # github.com/sscotth/backgroundmusic was verified as **not** official when first introduced to the cask
  url "https://github.com/sscotth/backgroundmusic/releases/download/#{version}/BackgroundMusic.app.zip"
  name 'Background Music'
  homepage 'https://github.com/kyleneideck/BackgroundMusic'

  app 'Background Music.app'
end
