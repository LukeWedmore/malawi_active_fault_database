# Malawi Active Fault Database - MAFD
=====================================

The Malawi Active Fault Database (MAFD) is a freely available open-source geospatial database of active fault traces within Malawi. The database is intended to cover all active faults within Malawi, and those close to the borders in Mozambique and Tanzania. However, possible active faults within 20 km of Malawi in the Luangwa Rift, eastern Zambia, and the Rukwa Rift, southern Tanzania, are not included in the MAFD. 

For full details of the criteria used to assess activity please refer to Williams et al, in review with G^3. 

The MAFD is a geospatial database containing a collection of active fault traces in GIS vector format. Each faults is mapped as a single continuous GIS feature, including those that show branching geometries. Each fault trace has associated metadata that describe the geometry of the faults, and various aspects of its exposure. Note all faults in this database are considered to have normal kinematics.



## Data Format

### Data Table
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

List and brief description of the attributes in the MAFD. Attributes are based on the Global Earthquake Model Global Active Faults Database (GEM-GAFD; Styron and Pagani, 2020). Note, currently we do not include all attributes from the GEM-GAFD as these data have not been collected in Malawi. It is the intention that future versions of this database will include more attributes (e.g. slip rates). No assessment is made of the seismogenic properties of faults in the MAFD as this is subjective and liable to change, therefore, these data have been stored in a separate database that will shortly be submitted for publication.

## File Formats

Following the GEM-GAFD this database is provided in a variety of GIS vector file formats. [GeoJSON] is the version of record, and any changes should be made in this version before they are converted to other file formats using the script in the repository that uses the GDAL tool ogr2ogr (the script is adapted from https://github.com/cossatot/central_am_carib_faults/blob/master/convert.sh - we thank Richard Styron for making this publicly available). The other versions available are [ESRI ShapeFile], KML, GMT, and [GeoPackage].

A "static version" of this database in all file formats described above and associated with the submission in *G^3* is available on Zenodo at the following link:
[![DOI](https://zenodo.org/badge/91775241.svg)]

This version is intended to be "Live" and as such we encourage edits of the GeoJSON file and the submission of pull requests. Please contact Jack Williams <jack.williams@otago.ac.nz> Luke Wedmore <luke.wedmore@bristol.ac.uk> or Hassan Mdala <mdalahassan@yahoo.com> for information, other requests or if you find any errors within the database.


[GeoJSON]: http://geojson.org/
[GeoPackage]: https://www.geopackage.org/
[ESRI ShapeFile]: https://support.esri.com/en/white-paper/279
