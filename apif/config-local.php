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
    //Specify the dataset and key used for activity logging here
    'metadata' => [
        'dataset' => 'metadata-dataset'
    ],
    'activityLog' => [
        'enabled' => true,
        'dataset' => 'activity_log-dataset'
    ],
    'schema' => [
        'dataset' => 'schema-dataset',
    ],

];
