# directive.pp
#
# $Id$

define sysctl::directive($value) {

    include sysctl

    file {
        "/etc/sysctl.d/${name}.conf":
            ensure  => present,
            content => "${name}=${value}\n",
            notify  => Service["procps"];
    }

}
