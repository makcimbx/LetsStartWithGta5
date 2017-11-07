resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

-- add the files to be sent to the client
files {
'vehicles.meta',
'handling.meta',
'weapons.meta',
}

-- specify data file entries to be added
-- these entries are the same as content.xml in a DLC pack
data_file 'HANDLING_FILE' 'handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'vehicles.meta'
data_file 'WEAPON_METADATA_FILE' 'weapons.meta'