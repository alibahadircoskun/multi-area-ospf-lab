# OSPF Multi-Area Design

This note explains the concept of multi-area OSPF design as implemented in the lab.

---

## Why Use Multiple Areas?

- **Scalability:** Dividing a large OSPF network into areas reduces routing overhead and limits the size of the link-state database.
- **Improved Convergence:** Smaller areas mean faster SPF calculations.
- **Traffic Isolation:** Problems in one area don’t necessarily affect others.
- **Simplified Management:** Easier to apply policies and control routing updates.

---

## Area Types

- **Backbone Area (Area 0):**  
  The core of the OSPF network. All other areas must connect to it directly or via virtual links.

- **Standard Areas:**  
  Regular areas that exchange all LSAs with other areas.

- **Stub Areas:**  
  Areas that do not receive external routes (Type 5 LSAs). They use a default route to reach external destinations.

- **Totally Stubby Areas:**  
  Further restrict routes by blocking summary LSAs (Type 3 and 4), except the default route.

- **Not-So-Stubby Areas (NSSA):**  
  Allow limited external route injection via Type 7 LSAs.

---

## Area Border Routers (ABRs)

- Connect different OSPF areas.
- Summarize routes between areas.
- Control which LSAs cross area boundaries.
- In this lab, R4 is an ABR connecting Area 0 and Area 2.

---

## Route Summarization

- Reduces routing table size.
- Limits LSA flooding between areas.
- Helps maintain stability and scalability.

---

## Lab Application

- The lab topology uses Area 0 as the backbone and Areas 1 and 2 as separate non-backbone areas.
- Area 2 is configured as a totally stubby area to reduce routing overhead.
- Route summarization and filtering are applied at ABRs.

---

## Summary

Multi-area design is critical for large OSPF deployments. It balances performance and manageability by segmenting the network and controlling routing information flow.

---
