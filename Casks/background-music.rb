cask 'background-music' do
  version '0.1.1'
  sha256 '7ce875bb00fdeb2b5b363aa92367b3fa096d18cb02a02c461d5df66307ab1088'

  url "https://github.com/kyleneideck/BackgroundMusic/releases/download/v#{version}/BackgroundMusic-#{version}.pkg"
  name 'Background Music'
  homepage 'https://github.com/kyleneideck/BackgroundMusic'

  pkg "BackgroundMusic-#{version}.pkg"

  uninstall script:    {
                         executable: "#{appdir}/Background Music.app/Contents/Resources/_uninstall-non-interactive.sh",
                         sudo:       false,
                       },
            pkgutil:   'com.bearisdriving.BGM',
            quit:      [
                         'com.bearisdriving.BGM.App',
                       ],
            launchctl: [
                         'com.bearisdriving.BGM.XPCHelper',
                       ]
end
