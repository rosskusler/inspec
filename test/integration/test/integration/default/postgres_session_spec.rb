# encoding: utf-8

if os.unix?
  postgres = postgres_session('postgres', 'inspec')
  describe postgres.query('show ssl;') do
    its('output') { should eq 'on' }
  end
end
