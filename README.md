This is a copy of OPENAIR-CN SPGWC
------------------------------------------------------------------------------

                             OPENAIR-CN
    An implementation of the Evolved Packet Core network.
    
------------------------------------------------------------------------------
    
  Openair-cn is an implementation of the 3GPP specifications concerning the 
  Evolved Packet Core Networks, that means it contains the implementation of the
  following network elements:

  * MME,
  * HSS,
  * S-GW+P-GW.
  
  Each element implementation has its own repository: this repository (`openair-spgwc`) is meant for SPGW-C.

# openair-spgwc

In the Control User Plane Separation of SPGW, only the SPGW-C (Control Plane) implementation is available in this repo.

It is distributed under `OAI Public License V1.1`. See [OAI Website for more details](https://www.openairinterface.org/?page_id=698).

The text for `OAI Public License V1.1` is also available under [LICENSE](LICENSE) file in the same directory.

# Where to start

  The Openair-cn SPGW-C code is written, executed, and tested on UBUNTU server bionic version.

  More details on the deployment options and the supported feature set is available on this [page](docs/FEATURE_SET.md).

# Collaborative work

  This source code is managed through a GITHUB, a collaborative development platform

  Process is explained in [CONTRIBUTING](CONTRIBUTING.md) file.

# Directory structure

<pre>
openair-spgwc
├── build :       Build directory, contains targets and object files generated by compilation of network functions. 
│   ├── log :     Directory containing build log files.
│   ├── scripts : Directory containing scripts for building network functions
│   └── spgw_c :  Directory containing CMakefile.txt and object files generated by compilation of SPGW-C network function. 
├── ci-scripts :  Directory containing scripts for the CI process
├── etc :         Directory containing the configuration files to be deployed for each network function.
└── src :         Source files of network functions.
    ├── common :    Common header files
    │   ├── msg :   ITTI messages definitions.
    │   └── utils : Common utilities.
    ├── gtpv1u :    Generic GTPV1-U stack implementation
    ├── gtpv2c :    Generic GTPV2-C stack implementation
    ├── itti :      Inter task interface 
    ├── oai_spgwc : SPGW-C main directory, contains the "main" CMakeLists.txt file.
    ├── pfcp :      Generic PFCP stack implementation.
    └── udp :       UDP server implementation.
</pre>

