cask 'duet' do
  version '2.0.6.0'
  sha256 'f557d5244bde384ac6f1eb685342ec87b9a81e966a9478ccc8262666226c5f8d'

  # duet.nyc3.cdn.digitaloceanspaces.com/Mac was verified as official when first introduced to the cask
  url "https://duet.nyc3.cdn.digitaloceanspaces.com/Mac/#{version.major_minor.dots_to_underscores}/duet-#{version.dots_to_hyphens}.zip"
  appcast 'https://help.duetdisplay.com/updates/mac-release-notes'
  name 'Duet'
  homepage 'https://www.duetdisplay.com/'

  auto_updates true

  app 'duet.app'

  uninstall kext: 'com.karios.driver.DuetDisplay'
end
