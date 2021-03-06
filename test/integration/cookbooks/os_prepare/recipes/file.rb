# encoding: utf-8
# author: Christoph Hartmann
# author: Dominik Richter
#
# prepares a sample file for verification

if node['platform_family'] != 'windows'

  gid = 'root'
  gid = 'wheel' if node['platform_family'] == 'freebsd'

  file '/tmp/file' do
    mode '0765'
    owner 'root'
    group gid
    content 'hello world'
  end

  directory '/tmp/folder' do
    mode '0567'
    owner 'root'
    group gid
  end

end
