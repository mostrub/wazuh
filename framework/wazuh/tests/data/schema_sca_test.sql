/*
 * SQL Schema SCA tests
 * Copyright (C) 2015-2019, Wazuh Inc.
 * February 13, 2019.
 * This program is a free software, you can redistribute it
 * and/or modify it under the terms of GPLv2.
 */

 CREATE TABLE "sca_check" (
   scan_id INTEGER REFERENCES pm_scan_info (id),
   id INTEGER PRIMARY KEY,
   title TEXT,
   cis_control TEXT,
   description TEXT,
   rationale TEXT,
   remediation TEXT,
   file TEXT,
   process TEXT,
   directory TEXT,
   registry TEXT,
   `references` TEXT,
   result TEXT NOT NULL
, policy_id text);

CREATE TABLE "sca_check_compliance" (
    id_check INTEGER REFERENCES pm_check (id),
   `key` TEXT,
   `value` TEXT
);

CREATE TABLE "sca_policy" (
   name TEXT,
   file TEXT,
   id TEXT,
   description TEXT,
   `references` TEXT
);

CREATE TABLE "sca_scan_info" (
   id INTEGER PRIMARY KEY,
   start_scan INTEGER,
   end_scan INTEGER,
   policy_id TEXT REFERENCES pm_policy (id),
   pass INTEGER,
   fail INTEGER,
   score INTEGER,
   hash TEXT
);

INSERT INTO sca_scan_info (id,start_scan,end_scan,policy_id,pass,"fail",score,hash) VALUES (
1907428094,549475373,49475373,'cis_debian',1907428094,39,9,'81|testhash');

INSERT INTO sca_policy (name,file,id,description,"references") VALUES (
'CIS benchmark for Debian/Linux','cis_debian_linux_rcl.yml','cis_debian','This document provides prescriptive guidance for establishing a secure configuration posture for Debian Linux systems running on x86 and x64 platforms. Many lists are included including filesystem types, services, clients, and network protocols. Not all items in these lists are guaranteed to exist on all distributions and additional similar items may exist which should be considered in addition to those explicitly mentioned.','http://workbench.cisecurity.org/');

INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','14');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','14');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','14');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','14');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','14');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','14');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','14');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','14');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','14');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','14');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','14');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','14');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','14');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','14');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','14');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','14');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','14');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.2');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','2.6, 4.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','2.2.3');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','14');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','9');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','16');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','4');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'cis','5');
INSERT INTO sca_check_compliance (id_check,"key",value) VALUES (
1001,'pci_dss','10.2.5');

INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1001,'Ensure /tmp is configured','1.1.2','The /tmp directory is a world-writable directory used for temporary storage by all users and some applications.','Making /tmp its own file system allows an administrator to set the noexec option on the mount, making /tmp useless for an attacker to install executable code. It would also prevent an attacker from establishing a hardlink to a system setuid program and wait for it to be updated. Once the program was updated, the hardlink would be broken and the attacker would have his own copy of the program. If the program happened to have a security vulnerability, the attacker could continue to exploit the known flaw. This can be accomplished by either mounting tmpfs to /tmp, or creating a separate partition for /tmp.','Configure /etc/fstab as appropiate or enable systemd /tmp mounting and edit /etc/systemd/system/local-fs.target.wants/tmp.mount to configure the /tmp mount.','/etc/fstab.','(null)','(null)','(null)','(null)','failed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1002,'Ensure nodev option set on /tmp partition','1.1.3','The nodev mount option specifies that the filesystem cannot contain special devices.','Since the /tmp filesystem is not intended to support devices, set this option to ensure that users cannot attempt to create block or character special devices in /tmp .','Edit /etc/systemd/system/local-fs.target.wants/tmp.mount to configure the /tmp and enable systemd /tmp mounting.','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1003,'Ensure separate partition exists for /opt','1.1.6','The /opt directory is a world-writable directory used for temporary storage by all users and some applications.','Since the /opt directory may contain world-writable files and directories, there is a risk of resource exhaustion if it is not bound to a separate partition.','For new installations, during installation create a custom partition setup and specify a separate partition for /opt. For systems that were previously installed, create a new partition and configure /etc/fstab as appropriate.','/opt.','(null)','(null)','(null)','(null)','failed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1004,'Ensure separate partition exists for /var','1.1.6','The /var directory is used by daemons and other system services to temporarily store dynamic data. Some directories created by these processes may be world-writable.','Since the /var directory may contain world-writable files and directories, there is a risk of resource exhaustion if it is not bound to a separate partition.','For new installations, during installation create a custom partition setup and specify a separate partition for /var. For systems that were previously installed, create a new partition and configure /etc/fstab as appropriate.','/etc/fstab.','(null)','(null)','(null)','(null)','failed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1005,'Ensure separate partition exists for /var/tmp','1.1.7','The /var/tmp directory is a world-writable directory used for temporary storage by all users and some applications.','Since the /var/tmp directory is intended to be world-writable, there is a risk of resource exhaustion if it is not bound to a separate partition. In addition, making /var/tmp its own file system allows an administrator to set the noexec option on the mount, making /var/tmp useless for an attacker to install executable code. It would also prevent an attacker from establishing a hardlink to a system setuid program and wait for it to be updated. Once the program was updated, the hardlink would be broken and the attacker would have his own copy of the program. If the program happened to have a security vulnerability, the attacker could continue to exploit the known flaw.','For new installations, during installation create a custom partition setup and specify a separate partition for /var/tmp . For systems that were previously installed, create a new partition and configure /etc/fstab as appropriate.','/etc/fstab.','(null)','(null)','(null)','(null)','failed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1006,'Ensure nodev option set on /var/tmp partition','1.1.8','The nodev mount option specifies that the filesystem cannot contain special devices.','Since the /var/tmp filesystem is not intended to support devices, set this option to ensure that users cannot attempt to create block or character special devices in /var/tmp .','Edit the /etc/fstab file and add nodev to the fourth field (mounting options) for the /var/tmp partition. See the fstab(5) manual page for more information. Run the following command to remount /var/tmp: # mount -o remount,nodev /var/tmp','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1007,'Ensure nodev option set on /home partition','1.1.14','The nodev mount option specifies that the filesystem cannot contain special devices.','Since the user partitions are not intended to support devices, set this option to ensure that users cannot attempt to create block or character special devices.','Edit the /etc/fstab file and add nodev to the fourth field (mounting options) for the /home partition. See the fstab(5) manual page for more information. # mount -o remount,nodev /home','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1008,'Ensure nodev option set on /dev/shm partition','1.1.14','The nodev mount option specifies that the filesystem cannot contain special devices.','Since the /run/shm filesystem is not intended to support devices, set this option to ensure that users cannot attempt to create special devices in /dev/shm partitions.','Edit the /etc/fstab file and add nodev to the fourth field (mounting options) for the /dev/shm partition. See the fstab(5) manual page for more information. Run the following command to remount /dev/shm : # mount -o remount,nodev /dev/shm.','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1009,'Ensure nosuid option set on /dev/shm partition','1.1.15','The nosuid mount option specifies that the filesystem cannot contain setuid files.','Setting this option on a file system prevents users from introducing privileged programs onto the system and allowing non-root users to execute them.','Edit the /etc/fstab file and add nosuid to the fourth field (mounting options) for the /dev/shm partition. See the fstab(5) manual page for more information. Run the following command to remount /dev/shm: # mount -o remount,nosuid /dev/shm.','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1010,'Ensure noexec option set on /dev/shm partition','1.1.16','The noexec mount option specifies that the filesystem cannot contain executable binaries.','Setting this option on a file system prevents users from executing programs from shared memory. This deters users from introducing potentially malicious software on the system.','Edit the /etc/fstab file and add noexec to the fourth field (mounting options) for the /dev/shm partition. See the fstab(5) manual page for more information. Run the following command to remount /dev/shm: # mount -o remount,noexec /dev/shm.','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1011,'Ensure nodev option set on removable media partitions','1.1.18','The nodev mount option specifies that the filesystem cannot contain special devices.','Removable media containing character and block special devices could be used to circumvent security controls by allowing non-root users to access sensitive device files such as /dev/kmem or the raw disk partitions.','Edit the /etc/fstab file and add nodev to the fourth field (mounting options) of all removable media partitions. Look for entries that have mount points that contain words such as floppy or cdrom. See the fstab(5) manual page for more information.','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1012,'Ensure nosuid option set on removable media partitions','1.1.19','The nosuid mount option specifies that the filesystem cannot contain setuid files.','Setting this option on a file system prevents users from introducing privileged programs onto the system and allowing non-root users to execute them.','Edit the /etc/fstab file and add nosuid to the fourth field (mounting options) of all removable media partitions. Look for entries that have mount points that contain words such as floppy or cdrom. See the fstab(5) manual page for more information.','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1013,'Ensure bootloader password is set (GRUB)','1.4.2','Setting the boot loader password will require that anyone rebooting the system must enter a password before being able to set command line boot parameters','Requiring a boot password upon execution of the boot loader will prevent an unauthorized user from entering boot parameters or changing the boot partition. This prevents users from weakening security (e.g. turning off SELinux at boot time).','Create an encrypted password with grub-mkpasswd-pbkdf2, add user and password to the grub configuration file and update the grub2 configuration.','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1014,'Ensure bootloader password is set (LILO)','1.4.2','Setting the boot loader password will require that anyone rebooting the system must enter a password before being able to set command line boot parameters','Requiring a boot password upon execution of the boot loader will prevent an unauthorized user from entering boot parameters or changing the boot partition. This prevents users from weakening security (e.g. turning off SELinux at boot time).','Create an encrypted password with grub-mkpasswd-pbkdf2, add user and password to the grub configuration file and update the grub2 configuration.','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1015,'Ensure GDM login banner is configured','1.7.2','GDM is the GNOME Display Manager which handles graphical login for GNOME based systems.','Warning messages inform users who are attempting to login to the system of their legal status regarding the system and must include the name of the organization that owns the system and any monitoring policies that are in place.','Edit or create the file /etc/gdm3/greeter.dconf-defaults and add: banner-message-enable=true, banner-message-text=''Authorized uses only. All activity may be monitored and reported.''','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1016,'Add nodev Option to /run/shm Partition','2.140000','The nodev mount option specifies that the /run/shm (temporary filesystem stored in memory) cannot contain block or character special devices.','Since the /run/shm filesystem is not intended to support devices, set this option to ensure that users cannot attempt to create special devices in /run/shm partitions.','Edit the /etc/fstab file and add nodev to the fourth field (mounting options of entries that have mount points that contain /run/shm . See the fstab(5) manual page for more information. # mount -o remount,nodev /run/shm','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1017,'Add nosuid Option to /run/shm Partition','2.150000','The nosuid mount option specifies that the /run/shm (temporary filesystem stored in memory) will not execute setuid and setgid on executable programs as such, but rather execute them with the uid and gid of the user executing the program.','Setting this option on a file system prevents users from introducing privileged programs onto the system and allowing non-root users to execute them.','Edit the /etc/fstab file and add nosuid to the fourth field (mounting options). Look for entries that have mount points that contain /run/shm . See the fstab(5) manual page for more information. # mount -o remount,nosuid /run/shm.','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1018,'Add noexec Option to /run/shm Partition','2.160000','Set noexec on the shared memory partition to prevent programs from executing from there.','Setting this option on a file system prevents users from executing programs from shared memory. This deters users from introducing potentially malicious software on the system.','Edit the /etc/fstab file and add noexec to the fourth field (mounting options). Look for entries that have mount points that contain /run/shm . See the fstab(5) manual page for more information. # mount -o remount,noexec /run/shm.','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1019,'Ensure inetd is not installed','2.1.2','The inetd daemon listens for well known services and dispatches the appropriate daemon to properly respond to service requests.','If there are no inetd services required, it is recommended that the daemon be removed.','Run the following commands to uninstall openbsd-inetd and inetutils-inetd: apt-get remove openbsd-inetd; apt-get remove inetutils-inetd','','(null)','(null)','(null)','(null)','failed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1020,'Ensure FTP Server is not enabled','2.2.9','The File Transfer Protocol (FTP) provides networked computers with the ability to transfer files.','FTP does not protect the confidentiality of data or authentication credentials. It is recommended sftp be used if file transfer is required. Unless there is a need to run the system as a FTP server (for example, to allow anonymous downloads), it is recommended that the package be deleted to reduce the potential attack surface.','Run the following command to disable vsftpd: # systemctl disable vsftpd','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1021,'Ensure FTP Server is not enabled','2.2.9','The File Transfer Protocol (FTP) provides networked computers with the ability to transfer files.','FTP does not protect the confidentiality of data or authentication credentials. It is recommended sftp be used if file transfer is required. Unless there is a need to run the system as a FTP server (for example, to allow anonymous downloads), it is recommended that the package be deleted to reduce the potential attack surface.','Run the following command to disable vsftpd: # systemctl disable vsftpd','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1022,'Ensure IMAP and POP3 server is not enabled (IMAP)','2.2.11','exim is an open source IMAP and POP3 server for Linux based systems.','Unless POP3 and/or IMAP servers are to be provided by this system, it is recommended that the package be removed to reduce the potential attack surface.','Run the following commands to remove exim: # apt-get remove exim4; # apt-get purge exim4','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1023,'Ensure IMAP and POP3 server is not enabled (POP3)','2.2.11','exim is an open source IMAP and POP3 server for Linux based systems.','Unless POP3 and/or IMAP servers are to be provided by this system, it is recommended that the package be removed to reduce the potential attack surface.','Run the following commands to remove exim: # apt-get remove exim4; # apt-get purge exim4','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1024,'Ensure Samba is not enabled','2.2.12','The Samba daemon allows system administrators to configure their Linux systems to share file systems and directories with Windows desktops. Samba will advertise the file systems and directories via the Small Message Block (SMB) protocol. Windows desktop users will be able to mount these directories and file systems as letter drives on their systems.','If there is no need to mount directories and file systems to Windows systems, then this service can be deleted to reduce the potential attack surface.','Run the following command to disable smbd: # systemctl disable smbd','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1025,'Ensure NFS and RPC are not enabled','2.2.7','The Network File System (NFS) is one of the first and most widely distributed file systems in the UNIX environment. It provides the ability for systems to mount file systems of other servers through the network.','If the system does not export NFS shares or act as an NFS client, it is recommended that these services be disabled to reduce remote attack surface.','Run the following commands to disable nfs and rpcbind : # systemctl disable nfs-server; # systemctl disable rpcbind','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1026,'Ensure NIS Server is not enabled','2.2.17','The Network Information Service (NIS) (formally known as Yellow Pages) is a client-server directory service protocol for distributing system configuration files. The NIS server is a collection of programs that allow for the distribution of configuration files.','The NIS service is inherently an insecure system that has been vulnerable to DOS attacks, buffer overflows and has poor authentication for querying NIS maps. NIS generally been replaced by such protocols as Lightweight Directory Access Protocol (LDAP). It is recommended that the service be disabled and other, more secure services be used','Run the following command to disable nis: # systemctl disable nis','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1027,'Ensure HTTP server is not enabled','2.2.10','HTTP or web servers provide the ability to host web site content.','Unless there is a need to run the system as a web server, it is recommended that the package be deleted to reduce the potential attack surface.','Run the following command to disable apache2: # systemctl disable apache2','/etc/init.d/apache2.','(null)','(null)','(null)','(null)','failed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1028,'Ensure DNS Server is not enabled','2.2.8','The Domain Name System (DNS) is a hierarchical naming system that maps names to IP addresses for computers, services and other resources connected to a network.','Unless a system is specifically designated to act as a DNS server, it is recommended that the package be deleted to reduce the potential attack surface.','Run the following command to disable named: # systemctl disable bind9','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1029,'Ensure HTTP Proxy Server is not enabled','2.2.13','Squid is a standard proxy server used in many distributions and environments.','If there is no need for a proxy server, it is recommended that the squid proxy be deleted to reduce the potential attack surface.','Run the following command to disable squid: # systemctl disable squid','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1030,'Ensure rsh client is not installed','2.3.2','The rsh package contains the client commands for the rsh services.','These legacy clients contain numerous security exposures and have been replaced with the more secure SSH package. Even if the server is removed, it is best to ensure the clients are also removed to prevent users from inadvertently attempting to use these commands and therefore exposing their credentials. Note that removing the rsh package removes the clients for rsh , rcp and rlogin .','Run the following command to uninstall rsh: apt-get remove rsh-client rsh-redone-client','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1031,'Ensure telnet client is not installed','2.3.4','The telnet package contains the telnet client, which allows users to start connections to other systems via the telnet protocol.','The telnet protocol is insecure and unencrypted. The use of an unencrypted transmission medium could allow an unauthorized user to steal credentials. The ssh package provides an encrypted session and stronger security and is included in most Linux distributions.','Run the following command to uninstall telnet: # apt-get remove telnet','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1032,'Ensure IP forwarding is disabled','3.1.1','The net.ipv4.ip_forward and net.ipv6.conf.all.forwarding flags are used to tell the system whether it can forward packets or not.','Setting the flags to 0 ensures that a system with multiple interfaces (for example, a hard proxy), will never be able to forward packets, and therefore, never serve as a router.','Set the following parameter in /etc/sysctl.conf or a /etc/sysctl.d/* file: net.ipv4.ip_forward = 0, net.ipv6.conf.all.forwarding = 0','/proc/sys/net/ipv4/ip_forward.','(null)','(null)','(null)','(null)','failed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1033,'Ensure source routed packets are not accepted','3.2.1','In networking, source routing allows a sender to partially or fully specify the route packets take through a network. In contrast, non-source routed packets travel a path determined by routers in the network. In some cases, systems may not be routable or reachable from some locations (e.g. private addresses vs. Internet routable), and so source routed packets would need to be used.','Setting net.ipv4.conf.all.accept_source_route, net.ipv4.conf.default.accept_source_route, net.ipv6.conf.all.accept_source_route and net.ipv6.conf.default.accept_source_route to 0 disables the system from accepting source routed packets. Assume this system was capable of routing packets to Internet routable addresses on one interface and private addresses on another interface. Assume that the private addresses were not routable to the Internet routable addresses and vice versa. Under normal routing circumstances, an attacker from the Internet routable addresses could not use the system as a way to reach the private address systems. If, however, source routed packets were allowed, they could be used to gain access to the private address systems as the route could be specified, rather than rely on routing protocols that did not allow this routing.','Set the following parameters in /etc/sysctl.conf or a /etc/sysctl.d/* file: net.ipv4.conf.all.accept_source_route = 0, net.ipv4.conf.default.accept_source_route = 0, net.ipv6.conf.all.accept_source_route = 0, net.ipv6.conf.default.accept_source_route = 0','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1034,'Ensure broadcast ICMP requests are ignored','3.2.5','Setting net.ipv4.icmp_echo_ignore_broadcasts to 1 will cause the system to ignore all ICMP echo and timestamp requests to broadcast and multicast addresses.','Accepting ICMP echo and timestamp requests with broadcast or multicast destinations for your network could be used to trick your host into starting (or participating) in a Smurf attack. A Smurf attack relies on an attacker sending large amounts of ICMP broadcast messages with a spoofed source address. All hosts receiving this message and responding would send echo-reply messages back to the spoofed address, which is probably not routable. If many hosts respond to the packets, the amount of traffic on the network could be significantly multiplied.','Set the following parameters in /etc/sysctl.conf or a /etc/sysctl.d/* file: net.ipv4.icmp_echo_ignore_broadcasts = 1','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1035,'Ensure SSH Protocol is set to 2','5.2.4','Older versions of SSH support two different and incompatible protocols: SSH1 and SSH2. SSH1 was the original protocol and was subject to security issues. SSH2 is more advanced and secure.','SSH v1 suffers from insecurities that do not affect SSH v2.','Edit the /etc/ssh/sshd_config file to set the parameter as follows: Protocol 2','/etc/ssh/sshd_config.','(null)','(null)','(null)','(null)','failed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1036,'Ensure SSH IgnoreRhosts is enabled','5.2.8','The IgnoreRhosts parameter specifies that .rhosts and .shosts files will not be used in RhostsRSAAuthentication or HostbasedAuthentication .','Setting this parameter forces users to enter a password when authenticating with ssh.','Edit the /etc/ssh/sshd_config file to set the parameter as follows: IgnoreRhosts yes','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1037,'Ensure SSH HostbasedAuthentication is disabled','5.2.9','The HostbasedAuthentication parameter specifies if authentication is allowed through trusted hosts via the user of .rhosts , or /etc/hosts.equiv , along with successful public key client host authentication. This option only applies to SSH Protocol Version 2.','Even though the .rhosts files are ineffective if support is disabled in /etc/pam.conf, disabling the ability to use .rhosts files in SSH provides an additional layer of protection.','Edit the /etc/ssh/sshd_config file to set the parameter as follows: HostbasedAuthentication no','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1038,'Ensure SSH root login is disabled','5.2.10','The PermitRootLogin parameter specifies if the root user can log in using ssh. The default is no.','Disallowing root logins over SSH requires system admins to authenticate using their own individual account, then escalating to root via sudo or su . This in turn limits opportunity for non-repudiation and provides a clear audit trail in the event of a security incident','Edit the /etc/ssh/sshd_config file to set the parameter as follows: PermitRootLogin no','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1039,'Ensure SSH PermitEmptyPasswords is disabled','5.2.11','The PermitEmptyPasswords parameter specifies if the SSH server allows login to accounts with empty password strings.','Disallowing remote shell access to accounts that have an empty password reduces the probability of unauthorized access to the system','Edit the /etc/ssh/sshd_config file to set the parameter as follows: PermitEmptyPasswords no','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1040,'Ensure password fields are not empty','6.2.1','An account with an empty password field means that anybody may log in as that user without providing a password.','All accounts must have passwords or be locked to prevent the account from being used by an unauthorized user.','If any accounts in the /etc/shadow file do not have a password, run the following command to lock the account until it can be determined why it does not have a password: # passwd -l <username>','','(null)','(null)','(null)','(null)','passed','cis_debian');
INSERT INTO sca_check (scan_id,id,title,cis_control,description,rationale,remediation,file,process,directory,registry,"references","result",policy_id) VALUES (
1907428094,1041,'Ensure root is the only UID 0 account','6.2.5','Any account with UID 0 has superuser privileges on the system.','This access must be limited to only the default root account and only from the system console. Administrative access must be through an unprivileged account using an approved mechanism as noted in Item 5.6 Ensure access to the su command is restricted.','Remove any users other than root with UID 0 or assign them a new UID if appropriate.','','(null)','(null)','(null)','(null)','passed','cis_debian');
