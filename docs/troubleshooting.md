# Troubleshooting Tips for OSPF

This note covers some common OSPF issues encountered during the multi-area OSPF lab and how I resolved them.

---

## Issue: OSPF Neighbor Adjacency Forms But Routing Fails Between Areas

### The Problem

In the lab, all OSPF neighbors formed successfully between routers, but hosts in Area 1 could not reach subnets in Area 2. Routing tables were missing routes for remote areas.

### Diagnosis

- Verified neighbor adjacency using `show ip ospf neighbor` — all neighbors were up.  
- Checked interface IPs and connectivity — no issues.  
- Reviewed OSPF area assignments on interfaces — discovered that on some routers, interfaces connecting to Area 2 were mistakenly configured in Area 0.  
- This caused OSPF to establish neighbor adjacencies but routing information was not correctly shared between areas.

### Resolution

- Corrected the OSPF network statements on affected routers to assign interfaces to the proper OSPF areas.  
- Example correction:

  ```plaintext
  network 10.2.0.0 0.0.255.255 area 2
