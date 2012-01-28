# sysctl.pp

class sysctl {

    service {
        "procps":
            subscribe => File["/etc/sysctl.d"],
            status    => "/bin/true";
    }

    file {
        "/etc/sysctl.d":
            ensure  => directory,
            recurse => true,
            purge   => true,
            force   => true,
            notify  => Service["procps"];
    }

}
