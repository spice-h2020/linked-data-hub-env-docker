<?php

return [
    'mongodb' => [
        'host' => 'spice-datahub-mongodb',
        'port' => '27017',
        'database' => 'datahub',
	'queryLimit' => 100,
        'adminUser' => 'datahub-admin',
        'adminPwd' => 'DATAHUB1234567890'
    ],
    'file' => [
        'destination' => 'data/filestore/',
        'metadata_dataset' => 'metadata-dataset'
    ],
	'metadata' => [
        'dataset' => 'metadata-dataset'
    ],
    //Specify the dataset and key used for activity logging here
	'activityLog' => [
        'enabled' => true,
        'dataset' => 'activity_log-dataset'
    ],
    'schema' => [
        'dataset' => 'schema-dataset',
    ],

    'sparql' => [
        'host' => 'spice-datahub-blazegraph',
        'port' => '9999',
        'namespacePrefix' => ''
    ],
];
