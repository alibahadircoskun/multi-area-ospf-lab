# OSPF Basics

This note covers fundamental concepts of OSPF (Open Shortest Path First) used in the Multi-Area OSPF Lab.

---

## What is OSPF?

OSPF is a link-state routing protocol widely used in enterprise networks. It uses the Shortest Path First (SPF) algorithm to calculate the best path to each network.

---

## Key Concepts

### Areas
- OSPF divides a network into areas to optimize routing and reduce overhead.
- Area 0 is the backbone area; all other areas must connect to Area 0.

### Router Types
- **Internal Router**: All interfaces belong to the same area.
- **Area Border Router (ABR)**: Connects multiple areas, including Area 0.
- **Backbone Router**: Located within Area 0.
- **Autonomous System Boundary Router (ASBR)**: Connects OSPF to other routing domains.

### LSAs (Link-State Advertisements)
- LSAs are OSPF’s way of sharing routing information.
- Types include Router LSAs, Network LSAs, Summary LSAs, and AS External LSAs.

### OSPF Adjacency
- OSPF routers form adjacencies with neighbors to exchange LSAs.
- DR (Designated Router) and BDR (Backup Designated Router) are elected on broadcast networks to reduce LSA flooding.

### OSPF Metrics and Cost
- OSPF uses cost as a metric, typically based on bandwidth, to calculate the best path.

---

## Why OSPF?

- Fast convergence
- Scalability through areas
- Standardized and widely supported

---

## Summary

Understanding these basics helps in designing and troubleshooting OSPF networks effectively. This lab applies these concepts practically across multiple areas to demonstrate OSPF behavior in a segmented environment.

---
