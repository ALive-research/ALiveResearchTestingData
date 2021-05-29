# ALiveResearchTestingData

This is a mirror for storing ALive-research testing data assets and it is based on [SlicerTestingData](https://github.com/Slicer/SlicerTestingData).

To support content-based addressing, files are uploaded as assets organized in [releases](https://github.com/ALive-Research/ALiveResearchTestingData/releases)
named after the hashing algorithm.

For each hashing algorithm `<HASHALGO>` (MD5, SHA256, ...), you will find:
* release named `<HASHALGO>`
* a CSV file `<HASHALGO>.csv` listing all `<hashsum>;<filename>` pairs
* markdown document `<HASHALGO>.md` with links of the form `* [<filename>](https://github.com/ALive-Research/ALiveResearchTestingData/releases/download/<HASHALGO>/<checksum>)` (this file is regenerated on each upload from the CSV file, therefore files should be renamed or deleted by editing the CSV file)
