# Malawi Active Fault Database - MAFD


[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.5507190.svg)](https://doi.org/10.5281/zenodo.5507190)


The Malawi Active Fault Database (MAFD) is a freely available open-source geospatial database of active fault traces within Malawi. The database is intended to cover all active faults within Malawi, and those close to the borders in Mozambique and Tanzania. However, possible active faults within 20 km of Malawi in the Luangwa Rift, eastern Zambia, and the Rukwa Rift, southern Tanzania, are not included in the MAFD. 

For full details of the criteria used to assess activity please refer to Williams et al, in review with G^3. An unreviewed preprint of this article is available at the following link: https://doi.org/10.1002/essoar.10507158.1


## Citation
Prior to publication, please cite this database as:
Williams, J. N., Wedmore, L. N. J., Scholz, C. A., Kolawole, F., Wright, L. J. M., Shillington, D., Fagereng, Å., Biggs, J., Mdala, H., Dulanya, Z., Mphepo, F., Chindandali, P. R. N., Werner, M. J. (2021), The Malawi Active Fault Database: an onshore-offshore database for regional assessment of seismic hazard and tectonic evoultion. PREPRINT *Earth and Space Science Open Archive*, doi.org/10.1002/essoar.10507158.1


## Data Format
The MAFD is a geospatial database containing a collection of active fault traces in GIS vector format. Each faults is mapped as a single continuous GIS feature, including those that show branching geometries. Each fault trace has associated metadata that describe the geometry of the faults, and various aspects of its exposure. Note all faults in this database are considered to have normal kinematics.

### Data Table
Attribute                          | Data Type | Description                              | Notes      
-----------------------------------|-----------|------------------------------------------|---------------------------------------------------------------
MAFD-ID                            | integer   | Unique tree-digit numerical reference ID |                                                                
fault_name                         | string    |                                          | Assigned based on previous mapping or local geographic feature
dip_dir                            | string    | Compass quadrant of fault dip direction  | 
slip_type                          | string    | Kinematic type                           | All faults in the MAFD show normal offsets and so are inferred to be predominantly normal but we cannot discount that some faults also exhibit an oblique-slip component.
GeomorphEx                         | string    | Geomorphic expression of the feature used to identify and map the fault trace | scarp, escarpment
LocationM                          | string    | Dataset used to map the fault trace      | Type of digital elevation model or other geophysical dataset
accuracy                           | integer   | Coarsest scale at which fault trace can be mapped. Expressed as the denominator of the map scale | Reflects the prominence of the fault's geomorphic expression
ActivConf                          | integer   | Activity Confidence: Certainty of neotectonic activity       | 1 if certain, 2 if uncertain
ExposQual                          | integer   | Exposure Quality of the fault            | 1 if high, 2 if low
EpistQual                          | integer   | Epistemic Quality - certainty of whether that fault exists there | 1 if high, 2 if low
Last_Mov                           | string    | Date of last earthquake on the fault            | Currently this is unknown for all faults in Malawi except the St Mary’s Fault.
Notes                              | string    | remaining miscellaneous information about the fault | 
References                         | string    | Relevant geological maps and literature where the fault has previously been described | 

List and brief description of the attributes in the MAFD. Attributes are based on the [Global Earthquake Model Global Active Faults Database] (GEM-GAFD; Styron and Pagani, 2020). Note, currently we do not include all attributes from the [GEM-GAFD] as these data have not been collected in Malawi. It is the intention that future versions of this database will include more attributes (e.g. slip rates). No assessment is made of the seismogenic properties of faults in the MAFD as this is subjective and liable to change, therefore, these data have been stored in a separate database that will shortly be submitted for publication.


## File Formats

Following the [GEM-GAFD] this database is provided in a variety of GIS vector file formats. [GeoJSON] is the version of record, and any changes should be made in this version before they are converted to other file formats using the script in the repository that uses the [GDAL] tool [ogr2ogr] (the script is adapted from https://github.com/cossatot/central_am_carib_faults/blob/master/convert.sh - we thank Richard Styron for making this publicly available). The other versions available are [ESRI ShapeFile], [KML], [GMT], and [GeoPackage].


## Version Control

A "static version" of this database in all file formats described above and associated with the submission in *G^3* is available on Zenodo at the following link:
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.5507190.svg)](https://doi.org/10.5281/zenodo.5507190)

This version is intended to be "Live" and as such we encourage edits of the GeoJSON file and the submission of pull requests. Please contact Jack Williams <jack.williams@otago.ac.nz> Luke Wedmore <luke.wedmore@bristol.ac.uk> or Hassan Mdala <mdalahassan@yahoo.com> for information, other requests or if you find any errors within the database.

## Malawi Other Faults Database (MOFD)

The Malawi Other Faults Database (MOFD) is a geospatial database of other faults in Malawi that have been identified in geological maps, aeromagnetic and gravity datasets, and/or on fieldwork where we did not find any evidence of activity as outlined in the manuscript associated with this database. The database is structured slightly differently from the MAFD and has the following attributes.

Attribute                          | Data Type | Description                             | Notes      
-----------------------------------|-----------|-----------------------------------------|---------------------------------------------------------------
MOFD_ID                            | integer   | Unique numerical reference ID           |
Fault_Name                         | string    |                                         |
Fault_Age                          | string    | Age of last activity on the fault       | 
slip_sense                         | string    | kinematic type of fault                 | e.g. normal, reverse, strike-slip (dextral or sinestral)
Notes                              | string    | information about offset/geology and other evidence for the existence of the fault | 
References                         | string    | references associated with the fault    |


### References
Styron, Richard, and Marco Pagani. “The GEM Global Active Faults Database.” Earthquake Spectra, vol. 36, no. 1_suppl, Oct. 2020, pp. 160–180, doi:10.1177/8755293020944182.


[GeoJSON]: http://geojson.org/
[GeoPackage]: https://www.geopackage.org/
[ESRI ShapeFile]: https://support.esri.com/en/white-paper/279
[Global Earthquake Model Global Active Faults Database]: https://github.com/cossatot/gem-global-active-faults
[GEM-GAFD]: https://github.com/cossatot/gem-global-active-faults
[ogr2ogr]: https://gdal.org/programs/ogr2ogr.html
[GDAL]: https://gdal.org/
[KML]: https://earth.google.com
[GMT]: https://www.generic-mapping-tools.org/
