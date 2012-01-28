# Sysctl puppet module

Manage sysctl-directives on Debian/Ubuntu, it will reload procps automatically

## Example

    # disable the autoconf for ipv6
    sysctl::directive {
      "net.ipv6.conf.all.autoconf":
        value => 0;
    }