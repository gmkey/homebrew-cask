cask 'master-pdf-editor' do
  version '5.4.33'
  sha256 '2ff4ca6df815640c50c14508ca73f13bfe2bf2edcba8fd22f215d85c831c24c6'

  url 'https://code-industry.net/public/MasterPDFEditor.dmg'
  appcast 'https://code-industry.net/get-masterpdfeditor/'
  name 'Master PDF Editor'
  homepage 'https://code-industry.net/masterpdfeditor/'

  auto_updates true

  app 'Master PDF Editor.app'

  zap trash: [
               '~/Library/Application Support/Master PDF Editor',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.code-industry.masterpdfeditor3.sfl*',
               '~/Library/Preferences/net.code-industry.Master PDF Editor.plist',
               '~/Library/Saved Application State/net.code-industry.MasterPDFEditor3.savedState',
             ]
end
