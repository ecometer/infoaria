#!/usr/bin/perl
# ----------------------_-------------------------------------------
#  ___ __ ___ _ __  ___| |_ ___ _ _
# / -_) _/ _ \ '  \/ -_)  _/ -_) '_|
# \___\__\___/_|_|_\___|\__\___|_|   s.n.c.
#
#  Script     : NET_params.pl
#  Author     : Paolo Saudin & Hillary Martello
#  Date       : 2018-03-28
#  Last Edited: 2018-05-31
#  Description: Data input for creation XML dataset D
#  Location   : Arpa vda
# ------------------------------------------------------------------

# ##########################################################################
# ACQUISIZIONE DATI DA DB
our %networks = (
    1   =>{
        flag_changed => 1,
        zoneID => 'IT119A',
        name => 'Aosta Valley Air Quality Network',
        address => 'Loc. Grande Charrière, 44',
        locatorDesignator => 'Saint-Christophe',
        postCode => '11020',
        electronicMailAddress => 'm.zublena@arpa.vda.it',
        telephoneVoice => '+39-0165-278511',
        website => 'http://www.arpa.vda.it',
        responsibleParty => 'Manuela Zublena',
        organisationName => 'ARPA Valle d\'Aosta',
        networkType => 'regional',
        stations => {
            1 => {
                flag_changed => 1,
                stationID => 'IT2233A',
                name => 'Aosta Liconi',
                coord => '45.734305999999997 7.329645',
                beginPosition => '2015-01-01T00:00:00+01:00',
                endPosition => undef,
                dispersionSituation => {
                    dispersionLocal => 'detached',
                    dispersionRegional => 'valley-mount'
                },
                meteoParams => undef,
                mobile => 'false',
                natlStationCode => '200720',
                municipality => 'Via Rue Liconi, 11',
                areaClassification => 'urban',
                altitude => 583.0,
                stationInfo => undef,
                traffic => undef
            },
            2 => {
                flag_changed => 1,
                stationID => 'IT0988A',
                name => 'DONNAS',
                coord => '45.596600000000002 7.76643',
                beginPosition => '1994-10-01T00:00:00+01:00',
                endPosition => undef,
                dispersionSituation => undef,
                meteoParams => [
                    '0.6.1',
                    '0.2.1',
                    '0.2.0',
                    '0.0.0',
                    '0.1.1',
                    '0.4.3',
                    '0.1.52'
                ],
                mobile => 'false',
                natlStationCode => '200708',
                municipality => 'LOC. MONTEY - DONNAS (AO)',
                areaClassification => 'rural',
                altitude => 371.0,
                stationInfo => undef,
                traffic => undef
            },
            3 => {
                flag_changed => 1,
                stationID => 'IT0980A',
                name => 'AOSTA (MONT FLEURY)',
                coord => '45.73028 7.29889',
                beginPosition => '1994-10-01T00:00:00+01:00',
                endPosition => undef,
                dispersionSituation => undef,
                meteoParams => [
                    '0.2.0',
                    '0.2.1',
                    '0.1.1',
                    '0.0.0'
                ],
                mobile => 'false',
                natlStationCode => '200701',
                municipality => 'MONT FLEURY - AOSTA',
                areaClassification => 'suburban',
                altitude => 576.0,
                stationInfo => undef,
                traffic => undef
            },
            4 => {
                flag_changed => 1,
                stationID => 'IT0977A',
                name => 'LA THUILE',
                coord => '45.729170000000003 6.97778',
                beginPosition => '1994-10-01T00:00:00+01:00',
                endPosition => undef,
                dispersionSituation => {
                    dispersionLocal => 'open',
                    dispersionRegional => 'mount-slope'
                },
                meteoParams => [
                    '0.1.52',
                    '0.4.3',
                    '0.2.1',
                    '0.0.0',
                    '0.2.0',
                    '0.6.1',
                    '0.1.1'
                ],
                mobile => 'false',
                natlStationCode => '200710',
                municipality => 'LOC. LES GRANGES - LA THUILE (AO)',
                areaClassification => 'rural-remote',
                altitude => 1640.0,
                stationInfo => undef,
                traffic => undef
            },
            5 => {
                flag_changed => 1,
                stationID => 'IT0983A',
                name => 'AOSTA (PIAZZA PLOUVES)',
                coord => '45.73583 7.32417',
                beginPosition => '1994-10-01T00:00:00+01:00',
                endPosition => undef,
                dispersionSituation => {
                    dispersionLocal => undef,
                    dispersionRegional => 'valley-mount'
                },
                meteoParams => [
                    '0.6.1',
                    '0.4.3',
                    '0.0.0',
                    '0.1.52',
                    '0.2.1',
                    '0.2.0',
                    '0.1.1'
                ],
                mobile => 'false',
                natlStationCode => '200703',
                municipality => 'P.ZA PLOUVES - AOSTA',
                areaClassification => 'urban',
                altitude => 581.0,
                stationInfo => undef,
                traffic => undef
            },
            6 => {
                flag_changed => 1,
                stationID => 'IT2234A',
                name => 'Aosta Col du Mont',
                coord => '45.730659000000003 7.329645',
                beginPosition => '2015-01-01T00:00:00+01:00',
                endPosition => undef,
                dispersionSituation => undef,
                meteoParams => undef,
                mobile => 'false',
                natlStationCode => '200721',
                municipality => 'Via Lavoratori - Vittime del Col du Mont, 28',
                areaClassification => 'suburban',
                altitude => 583.0,
                stationInfo => undef,
                traffic => undef
            }
        },
        samplingPoints => {

            1   =>{
                flag_changed => 1,
                code =>'IT0977A_7_UV-P_1994-10-02_00:00:00',
                coord => '45.729170000000003 6.97778',
                inletHeight => 6.0,
                observingTime => {
                    beginPosition => '1994-10-02T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '1994-10-02T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'automatic',
                equipment => 'API400E',
                zone => 'IT0206',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'LTO',
                        reportingMetric => 'AOT40c',
                        protectionTarget => 'V'
                    },
                    2 => {
                        objectiveType => 'TV',
                        reportingMetric => 'AOT40c-5yr',
                        protectionTarget => 'V'
                    },
                    3 => {
                        objectiveType => 'LTO',
                        reportingMetric => 'daysAbove',
                        protectionTarget => 'H'
                    },
                    4 => {
                        objectiveType => 'TV',
                        reportingMetric => 'daysAbove-3yr',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT0980A_7_UV-P_1996-06-01_00:00:00',
                coord => '45.73028 7.29889',
                inletHeight => 3.5,
                observingTime => {
                    beginPosition => '1996-06-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '1996-06-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'automatic',
                equipment => 'API400A',
                zone => 'IT0206',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'TV',
                        reportingMetric => 'AOT40c-5yr',
                        protectionTarget => 'V'
                    },
                    2 => {
                        objectiveType => 'LTO',
                        reportingMetric => 'daysAbove',
                        protectionTarget => 'H'
                    },
                    3 => {
                        objectiveType => 'TV',
                        reportingMetric => 'daysAbove-3yr',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT0988A_8_chemi_2001-11-15_00:00:00',
                coord => '45.596600000000002 7.76643',
                inletHeight => 6.0,
                observingTime => {
                    beginPosition => '2001-11-15T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2001-11-15T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'automatic',
                equipment => 'API200E',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'LV',
                        reportingMetric => 'hrsAbove',
                        protectionTarget => 'H'
                    },
                    2 => {
                        objectiveType => 'LV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT0988A_38_chemi_2001-11-15_00:00:00',
                coord => '45.596600000000002 7.76643',
                inletHeight => 6.0,
                observingTime => {
                    beginPosition => '2001-11-15T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2001-11-15T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'false',
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
                flag_changed => 1,
                code =>'IT0983A_10_NDIR_1999-01-01_00:00:00',
                coord => '45.73583 7.32417',
                inletHeight => 3.5,
                observingTime => {
                    beginPosition => '1999-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '1999-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'automatic',
                equipment => 'API300',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'LV',
                        reportingMetric => 'daysAbove',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT0983A_21_FID_1996-06-01_00:00:00',
                coord => '45.73583 7.32417',
                inletHeight => 3.5,
                observingTime => {
                    beginPosition => '1996-06-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '1996-06-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'false',
                measurementType => 'automatic',
                dataQuality => {
                        concentration => 'ug.m-3',
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
                flag_changed => 1,
                code =>'IT0977A_9_chemi_2008-01-01_00:00:00',
                coord => '45.729170000000003 6.97778',
                inletHeight => 6.0,
                observingTime => {
                    beginPosition => '2008-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2008-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'automatic',
                equipment => 'API200',
                zone => 'IT0206',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'CL',
                        reportingMetric => 'aMean',
                        protectionTarget => 'V'
                    }
                },
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
                flag_changed => 1,
                code =>'IT0977A_38_chemi_2008-01-01_00:00:00',
                coord => '45.729170000000003 6.97778',
                inletHeight => 6,
                observingTime => {
                    beginPosition => '2008-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2008-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'false',
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
                flag_changed => 1,
                code =>'IT0980A_9_chemi_2007-09-01_00:00:00',
                coord => '45.73028 7.29889',
                inletHeight => 3.5,
                observingTime => {
                    beginPosition => '2007-09-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2007-09-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'false',
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
                flag_changed => 1,
                code =>'IT0980A_38_chemi_2007-09-01_00:00:00',
                coord => '45.73028 7.29889',
                inletHeight => 3.5,
                observingTime => {
                    beginPosition => '2007-09-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2007-09-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'false',
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
                flag_changed => 1,
                code =>'IT0983A_6001_BETA_2012-01-01_00:00:00',
                coord => '45.73583 7.32417',
                inletHeight => 4.0,
                observingTime => {
                    beginPosition => '2012-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2012-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'automatic',
                equipment => 'opsisSM200',
                demonstrationReport => 'http://www.certipedia.com/companies/103405/certificates_by_product?additional_title=OPSIS+SM+200+PM2.5&lt;locale=en&lt;title=Ambient+air+Measurement',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'LV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    },
                    2 => {
                        objectiveType => 'TV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
            12  =>{
                flag_changed => 1,
                code =>'IT0983A_38_chemi_2005-01-27_00:00:00',
                coord => '45.73583 7.32417',
                inletHeight => 3.5,
                observingTime => {
                    beginPosition => '2005-01-27T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2005-01-27T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'false',
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
                flag_changed => 1,
                code =>'IT0983A_78_FID_1996-06-01_00:00:00',
                coord => '45.73583 7.32417',
                inletHeight => 3.5,
                observingTime => {
                    beginPosition => '1996-06-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '1996-06-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'false',
                measurementType => 'automatic',
                equipment => 'GC855BTX',
                dataQuality => {
                        concentration => 'ug.m-3',
                        detectionLimit => 2.0,
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
                flag_changed => 1,
                code =>'IT2233A_5_BETA_2015-01-01_00:00:00',
                coord => '45.734305999999997 7.329645',
                inletHeight => 3.0,
                observingTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                mainEmissionSources => '1A5',
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'automatic',
                equipment => 'opsisSM200',
                demonstrationReport => 'http://www.certipedia.com/companies/103405/certificates_by_product?additional_title=OPSIS+SM+200+PM10&lt;locale=en&lt;title=Ambient+air+Measurement',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'LV',
                        reportingMetric => 'daysAbove',
                        protectionTarget => 'H'
                    },
                    2 => {
                        objectiveType => 'LV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT2233A_8_chemi_2015-01-01_00:00:00',
                coord => '45.734305999999997 7.329645',
                inletHeight => 4.0,
                observingTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                mainEmissionSources => '1A5',
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'automatic',
                equipment => 'API200E',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'LV',
                        reportingMetric => 'hrsAbove',
                        protectionTarget => 'H'
                    },
                    2 => {
                        objectiveType => 'LV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT2233A_7_UV-P_2015-01-01_00:00:00',
                coord => '45.734305999999997 7.329645',
                inletHeight => 3.5,
                observingTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                mainEmissionSources => '1A5',
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'automatic',
                equipment => 'APIT400',
                zone => 'IT0206',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'LTO',
                        reportingMetric => 'daysAbove',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT2233A_5014_ICP-MS_2015-01-01_00:00:00',
                coord => '45.734305999999997 7.329645',
                inletHeight => 3.5,
                observingTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'active',
                samplingMethod => 'LVSauto2.3',
                samplingEquipment => 'MCZ-PNS-LVS16-seq',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'TV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT2233A_5012_ICP-MS_2015-01-01_00:00:00',
                coord => '45.734305999999997 7.329645',
                inletHeight => 3.5,
                observingTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'active',
                samplingMethod => 'LVSauto2.3',
                samplingEquipment => 'MCZ-PNS-LVS16-seq',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'LV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT2234A_8_chemi_2015-01-01_00:00:00',
                coord => '45.730659000000003 7.329645',
                inletHeight => 3.5,
                observingTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'industrial',
                assessmentType => 'fixed',
                usedAQD => 'true',
                distanceSource => 150.0,
                measurementType => 'automatic',
                equipment => 'API200E',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'LV',
                        reportingMetric => 'hrsAbove',
                        protectionTarget => 'H'
                    },
                    2 => {
                        objectiveType => 'LV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT2234A_5012_ICP-MS_2015-01-01_00:00:00',
                coord => '45.730659000000003 7.329645',
                inletHeight => 3.5,
                observingTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'industrial',
                assessmentType => 'fixed',
                usedAQD => 'true',
                distanceSource => 150.0,
                measurementType => 'active',
                samplingMethod => 'LVSauto2.3',
                samplingEquipment => 'MCZ-PNS-LVS16-seq',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'LV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT0983A_5015_ICP-MS_2015-01-01_00:00:00',
                coord => '45.73583 7.32417',
                inletHeight => 4.0,
                observingTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                mainEmissionSources => '2',
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'active',
                samplingMethod => 'LVSauto2.3',
                samplingEquipment => 'MCZ-PNS-LVS16-seq',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'TV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT2233A_5029_HPLC-FLD_2015-01-01_00:00:00',
                coord => '45.734305999999997 7.329645',
                inletHeight => 4.0,
                observingTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                mainEmissionSources => 'other',
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'active',
                samplingMethod => 'LVSauto2.3',
                samplingEquipment => 'MCZ-PNS-LVS16-seq',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'TV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT0988A_7_UV-P_2001-11-15_00:00:00',
                coord => '45.596600000000002 7.76643',
                inletHeight => 6.0,
                observingTime => {
                    beginPosition => '2001-11-15T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2001-11-15T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'automatic',
                equipment => 'API400E',
                zone => 'IT0206',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'TV',
                        reportingMetric => 'AOT40c-5yr',
                        protectionTarget => 'V'
                    },
                    2 => {
                        objectiveType => 'LTO',
                        reportingMetric => 'daysAbove',
                        protectionTarget => 'H'
                    },
                    3 => {
                        objectiveType => 'TV',
                        reportingMetric => 'daysAbove-3yr',
                        protectionTarget => 'H'
                    }
                },
                dataQuality => {
                        concentration => 'ug.m-3',
                        detectionLimit => 1.3,
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
                flag_changed => 1,
                code =>'IT0988A_9_chemi_2001-11-15_00:00:00',
                coord => '45.596600000000002 7.76643',
                inletHeight => 8.0,
                observingTime => {
                    beginPosition => '2001-11-15T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2001-11-15T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'false',
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
                flag_changed => 1,
                code =>'IT0988A_5_BETA_2011-01-01_00:00:00',
                coord => '45.596600000000002 7.76643',
                inletHeight => 6.0,
                observingTime => {
                    beginPosition => '2011-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2011-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'automatic',
                equipment => 'opsisSM200',
                demonstrationReport => 'http://www.certipedia.com/companies/103405/certificates_by_product?additional_title=OPSIS+SM+200+PM10&lt;locale=en&lt;title=Ambient+air+Measurement',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'LV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    },
                    2 => {
                        objectiveType => 'LV',
                        reportingMetric => 'daysAbove',
                        protectionTarget => 'H'
                    }
                },
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
            26  =>{
                flag_changed => 1,
                code =>'IT0983A_7_UV-P_1994-10-02_00:00:00',
                coord => '45.73583 7.32417',
                inletHeight => 3.5,
                observingTime => {
                    beginPosition => '1994-10-02T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '1994-10-02T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'automatic',
                equipment => 'API400A',
                zone => 'IT0206',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'LTO',
                        reportingMetric => 'daysAbove',
                        protectionTarget => 'H'
                    },
                    2 => {
                        objectiveType => 'TV',
                        reportingMetric => 'daysAbove-3yr',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT0983A_20_GC-FID_1996-06-01_00:00:00',
                coord => '45.73583 7.32417',
                inletHeight => 3.5,
                observingTime => {
                    beginPosition => '1996-06-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '1996-06-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification =>'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'automatic',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'LV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
                dataQuality => {
                        concentration => 'ug.m-3',
                        detectionLimit => 0.5,
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
                flag_changed => 1,
                code =>'IT0983A_5029_HPLC-FLD_2005-01-01_00:00:00',
                coord => '45.73583 7.32417',
                inletHeight => 4.0,
                observingTime => {
                    beginPosition => '2005-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2005-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'active',
                samplingMethod => 'LVSauto2.3',
                samplingEquipment => 'MCZ-PNS-LVS16-seq',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'TV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT0983A_5_BETA_2012-01-01_00:00:00',
                coord => '45.73583 7.32417',
                inletHeight => 3.0,
                buildingDist => 20.0,
                kerbDist => 10.0,
                observingTime => {
                    beginPosition => '2012-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2012-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                mainEmissionSources => '1A5',
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                distanceSource => 500.0,
                measurementType => 'automatic',
                equipment => 'opsisSM200',
                demonstrationReport => 'http://www.certipedia.com/companies/103405/certificates_by_product?additional_title=OPSIS+SM+200+PM10&lt;locale=en&lt;title=Ambient+air+Measurement',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'LV',
                        reportingMetric => 'daysAbove',
                        protectionTarget => 'H'
                    },
                    2 => {
                        objectiveType => 'LV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
            30  =>{
                flag_changed => 1,
                code =>'IT0977A_8_chemi_2008-01-01_00:00:00',
                coord => '45.729170000000003 6.97778',
                inletHeight => 6.0,
                observingTime => {
                    beginPosition => '2008-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2008-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'automatic',
                equipment => 'API200E',
                zone => 'IT0205',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'LV',
                        reportingMetric => 'hrsAbove',
                        protectionTarget => 'H'
                    },
                    2 => {
                        objectiveType => 'LV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT0980A_8_chemi_2007-09-01_00:00:00',
                coord => '45.73028 7.29889',
                inletHeight => 3.5,
                observingTime => {
                    beginPosition => '2007-09-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2007-09-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'automatic',
                equipment => 'API200E',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'LV',
                        reportingMetric => 'hrsAbove',
                        protectionTarget => 'H'
                    },
                    2 => {
                        objectiveType => 'LV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT0983A_8_chemi_2005-01-01_00:00:00',
                coord => '45.73583 7.32417',
                inletHeight => 3.5,
                observingTime => {
                    beginPosition => '2005-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2005-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'automatic',
                equipment => 'API200E',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'LV',
                        reportingMetric => 'hrsAbove',
                        protectionTarget => 'H'
                    },
                    2 => {
                        objectiveType => 'LV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT0983A_9_chemi_2005-01-27_00:00:00',
                coord => '45.73583 7.32417',
                inletHeight => 3.5,
                observingTime => {
                    beginPosition => '2005-01-27T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2005-01-27T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'false',
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
                flag_changed => 1,
                code =>'IT2233A_6001_BETA_2015-01-01_00:00:00',
                coord => '45.734305999999997 7.329645',
                inletHeight => 4.0,
                observingTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                mainEmissionSources => '1A5',
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'automatic',
                equipment => 'opsisSM200',
                demonstrationReport => 'http://www.certipedia.com/companies/103405/certificates_by_product?additional_title=OPSIS+SM+200+PM10&lt;locale=en&lt;title=Ambient+air+Measurement',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'LV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    },
                    2 => {
                        objectiveType => 'TV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT2233A_5015_ICP-MS_2015-01-01_00:00:00',
                coord => '45.734305999999997 7.329645',
                inletHeight => 3.5,
                observingTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'active',
                samplingMethod => 'LVSauto2.3',
                samplingEquipment => 'MCZ-PNS-LVS16-seq',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'TV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT2233A_5018_ICP-MS_2015-01-01_00:00:00',
                coord => '45.734305999999997 7.329645',
                inletHeight => 3.5,
                observingTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'active',
                samplingMethod => 'LVSauto2.3',
                samplingEquipment => 'MCZ-PNS-LVS16-seq',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'TV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT2234A_5_BETA_2015-01-01_00:00:00',
                coord => '45.730659000000003 7.329645',
                inletHeight => 3.5,
                observingTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                mainEmissionSources => '2',
                stationClassification => 'industrial',
                assessmentType => 'fixed',
                usedAQD => 'true',
                distanceSource => 150.0,
                measurementType => 'automatic',
                equipment => 'opsisSM200',
                demonstrationReport => 'http://www.certipedia.com/companies/103405/certificates_by_product?additional_title=OPSIS+SM+200+PM10&lt;locale=en&lt;title=Ambient+air+Measurement',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'LV',
                        reportingMetric => 'daysAbove',
                        protectionTarget => 'H'
                    },
                    2 => {
                        objectiveType => 'LV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT2234A_5014_ICP-MS_2015-01-01_00:00:00',
                coord => '45.730659000000003 7.329645',
                inletHeight => 3.5,
                observingTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'industrial',
                assessmentType => 'fixed',
                usedAQD => 'true',
                distanceSource => 150.0,
                measurementType => 'active',
                samplingMethod => 'LVSauto2.3',
                samplingEquipment => 'MCZ-PNS-LVS16-seq',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'TV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT2234A_5015_ICP-MS_2015-01-01_00:00:00',
                coord => '45.730659000000003 7.329645',
                inletHeight => 3.5,
                observingTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'industrial',
                assessmentType => 'fixed',
                usedAQD => 'true',
                distanceSource => 150.0,
                measurementType => 'active',
                samplingMethod => 'LVSauto2.3',
                samplingEquipment => 'MCZ-PNS-LVS16-seq',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'TV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT2234A_5018_ICP-MS_2015-01-01_00:00:00',
                coord => '45.730659000000003 7.329645',
                inletHeight => 3.5,
                observingTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'industrial',
                assessmentType => 'fixed',
                usedAQD => 'true',
                distanceSource => 150.0,
                measurementType => 'active',
                samplingMethod => 'LVSauto2.3',
                samplingEquipment => 'MCZ-PNS-LVS16-seq',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 =>{
                        objectiveType => 'TV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT2234A_5029_HPLC-FLD_2015-01-01_00:00:00',
                coord => '45.730659000000003 7.329645',
                inletHeight => 3.5,
                observingTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                stationClassification => 'industrial',
                assessmentType => 'fixed',
                usedAQD => 'true',
                distanceSource => 150.0,
                measurementType => 'active',
                samplingMethod => 'LVSauto2.3',
                samplingEquipment => 'MCZ-PNS-LVS16-seq',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'TV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT0983A_5012_ICP-MS_2015-01-01_00:00:00',
                coord => '45.73583 7.32417',
                inletHeight => 4.0,
                observingTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                mainEmissionSources => '2',
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'active',
                samplingMethod => 'LVSauto2.3',
                samplingEquipment => 'MCZ-PNS-LVS16-seq',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'LV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT0983A_5014_ICP-MS_2015-01-01_00:00:00',
                coord => '45.73583 7.32417',
                inletHeight => 4.0,
                observingTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                mainEmissionSources => '2',
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'active',
                samplingMethod => 'LVSauto2.3',
                samplingEquipment => 'MCZ-PNS-LVS16-seq',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'TV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
                flag_changed => 1,
                code =>'IT0983A_5018_ICP-MS_2015-01-01_00:00:00',
                coord => '45.73583 7.32417',
                inletHeight => 4.0,
                observingTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                activityTime => {
                    beginPosition => '2015-01-01T00:00:00+01:00',
                    endPosition => undef
                },
                mainEmissionSources => '1A5',
                stationClassification => 'background',
                assessmentType => 'fixed',
                usedAQD => 'true',
                measurementType => 'active',
                samplingMethod => 'LVSauto2.3',
                samplingEquipment => 'MCZ-PNS-LVS16-seq',
                zone => 'IT0204',
                environmentalObjectives => {
                    1 => {
                        objectiveType => 'TV',
                        reportingMetric => 'aMean',
                        protectionTarget => 'H'
                    }
                },
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
            } #chiusura sam
        } #chiusura array samplingPoints
    } #chiusura network
); #chiusura params


