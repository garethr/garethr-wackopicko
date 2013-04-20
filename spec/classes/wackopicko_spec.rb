require 'spec_helper'

describe 'wackopicko', :type => :class do
  let(:facts) { {:osfamily => 'Debian', :lsbdistcodename => 'precise'} }

  context 'with no parameters' do
    it { should create_class('wackopicko::config') }
    it { should create_class('wackopicko::install') }
    it { should include_class('git') }
    it { should include_class('mysql::server') }
    it { should include_class('php::apache2') }

    it { should contain_service('httpd').with_ensure(true) }
    it { should contain_service('mysqld').with_ensure('running') }
    it { should contain_vcsrepo('/var/www/wackopicko').with_provider('git') }
    it { should contain_apache__vhost('wackopicko').with_docroot('/var/www/wackopicko/website') }
    it { should contain_php__module('mysql') }
  end

end
