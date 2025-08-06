# OSPF Route Summarization

This note explains how route summarization is used in OSPF to optimize routing.

---

## What is Route Summarization?

Route summarization (also called route aggregation) combines multiple specific routes into a single, broader route advertisement. This reduces the size of routing tables and limits flooding of routing updates.

---

## Why Summarize Routes?

- **Reduce Routing Table Size:** Less memory and CPU load on routers.  
- **Improve Network Stability:** Limits the scope of topology changes.  
- **Reduce LSA Flooding:** Decreases unnecessary updates in other areas.  
- **Simplify Routing Policies:** Easier management of summarized routes.

---

## Where is Summarization Applied?

- Typically applied at Area Border Routers (ABRs) between OSPF areas.  
- Can also be used on Autonomous System Boundary Routers (ASBRs) when redistributing external routes.

---

## How to Configure Summarization

- Use the `area <area-id> range <address> <mask>` command under the OSPF process on the ABR.  
- This command aggregates routes matching the range into a single summary route advertised into the backbone.

---

## Example from Lab

On router R4 (ABR between Area 0 and Area 2):

```plaintext
router ospf 1
 area 2 range 10.2.0.0 255.255.0.0
