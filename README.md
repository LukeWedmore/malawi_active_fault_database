# Malawi Active Fault Database - MAFD

## Data Format

### Data Table
List and brief description of the attributes in the MAFD. Attributes are based on the Global Earthquake Model Global Active Faults Database (Styron and Pagani, 2020).
Attribute                          | Data Type | Description                             | Notes      
-----------------------------------|-----------|-----------------------------------------|---------------------------------------------------------------
MAFD-ID                            | integer   | Unique two-digit numerical reference ID |                                                                
fault_name                         | string    |                                         | Assigned based on previous mapping or local geographic feature
dip_dir                            | string    | Compass quadrant of fault dip direction | 
GeomorphEx                         | string    | Geomorphic expression of the feature used to identify and map the fault trace | scarp, escarpment
LocationM                          | string    | Dataset used to map the fault trace     | Type of digital elevation model or other geophysical dataset
accuracy                           | integer   | Coarsest scale at which fault trace can be mapped. Expressed as the denominator of the map scale | Reflects the prominence of the fault's geomorphic expression
ActivConf                          | integer   | Activity Confidence: Certainty of neotectonic activity       | 1 if certain, 2 if uncertain
ExposQual                          | integer   | Exposure Quality of the fault           | 1 if high, 2 if low
EpestQual                          | integer   | Epistemic Quality - certainty of whether that fault exists there | 1 if high, 2 if low
Last_Mov                           | string    | Date of last earthquake on the fault            | Currently this is unknown for all faults in Malawi except the St Mary’s Fault.
Notes                              | string    | remaining miscellaneous information about the fault | 
References                         | string    | Relevant geological maps and literature where the fault has previously been described | 
