#!/usr/bin/perl
# ----------------------_-------------------------------------------
#  ___ __ ___ _ __  ___| |_ ___ _ _
# / -_) _/ _ \ '  \/ -_)  _/ -_) '_|
# \___\__\___/_|_|_\___|\__\___|_|   s.n.c.
#
#  Script     : params_config.pl
#  Author     : Paolo Saudin & Hillary Martello
#  Date       : 2018-03-28
#  Last Edited: 2018-05-11
#  Description: Data input for creation XML dataset D
#  Location   : Arpa vda
# ------------------------------------------------------------------

# ##########################################################################
# ACQUISIZIONE DATI DA DB

our $zoneID = 'IT119A';
our %params = (

    1   =>{
        code =>'IT0977A_7_UV-P_1994-10-02_00:00:00',
        coord => '45.729170000000003 6.97778',
        inletHeight => 6.0,
        observingTime => {
            beginPosition => '1994-10-02T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '1994-10-02T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'automatic',
        equipment => 'API400E',
        dataQuality => {
                concentration => 'ug.m-3',
                detectionLimit => 1.2,
                documentation => 999,
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'continuous',
                duration_numUnit => 1,
                cadence_unit => 'second',
                cadence_numUnit => 2
            }
        },
    2   =>{
        code =>'IT0980A_7_UV-P_1996-06-01_00:00:00',
        coord => '45.73028 7.29889',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '1996-06-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '1996-06-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'automatic',
        equipment => 'API400A',
        dataQuality => {
                concentration => 'ug.m-3',
                detectionLimit => 1.3,
                documentation => 'interconfronti ispra',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'continuous',
                duration_numUnit => 1,
                cadence_unit => 'second',
                cadence_numUnit => 2
            }
        },
    3   =>{
        code =>'IT0988A_8_chemi_2001-11-15_00:00:00',
        coord => '45.596600000000002 7.76643',
        inletHeight => 6.0,
        observingTime => {
            beginPosition => '2001-11-15T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2001-11-15T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'automatic',
        equipment => 'API200E',
        dataQuality => {
                concentration => 'ug.m-3',
                detectionLimit => 1.3,
                documentation => 999,
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'continuous',
                duration_numUnit => 1,
                cadence_unit => 'second',
                cadence_numUnit => 2
            }
        },
    4   =>{
        code =>'IT0988A_38_chemi_2001-11-15_00:00:00',
        coord => '45.596600000000002 7.76643',
        inletHeight => 6.0,
        observingTime => {
            beginPosition => '2001-11-15T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2001-11-15T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'automatic',
        equipment => 'API200E',
        dataQuality => {
                concentration => 'ug.m-3',
                detectionLimit => 0.7,
                documentation => 999,
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'continuous',
                duration_numUnit => 1,
                cadence_unit => 'second',
                cadence_numUnit => 2
            }
        },
    5   =>{
        code =>'IT0983A_10_NDIR_1999-01-01_00:00:00',
        coord => '45.73583 7.32417',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '1999-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '1999-01-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'automatic',
        equipment => 'API300',
        dataQuality => {
                concentration => 'mg.m-3',
                detectionLimit => 0.8,
                documentation => 999,
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'continuous',
                duration_numUnit => 1,
                cadence_unit => 'second',
                cadence_numUnit => 2
            }
        },
    6   =>{
        code =>'IT0983A_21_FID_1996-06-01_00:00:00',
        coord => '45.73583 7.32417',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '1996-06-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '1996-06-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'automatic',
        dataQuality => {
                concentration => 'ng.m-3',
                detectionLimit => 1.0,
                documentation => 999,
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'continuous',
                duration_numUnit => 1,
                cadence_unit => 'continuous',
                cadence_numUnit => 1
            }
        },
    7   =>{
        code =>'IT0977A_9_chemi_2008-01-01_00:00:00',
        coord => '45.729170000000003 6.97778',
        inletHeight => 6.0,
        observingTime => {
            beginPosition => '2008-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2008-01-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'automatic',
        equipment => 'API200',
        dataQuality => {
                concentration => 'ug.m-3',
                detectionLimit => 0.7,
                documentation => 999,
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'continuous',
                duration_numUnit => 1,
                cadence_unit => 'continuous',
                cadence_numUnit => 1
            }
        },
    8   =>{
        code =>'IT0977A_38_chemi_2008-01-01_00:00:00',
        coord => '45.729170000000003 6.97778',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '2008-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2008-01-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'automatic',
        equipment => 'API200A',
        dataQuality => {
                concentration => 'ug.m-3',
                detectionLimit => 0.7,
                documentation => '',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'continuous',
                duration_numUnit =>  1,
                cadence_unit => 'second',
                cadence_numUnit => 2
            }
        },
    9   =>{
        code =>'IT0980A_9_chemi_2007-09-01_00:00:00',
        coord => '45.73028 7.29889',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '2007-09-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2007-09-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'automatic',
        equipment => 'API200E',
        dataQuality => {
                concentration => 'ug.m-3',
                detectionLimit => 1.3,
                documentation => 999,
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'continuous',
                duration_numUnit => 1,
                cadence_unit => 'second',
                cadence_numUnit => 2
            }
        },
    10  =>{
        code =>'IT0980A_38_chemi_2007-09-01_00:00:00',
        coord => '45.73028 7.29889',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '2007-09-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2007-09-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'automatic',
        dataQuality => {
                concentration => 'ug.m-3',
                detectionLimit => 0.7,
                documentation => 999,
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'continuous',
                duration_numUnit => 1,
                cadence_unit => 'second',
                cadence_numUnit => 2
            }
        },
    11  =>{
        code =>'IT0983A_6001_BETA_2012-01-01_00:00:00',
        coord => '45.73583 7.32417',
        inletHeight => 4.0,
        observingTime => {
            beginPosition => '2012-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2012-01-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'automatic',
        equipment => 'opsisSM200',
        demonstrationReport => 'http://www.certipedia.com/companies/103405/certificates_by_product?additional_title=OPSIS+SM+200+PM2.5&lt;locale=en&lt;title=Ambient+air+Measurement',
        dataQuality => {
                concentration => 'ug.m-3',
                detectionLimit => 2.5,
                documentation => 'interconfronti ISPRA',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'hour',
                duration_numUnit => 24,
                cadence_unit => 'hour',
                cadence_numUnit => 3
            }
        },
    12  =>{
        code =>'IT0983A_38_chemi_2005-01-27_00:00:00',
        coord => '45.73583 7.32417',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '2005-01-27T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2005-01-27T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'automatic',
        equipment => 'API200E',
        dataQuality => {
                concentration => 'ug.m-3',
                detectionLimit => 0.7,
                documentation => 999,
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'continuous',
                duration_numUnit => 1,
                cadence_unit => 'second',
                cadence_numUnit => 2
            }
        },
    13  =>{
        code =>'IT0983A_78_FID_1996-06-01_00:00:00',
        coord => '45.73583 7.32417',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '1996-06-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '1996-06-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'automatic',
        equipment => 'GC855BTX',
        dataQuality => {
                concentration => 'ng.m-3',
                detectionLimit => 10.0,
                documentation => 999,
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'continuous',
                duration_numUnit => 1,
                cadence_unit => 'continuous',
                cadence_numUnit => 1
            }
        },
    14  =>{
        code =>'IT2233A_5_BETA_2015-01-01_00:00:00',
        coord => '45.734305999999997 7.329645',
        inletHeight => 3.0,
        observingTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        mainEmissionSources => '1A5',
        stationClassification => 'background',
        measurementType => 'automatic',
        equipment => 'opsisSM200',
        demonstrationReport => 'http://www.certipedia.com/companies/103405/certificates_by_product?additional_title=OPSIS+SM+200+PM10&lt;locale=en&lt;title=Ambient+air+Measurement',
        dataQuality => {
                concentration => 'ug.m-3',
                detectionLimit => 2.5,
                documentation => 'in progress',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'day',
                duration_numUnit => 1,
                cadence_unit => 'continuous',
                cadence_numUnit => 1
            }
        },
    15  =>{
        code =>'IT2233A_8_chemi_2015-01-01_00:00:00',
        coord => '45.734305999999997 7.329645',
        inletHeight => 4.0,
        observingTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        mainEmissionSources => '1A5',
        stationClassification => 'background',
        measurementType => 'automatic',
        equipment => 'API200E',
        dataQuality => {
                concentration => 'ug.m-3',
                detectionLimit => 0.7,
                documentation => 'in progress',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'continuous',
                duration_numUnit => 1,
                cadence_unit => 'continuous',
                cadence_numUnit => 1
            }
        },
    16  =>{
        code =>'IT2233A_7_UV-P_2015-01-01_00:00:00',
        coord => '45.734305999999997 7.329645',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        mainEmissionSources => '1A5',
        stationClassification => 'background',
        measurementType => 'automatic',
        equipment => 'APIT400',
        dataQuality => {
                concentration => 'ug.m-3',
                detectionLimit => 0.7,
                documentation => 'in progress',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'continuous',
                duration_numUnit => 1,
                cadence_unit => 'continuous',
                cadence_numUnit => 1
            }
        },
    17  =>{
        code =>'IT2233A_5014_ICP-MS_2015-01-01_00:00:00',
        coord => '45.734305999999997 7.329645',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'active',
        samplingMethod => 'LVSauto2.3',
        samplingEquipment => 'MCZ-PNS-LVS16-seq',
        dataQuality => {
                concentration => 'ng.m-3',
                detectionLimit => 0.1,
                documentation => 'interconfronti ISPRA',
                qaReport => ' in preparation'
            },
        timereferences => {
                duration_unit => 'hour',
                duration_numUnit => 24,
                cadence_unit => 'minute',
                cadence_numUnit => 2
            }
        },
    18  =>{
        code =>'IT2233A_5012_ICP-MS_2015-01-01_00:00:00',
        coord => '45.734305999999997 7.329645',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'active',
        samplingMethod => 'LVSauto2.3',
        samplingEquipment => 'MCZ-PNS-LVS16-seq',
        dataQuality => {
                concentration => 'ng.m-3',
                detectionLimit => 0.09,
                documentation => 'interconfronti ISPRA',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'hour',
                duration_numUnit => 24,
                cadence_unit => 'minute',
                cadence_numUnit => 2
            }
        },
    19  =>{
        code =>'IT2234A_8_chemi_2015-01-01_00:00:00',
        coord => '45.730659000000003 7.329645',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'industrial',
        distanceSource => 150.0,
        measurementType => 'automatic',
        equipment => 'API200E',
        dataQuality => {
                concentration => 'ug.m-3',
                detectionLimit => 0.7,
                documentation => 'interconfronti ISPRA',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'continuous',
                duration_numUnit => 1,
                cadence_unit => 'continuous',
                cadence_numUnit => 1
            }
        },
    20  =>{
        code =>'IT2234A_5012_ICP-MS_2015-01-01_00:00:00',
        coord => '45.730659000000003 7.329645',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'industrial',
        distanceSource => 150.0,
        measurementType => 'active',
        samplingMethod => 'LVSauto2.3',
        samplingEquipment => 'MCZ-PNS-LVS16-seq',
        dataQuality => {
                concentration => 'ng.m-3',
                detectionLimit => 0.9,
                documentation => 'interconfronti nazionali',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'hour',
                duration_numUnit => 24,
                cadence_unit => 'minute',
                cadence_numUnit => 2
            }
        },
    21  =>{
        code =>'IT0983A_5015_ICP-MS_2015-01-01_00:00:00',
        coord => '45.73583 7.32417',
        inletHeight => 4.0,
        observingTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        mainEmissionSources => '2',
        stationClassification => 'background',
        measurementType => 'active',
        samplingMethod => 'LVSauto2.3',
        samplingEquipment => 'MCZ-PNS-LVS16-seq',
        dataQuality => {
                concentration => 'ng.m-3',
                detectionLimit => 0.6,
                documentation => 'in progress',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'hour',
                duration_numUnit => 24,
                cadence_unit => 'variable',
                cadence_numUnit => 1
            }
        },
    22  =>{
        code =>'IT2233A_5029_HPLC-FLD_2015-01-01_00:00:00',
        coord => '45.734305999999997 7.329645',
        inletHeight => 4.0,
        observingTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        mainEmissionSources => 'other',
        stationClassification => 'background',
        measurementType => 'active',
        samplingMethod => 'LVSauto2.3',
        samplingEquipment => 'MCZ-PNS-LVS16-seq',
        dataQuality => {
                concentration => 'ng.m-3',
                detectionLimit => 0.1,
                documentation => 'in progress',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'hour',
                duration_numUnit => 24,
                cadence_unit => 'variable',
                cadence_numUnit => 1
            }
        },
    23  =>{
        code =>'IT0988A_7_UV-P_2001-11-15_00:00:00',
        coord => '45.596600000000002 7.76643',
        inletHeight => 6.0,
        observingTime => {
            beginPosition => '2001-11-15T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2001-11-15T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'automatic',
        equipment => 'API400E',
        dataQuality => {
                concentration => 'ng.m-3',
                detectionLimit => 0.1,
                documentation => 'in progress',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'continuous',
                duration_numUnit => 1,
                cadence_unit => 'second',
                cadence_numUnit => 2
            }
        },
    24  =>{
        code =>'IT0988A_9_chemi_2001-11-15_00:00:00',
        coord => '45.596600000000002 7.76643',
        inletHeight => 8.0,
        observingTime => {
            beginPosition => '2001-11-15T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2001-11-15T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'automatic',
        equipment => 'API200E',
        dataQuality => {
                concentration => 'ug.m-3',
                detectionLimit => 0.7,
                documentation => 999,
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'continuous',
                duration_numUnit => 1,
                cadence_unit => 'second',
                cadence_numUnit => 2
            }
        },
    25  =>{
        code =>'IT0988A_5_BETA_2011-01-01_00:00:00',
        coord => '45.596600000000002 7.76643',
        inletHeight => 6.0,
        observingTime => {
            beginPosition => '2011-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2011-01-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'automatic',
        equipment => 'opsisSM200',
        demonstrationReport => 'http://www.certipedia.com/companies/103405/certificates_by_product?additional_title=OPSIS+SM+200+PM10&lt;locale=en&lt;title=Ambient+air+Measurement',
        dataQuality => {
                concentration => 'ug.m-3',
                detectionLimit => 2.5,
                documentation => 'interconfronti ISPRA',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'hour',
                duration_numUnit => 24,
                cadence_unit => 'hour',
                cadence_numUnit => 3
            }
        },
    26  =>{
        code =>'IT0983A_7_UV-P_1994-10-02_00:00:00',
        coord => '45.73583 7.32417',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '1994-10-02T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '1994-10-02T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'automatic',
        equipment => 'API400A',
        dataQuality => {
                concentration => 'ug.m-3',
                detectionLimit => 1.2,
                documentation => 999,
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'continuous',
                duration_numUnit => 1,
                cadence_unit => 'second',
                cadence_numUnit => 2
            }
        },
    27  =>{
        code =>'IT0983A_20_GC-FID_1996-06-01_00:00:00',
        coord => '45.73583 7.32417',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '1996-06-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '1996-06-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification =>'background',
        measurementType => 'automatic',
        dataQuality => {
                concentration => 'ng.m-3',
                detectionLimit => 0.1,
                documentation => 999,
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'continuous',
                duration_numUnit => 1,
                cadence_unit => 'continuous',
                cadence_numUnit => 1
            }
        },
    28  =>{
        code =>'IT0983A_5029_HPLC-FLD_2005-01-01_00:00:00',
        coord => '45.73583 7.32417',
        inletHeight => 4.0,
        observingTime => {
            beginPosition => '2005-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2005-01-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'active',
        samplingMethod => 'LVSauto2.3',
        samplingEquipment => 'MCZ-PNS-LVS16-seq',
        dataQuality => {
                concentration => 'ng.m-3',
                detectionLimit => 0.01,
                documentation => 999,
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'hour',
                duration_numUnit => 24,
                cadence_unit => 'minute',
                cadence_numUnit => 2
            }
        },
    29  =>{
        code =>'IT0983A_5_BETA_2012-01-01_00:00:00',
        coord => '45.73583 7.32417',
        inletHeight => 3.0,
        buildingDist => 20.0,
        kerbDist => 10.0,
        observingTime => {
            beginPosition => '2012-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2012-01-01T00:00:00.000Z',
            endPosition => undef
        },
        mainEmissionSources => '1A5',
        stationClassification => 'background',
        distanceSource => 500.0,
        measurementType => 'automatic',
        equipment => 'opsisSM200',
        demonstrationReport => 'http://www.certipedia.com/companies/103405/certificates_by_product?additional_title=OPSIS+SM+200+PM10&lt;locale=en&lt;title=Ambient+air+Measurement',
        dataQuality => {
                concentration => 'ug.m-3',
                detectionLimit => 2.5,
                documentation => 'interconfronti ISPRA',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'hour',
                duration_numUnit => 24,
                cadence_unit => 'hour',
                cadence_numUnit => 3
            }
        },
    30  =>{
        code =>'IT0977A_8_chemi_2008-01-01_00:00:00',
        coord => '45.729170000000003 6.97778',
        inletHeight => 6.0,
        observingTime => {
            beginPosition => '2008-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2008-01-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'automatic',
        equipment => 'API200E',
        dataQuality => {
                concentration => 'ug.m-3',
                detectionLimit => 0.7,
                documentation => 999,
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'continuous',
                duration_numUnit => 1,
                cadence_unit => 'second',
                cadence_numUnit => 2
            }
        },
    31  =>{
        code =>'IT0980A_8_chemi_2007-09-01_00:00:00',
        coord => '45.73028 7.29889',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '2007-09-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2007-09-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'automatic',
        equipment => 'API200E',
        dataQuality => {
                concentration => 'ug.m-3',
                detectionLimit => 0.7,
                documentation => 'interconfronti ISPRA',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'continuous',
                duration_numUnit => 1,
                cadence_unit => 'second',
                cadence_numUnit => 2
            }
        },
    32  =>{
        code =>'IT0983A_8_chemi_2005-01-01_00:00:00',
        coord => '45.73583 7.32417',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '2005-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2005-01-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'automatic',
        equipment => 'API200E',
        dataQuality => {
                concentration => 'ug.m-3',
                detectionLimit => 1.3,
                documentation => 'interconfronti ISPRA',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'continuous',
                duration_numUnit => 1,
                cadence_unit => 'second',
                cadence_numUnit => 2
            }
        },
    33  =>{
        code =>'IT0983A_9_chemi_2005-01-27_00:00:00',
        coord => '45.73583 7.32417',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '2005-01-27T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2005-01-27T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'automatic',
        equipment => 'API200E',
        dataQuality => {
                concentration => 'ug.m-3',
                detectionLimit => 1.3,
                documentation => 999,
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'continuous',
                duration_numUnit => 1,
                cadence_unit => 'second',
                cadence_numUnit => 2
            }
        },
    34  =>{
        code =>'IT2233A_6001_BETA_2015-01-01_00:00:00',
        coord => '45.734305999999997 7.329645',
        inletHeight => 4.0,
        observingTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        mainEmissionSources => '1A5',
        stationClassification => 'background',
        measurementType => 'automatic',
        equipment => 'opsisSM200',
        demonstrationReport => 'http://www.certipedia.com/companies/103405/certificates_by_product?additional_title=OPSIS+SM+200+PM10&lt;locale=en&lt;title=Ambient+air+Measurement',
        dataQuality => {
                concentration => 'ug.m-3',
                detectionLimit => 2.5,
                documentation => 'in progress',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'day',
                duration_numUnit => 1,
                cadence_unit => 'continuous',
                cadence_numUnit => 1
            }
        },
    35  =>{
        code =>'IT2233A_5015_ICP-MS_2015-01-01_00:00:00',
        coord => '45.734305999999997 7.329645',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'active',
        samplingMethod => 'LVSauto2.3',
        samplingEquipment => 'MCZ-PNS-LVS16-seq',
        dataQuality => {
                concentration => 'ng.m-3',
                detectionLimit => 0.6,
                documentation => 'interconfronti ISPRA',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'hour',
                duration_numUnit => 24,
                cadence_unit => 'minute',
                cadence_numUnit => 2
            }
        },
    36  =>{
        code =>'IT2233A_5018_ICP-MS_2015-01-01_00:00:00',
        coord => '45.734305999999997 7.329645',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'background',
        measurementType => 'active',
        samplingMethod => 'LVSauto2.3',
        samplingEquipment => 'MCZ-PNS-LVS16-seq',
        dataQuality => {
                concentration => 'ng.m-3',
                detectionLimit => 0.6,
                documentation => 'in progress',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'hour',
                duration_numUnit => 24,
                cadence_unit => 'minute',
                cadence_numUnit => 2
            }
        },
    37  =>{
        code =>'IT2234A_5_BETA_2015-01-01_00:00:00',
        coord => '45.730659000000003 7.329645',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        mainEmissionSources => '2',
        stationClassification => 'industrial',
        distanceSource => 150.0,
        measurementType => 'automatic',
        equipment => 'opsisSM200',
        demonstrationReport => 'http://www.certipedia.com/companies/103405/certificates_by_product?additional_title=OPSIS+SM+200+PM10&lt;locale=en&lt;title=Ambient+air+Measurement',
        dataQuality => {
                concentration => 'ug.m-3',
                detectionLimit => 2.5,
                documentation => 'interconfronti ISPRA',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'hour',
                duration_numUnit => 24,
                cadence_unit => 'minute',
                cadence_numUnit => 2
            }
        },
    38  =>{
        code =>'IT2234A_5014_ICP-MS_2015-01-01_00:00:00',
        coord => '45.730659000000003 7.329645',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'industrial',
        distanceSource => 150.0,
        measurementType => 'active',
        samplingMethod => 'LVSauto2.3',
        samplingEquipment => 'MCZ-PNS-LVS16-seq',
        dataQuality => {
                concentration => 'ng.m-3',
                detectionLimit => 0.0091,
                documentation => 'non ancora valutata',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'hour',
                duration_numUnit => 24,
                cadence_unit => 'minute',
                cadence_numUnit => 2
            }
        },
    39  =>{
        code =>'IT2234A_5015_ICP-MS_2015-01-01_00:00:00',
        coord => '45.730659000000003 7.329645',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'industrial',
        distanceSource => 150.0,
        measurementType => 'active',
        samplingMethod => 'LVSauto2.3',
        samplingEquipment => 'MCZ-PNS-LVS16-seq',
        dataQuality => {
                concentration => 'ng.m-3',
                detectionLimit => 0.0909,
                documentation => 'in progress',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'hour',
                duration_numUnit => 24,
                cadence_unit => 'minute',
                cadence_numUnit => 2
            }
        },
    40  =>{
        code =>'IT2234A_5018_ICP-MS_2015-01-01_00:00:00',
        coord => '45.730659000000003 7.329645',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'industrial',
        distanceSource => 150.0,
        measurementType => 'active',
        samplingMethod => 'LVSauto2.3',
        samplingEquipment => 'MCZ-PNS-LVS16-seq',
        dataQuality => {
                concentration => 'ng.m-3',
                detectionLimit => 0.6,
                documentation => 'in progress',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'hour',
                duration_numUnit => 24,
                cadence_unit => 'minute',
                cadence_numUnit => 2
            }
        },
    41  =>{
        code =>'IT2234A_5029_HPLC-FLD_2015-01-01_00:00:00',
        coord => '45.730659000000003 7.329645',
        inletHeight => 3.5,
        observingTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        stationClassification => 'industrial',
        distanceSource => 150.0,
        measurementType => 'active',
        samplingMethod => 'LVSauto2.3',
        samplingEquipment => 'MCZ-PNS-LVS16-seq',
        dataQuality => {
                concentration => 'ng.m-3',
                detectionLimit => 0.01,
                documentation => 'in progress',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'hour',
                duration_numUnit => 24,
                cadence_unit => 'minute',
                cadence_numUnit => 2
            }
        },
    42  =>{
        code =>'IT0983A_5012_ICP-MS_2015-01-01_00:00:00',
        coord => '45.73583 7.32417',
        inletHeight => 4.0,
        observingTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        mainEmissionSources => '2',
        stationClassification => 'background',
        measurementType => 'active',
        samplingMethod => 'LVSauto2.3',
        samplingEquipment => 'MCZ-PNS-LVS16-seq',
        dataQuality => {
                concentration => 'ng.m-3',
                detectionLimit => 0.0909,
                documentation => 'in progress',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'hour',
                duration_numUnit => 24,
                cadence_unit => 'variable',
                cadence_numUnit => 1
            }
        },
    43  =>{
        code =>'IT0983A_5014_ICP-MS_2015-01-01_00:00:00',
        coord => '45.73583 7.32417',
        inletHeight => 4.0,
        observingTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        mainEmissionSources => '2',
        stationClassification => 'background',
        measurementType => 'active',
        samplingMethod => 'LVSauto2.3',
        samplingEquipment => 'MCZ-PNS-LVS16-seq',
        dataQuality => {
                concentration => 'ng.m-3',
                detectionLimit => 0.0091,
                documentation => 'in progress',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'hour',
                duration_numUnit => 24,
                cadence_unit => 'variable',
                cadence_numUnit => 1
            }
        },
    44  =>{
        code =>'IT0983A_5018_ICP-MS_2015-01-01_00:00:00',
        coord => '45.73583 7.32417',
        inletHeight => 4.0,
        observingTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        activityTime => {
            beginPosition => '2015-01-01T00:00:00.000Z',
            endPosition => undef
        },
        mainEmissionSources => '1A5',
        stationClassification => 'background',
        measurementType => 'active',
        samplingMethod => 'LVSauto2.3',
        samplingEquipment => 'MCZ-PNS-LVS16-seq',
        dataQuality => {
                concentration => 'ng.m-3',
                detectionLimit => 0.2,
                documentation => 'in progress',
                qaReport => 'in preparation'
            },
        timereferences => {
                duration_unit => 'hour',
                duration_numUnit => 24,
                cadence_unit => 'random',
                cadence_numUnit => 1
            }
        }
);

# ##########################################################################