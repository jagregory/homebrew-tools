cask 'checkman' do
  name 'Checkman'
  homepage 'https://github.com/cppforlife/checkman'
  url 'https://github.com/cppforlife/checkman/raw/0bf8e52b8a6999c702bb1664706b89538597f31b/bin/Checkman.zip'
  sha256 'de3ae2c7c91da72f2245d91f48f786d2fb19de7d278b3596a730812f61f16f3a'
  version '6fe6eac'

  app 'Checkman.app'

  zap delete: [
    '~/Checkman',
  ]

  preflight do
    system_command '/bin/mkdir', args: ['-p', '--', "#{ENV['HOME']}/Checkman"]
  end
end
