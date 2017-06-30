FROM ubuntu:14.04

RUN apt-get update \
    && apt-get install wget -yqq \
    && cd ~; wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb \
    && dpkg -i puppetlabs-release-trusty.deb \
    && apt-get update \
    && apt-get install puppet -yqq

ADD 00-puppet.pref /etc/apt/preferences.d/00-puppet.pref
ADD puppet.conf /etc/puppet/puppet.conf

CMD ["puppet", "agent", "--no-daemonize", "--verbose"]