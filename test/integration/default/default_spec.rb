# encoding: utf-8

# locale
describe file('/etc/default/locale') do
  it { should exist }
  its('content') { should match %r{LANG="en_US.UTF-8"} }
  its('content') { should match %r{LC_CTYPE="en_US.UTF-8"} }
  its('content') { should match %r{LC_NUMERIC="en_US.UTF-8"} }
  its('content') { should match %r{LC_TIME="en_US.UTF-8"} }
  its('content') { should match %r{LC_COLLATE="en_US.UTF-8"} }
  its('content') { should match %r{LC_MONETARY="en_US.UTF-8"} }
  its('content') { should match %r{LC_MESSAGES="en_US.UTF-8"} }
  its('content') { should match %r{LC_PAPER="en_US.UTF-8"} }
  its('content') { should match %r{LC_NAME="en_US.UTF-8"} }
  its('content') { should match %r{LC_ADDRESS="en_US.UTF-8"} }
  its('content') { should match %r{LC_TELEPHONE="en_US.UTF-8"} }
  its('content') { should match %r{LC_MEASUREMENT="en_US.UTF-8"} }
  its('content') { should match %r{LC_IDENTIFICATION="en_US.UTF-8"} }
end