#!/usr/bin/perl
# ----------------------_-------------------------------------------
#  ___ __ ___ _ __  ___| |_ ___ _ _
# / -_) _/ _ \ '  \/ -_)  _/ -_) '_|
# \___\__\___/_|_|_\___|\__\___|_|   s.n.c.
#
#  Script     : XML_generator_Dataset-D.pl
#  Author     : Paolo Saudin & Hillary Martello
#  Date       : 2018-03-28
#  Last Edited: 2018-05-11
#  Description: Create XML elements for dataset D
#  Location   : Arpa vda
# ------------------------------------------------------------------
use Modern::Perl '2017';
use XML::Generator;
use IO::File;
use File::Spec::Functions qw(rel2abs);
use File::Basename;
use Data::GUID;
use Data::Printer;
use Data::Dumper;
use Encode;
use JSON;
use Date::Calc qw(Today_and_Now);


# absolute path
my $abs_path = dirname(rel2abs($0));
our $zoneID;
our %params;
# load library
require "$abs_path/params.pl";
print ("\n-- -------------------------------------------------\n");
print ("Acquisizione dati da file config\n");

# print ($abs_path."/params.pl\n");
# print ($zoneID);


# <codice dataset>_<codice istat regione>_<anno reporting>_<yyyymmddhhMMss>.xml
# G_07_2017_20180109101530.xml
# 02 Valle d'Aosta
# Recupera data & ora
my ($year,$month,$day, $hour,$min,$sec) = Today_and_Now();
$month = sprintf "%02d", $month;
$day   = sprintf "%02d", $day;
$hour  = sprintf "%02d", $hour;
$min   = sprintf "%02d", $min;
$sec   = sprintf "%02d", $sec;
# Crea nome file
my $filename = "D_02_".$year."_".$year.$month.$day.$hour.$min.$sec.".xml";
#my $filename = "output_datasetD.xml";

# Apre stream
my $output = IO::File->new(">$filename");

# Namespaces
my $namespace = [
    gml     =>  "http://www.opengis.net/gml/3.2",
    # vg      =>  "http://www.w3.org/2000/svg",
    # dub     =>  "http://purl.org/dc/elements/1.1/",
    xsi     =>  "http://www.w3.org/2001/XMLSchema-instance",
    aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0",
    base    =>  "http://inspire.ec.europa.eu/schemas/base/3.3",
    base2   =>  "http://inspire.ec.europa.eu/schemas/base2/1.0",
    ef      =>  "http://inspire.ec.europa.eu/schemas/ef/3.0",
    ompr    =>  "http://inspire.ec.europa.eu/schemas/ompr/2.0",
    sam     =>  "http://www.opengis.net/sampling/2.0",
    sams    =>  "http://www.opengis.net/samplingSpatial/2.0",
    xlink   =>  "http://www.w3.org/1999/xlink",
    gmd     =>  "http://www.isotc211.org/2005/gmd",
    gco     =>  "http://www.isotc211.org/2005/gco",
    om      =>  "http://www.opengis.net/om/2.0",
    swe     =>  "http://www.opengis.net/swe/2.0",
    am      =>  "http://inspire.ec.europa.eu/schemas/am/3.0",
    ad      =>  "urn:x-inspire:specification:gmlas:Addresses:3.0",
    gn      =>  "urn:x-inspire:specification:gmlas:GeographicalNames:3.0"];

my $gen = XML::Generator->new(
            pretty      => 4,
            namespace   => [@$namespace],
            conformance => 'strict',
            version     => '1.0',
            enconding   => 'UTF-8');

# ##########################################################################
# CREAZIONE ELEMENTI REPORTING HEADER

my $guid = Data::GUID->new;
$guid = lc $guid->as_string;

my $inspireId_Header =  $gen->inspireId([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                            $gen->Identifier    ([base    =>  "http://inspire.ec.europa.eu/schemas/base/3.3"],
                                $gen->localId   ([base    =>  "http://inspire.ec.europa.eu/schemas/base/3.3"], 'RHE.IT.Dataset.D.2018'),
                                $gen->namespace ([base    =>  "http://inspire.ec.europa.eu/schemas/base/3.3"],'IT.ISPRA.AQD'),
                                $gen->versionId ([base    =>  "http://inspire.ec.europa.eu/schemas/base/3.3"], $guid)
                            )
                        );

my $contact_Header = $gen->contact([base2   =>  "http://inspire.ec.europa.eu/schemas/base2/1.0"],
                $gen->Contact([base2   =>  "http://inspire.ec.europa.eu/schemas/base2/1.0"],
                    $gen->address([base2   =>  "http://inspire.ec.europa.eu/schemas/base2/1.0"],
                        $gen->AddressRepresentation([ad => "urn:x-inspire:specification:gmlas:Addresses:3.0"],
                            $gen->adminUnit([ad => "urn:x-inspire:specification:gmlas:Addresses:3.0"],
                                $gen->GeographicalName([gn      =>  "urn:x-inspire:specification:gmlas:GeographicalNames:3.0"],
                                    $gen->language      ([gn      =>  "urn:x-inspire:specification:gmlas:GeographicalNames:3.0"], 'ita'),
                                    $gen->nativeness    ([gn      =>  "urn:x-inspire:specification:gmlas:GeographicalNames:3.0"], 'ita'),
                                    $gen->nameStatus    ([gn      =>  "urn:x-inspire:specification:gmlas:GeographicalNames:3.0"], {'nilReason' => "missing", 'xsi:nil' => "true"}),
                                    $gen->sourceOfName  ([gn      =>  "urn:x-inspire:specification:gmlas:GeographicalNames:3.0"], {'nilReason' => "missing", 'xsi:nil' => "true"}),
                                    $gen->pronunciation ([gn      =>  "urn:x-inspire:specification:gmlas:GeographicalNames:3.0"], {'nilReason' => "missing", 'xsi:nil' => "true"}),
                                    $gen->spelling      ([gn      =>  "urn:x-inspire:specification:gmlas:GeographicalNames:3.0"],
                                        $gen->SpellingOfName([gn      =>  "urn:x-inspire:specification:gmlas:GeographicalNames:3.0"],
                                            $gen->text      ([gn      =>  "urn:x-inspire:specification:gmlas:GeographicalNames:3.0"], 'Via Cristoforo Colombo, n. 44 00147 - Roma (Italia)'),
                                            $gen->script    ([gn      =>  "urn:x-inspire:specification:gmlas:GeographicalNames:3.0"], 'Latin')
                                        )
                                    )
                                )
                            ),
                            $gen->locatorDesignator([ad => "urn:x-inspire:specification:gmlas:Addresses:3.0"], 'Roma'),
                            $gen->postCode([ad => "urn:x-inspire:specification:gmlas:Addresses:3.0"], '00147')
                        )
                    ),
                    $gen->electronicMailAddress([base2   =>  "http://inspire.ec.europa.eu/schemas/base2/1.0"], 'RIN-UDG@minambiente.it'),
                    $gen->telephoneVoice([base2   =>  "http://inspire.ec.europa.eu/schemas/base2/1.0"], '+39 06/57228615'),
                    $gen->website([base2   =>  "http://inspire.ec.europa.eu/schemas/base2/1.0"], 'www.minambiente.it')
                )
            );

my $reportingAuthority_Header = $gen->reportingAuthority([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                                    $gen->RelatedParty([base2   =>  "http://inspire.ec.europa.eu/schemas/base2/1.0"],
                                        $gen->individualName([base2   =>  "http://inspire.ec.europa.eu/schemas/base2/1.0"],
                                            $gen->PT_FreeText([gmd     =>  "http://www.isotc211.org/2005/gmd"],
                                                $gen->textGroup([gmd     =>  "http://www.isotc211.org/2005/gmd"],
                                                    $gen->LocalisedCharacterString([gmd     =>  "http://www.isotc211.org/2005/gmd"], 'Dott. Mariano Grillo')
                                                )
                                            )
                                        ),
                                        $gen->organisationName([base2   =>  "http://inspire.ec.europa.eu/schemas/base2/1.0"],
                                            $gen->PT_FreeText([gmd     =>  "http://www.isotc211.org/2005/gmd"],
                                                $gen->textGroup([gmd     =>  "http://www.isotc211.org/2005/gmd"],
                                                    $gen->LocalisedCharacterString([gmd     =>  "http://www.isotc211.org/2005/gmd"], 'Ministero dell\'Ambiente e della Tutela del Territorio e del Mare')
                                                )
                                            )
                                        ),
                                        $contact_Header
                                    )
                                );

$guid = Data::GUID->new;
$guid = lc $guid->as_string;

my $reportingPeriod_Header = $gen->reportingPeriod([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                            $gen->TimePeriod(
                                {'gml:id' => 'RHE.TP.'.$guid},
                                $gen->beginPosition(),
                                $gen->endPosition()
                            )
                        );
# ##########################################################################
# CREAZIONE NETWORK FEATURE

# <aqd:AQD_Network gml:id="NET.IT119A">
#     <ef:inspireId>
#         <base:Identifier>
#             <base:localId>NET.IT119A</base:localId>
#             <base:namespace>IT.ISPRA.AQD</base:namespace>
#             <base:versionId>-1</base:versionId>
#         </base:Identifier>
#     </ef:inspireId>
#     <ef:name>Aosta Valley Air Quality Network</ef:name>
#     <ef:mediaMonitored xlink:href="http://inspire.ec.europa.eu/codelist/MediaValue/air" />
#     <ef:responsibleParty>
#         <base2:RelatedParty>
#             <base2:individualName>
#                 <gmd:PT_FreeText>
#                     <gmd:textGroup>
#                         <gmd:LocalisedCharacterString>Manuela Zublena</gmd:LocalisedCharacterString>
#                     </gmd:textGroup>
#                 </gmd:PT_FreeText>
#             </base2:individualName>
#             <base2:organisationName>
#                 <gmd:PT_FreeText>
#                     <gmd:textGroup>
#                         <gmd:LocalisedCharacterString>ARPA Valle d'Aosta</gmd:LocalisedCharacterString>
#                     </gmd:textGroup>
#                 </gmd:PT_FreeText>
#             </base2:organisationName>
#             <base2:contact>
#                 <base2:Contact>
#                     <base2:address>
#                         <ad:AddressRepresentation>
#                             <ad:adminUnit>
#                                 <gn:GeographicalName>
#                                     <gn:language>ita</gn:language>
#                                     <gn:nativeness>ita</gn:nativeness>
#                                     <gn:nameStatus nilReason="missing" xsi:nil="true" />
#                                     <gn:sourceOfName nilReason="missing" xsi:nil="true" />
#                                     <gn:pronunciation nilReason="missing" xsi:nil="true" />
#                                     <gn:spelling>
#                                         <gn:SpellingOfName>
#                                             <gn:text>Loc. Grande Charrière, 44</gn:text>
#                                             <gn:script>Latin</gn:script>
#                                         </gn:SpellingOfName>
#                                     </gn:spelling>
#                                 </gn:GeographicalName>
#                             </ad:adminUnit>
#                             <ad:locatorDesignator>Saint Christophe</ad:locatorDesignator>
#                             <ad:postCode>11020</ad:postCode>
#                         </ad:AddressRepresentation>
#                     </base2:address>
#                     <base2:electronicMailAddress>m.zublena@arpa.vda.it</base2:electronicMailAddress>
#                     <base2:telephoneVoice>+39-0165-278511</base2:telephoneVoice>
#                     <base2:website>http://www.arpa.vda.it</base2:website>
#                 </base2:Contact>
#             </base2:contact>
#         </base2:RelatedParty>
#     </ef:responsibleParty>
#     <ef:organisationLevel xsi:nil="true" nilReason="missing"/>
#     <aqd:networkType xlink:href="http://dd.eionet.europa.eu/vocabulary/aq/networktype/regional" />
#     <aqd:operationActivityPeriod>
#         <gml:TimePeriod gml:id="NET.TP.229ff093-1c66-4def-bf12-93b640064efb">
#             <gml:beginPosition>1994-10-01T00:00:00.000Z</gml:beginPosition>
#             <gml:endPosition indeterminatePosition="unknown" />
#         </gml:TimePeriod>
#     </aqd:operationActivityPeriod>
#     <aqd:aggregationTimeZone xlink:href="http://dd.eionet.europa.eu/vocabulary/aq/timezone/UTC+01" />
# </aqd:AQD_Network>

$guid = Data::GUID->new;
$guid = lc $guid->as_string;

my $inspireId_Network =  $gen->inspireId([ef      =>  "http://inspire.ec.europa.eu/schemas/ef/3.0"],
                            $gen->Identifier    ([base    =>  "http://inspire.ec.europa.eu/schemas/base/3.3"],
                                $gen->localId   ([base    =>  "http://inspire.ec.europa.eu/schemas/base/3.3"], 'NET.'.$zoneID),
                                $gen->namespace ([base    =>  "http://inspire.ec.europa.eu/schemas/base/3.3"],'IT.ISPRA.AQD'),
                                $gen->versionId ([base    =>  "http://inspire.ec.europa.eu/schemas/base/3.3"], -1)
                            )
                        );

my $contact = $gen->contact([base2   =>  "http://inspire.ec.europa.eu/schemas/base2/1.0"],
                $gen->Contact([base2   =>  "http://inspire.ec.europa.eu/schemas/base2/1.0"],
                    $gen->address([base2   =>  "http://inspire.ec.europa.eu/schemas/base2/1.0"],
                        $gen->AddressRepresentation([ad => "urn:x-inspire:specification:gmlas:Addresses:3.0"],
                            $gen->adminUnit([ad => "urn:x-inspire:specification:gmlas:Addresses:3.0"],
                                $gen->GeographicalName([gn      =>  "urn:x-inspire:specification:gmlas:GeographicalNames:3.0"],
                                    $gen->language      ([gn      =>  "urn:x-inspire:specification:gmlas:GeographicalNames:3.0"], 'ita'),
                                    $gen->nativeness    ([gn      =>  "urn:x-inspire:specification:gmlas:GeographicalNames:3.0"], 'ita'),
                                    $gen->nameStatus    ([gn      =>  "urn:x-inspire:specification:gmlas:GeographicalNames:3.0"], {'nilReason' => "missing", 'xsi:nil' => "true"}),
                                    $gen->sourceOfName  ([gn      =>  "urn:x-inspire:specification:gmlas:GeographicalNames:3.0"], {'nilReason' => "missing", 'xsi:nil' => "true"}),
                                    $gen->pronunciation ([gn      =>  "urn:x-inspire:specification:gmlas:GeographicalNames:3.0"], {'nilReason' => "missing", 'xsi:nil' => "true"}),
                                    $gen->spelling      ([gn      =>  "urn:x-inspire:specification:gmlas:GeographicalNames:3.0"],
                                        $gen->SpellingOfName([gn      =>  "urn:x-inspire:specification:gmlas:GeographicalNames:3.0"],
                                            $gen->text      ([gn      =>  "urn:x-inspire:specification:gmlas:GeographicalNames:3.0"], 'Loc. Grande Charrière, 44'),
                                            $gen->script    ([gn      =>  "urn:x-inspire:specification:gmlas:GeographicalNames:3.0"], 'Latin')
                                        )
                                    )
                                )
                            ),
                            $gen->locatorDesignator([ad => "urn:x-inspire:specification:gmlas:Addresses:3.0"], 'Saint-Christophe'),
                            $gen->postCode([ad => "urn:x-inspire:specification:gmlas:Addresses:3.0"], '11020')
                        )
                    ),
                    $gen->electronicMailAddress([base2   =>  "http://inspire.ec.europa.eu/schemas/base2/1.0"], 'm.zublena@arpa.vda.it'),
                    $gen->telephoneVoice([base2   =>  "http://inspire.ec.europa.eu/schemas/base2/1.0"], '+39-0165-278511'),
                    $gen->website([base2   =>  "http://inspire.ec.europa.eu/schemas/base2/1.0"], 'http://www.arpa.vda.it')
                )
            );

my $responsibleParty = $gen->responsibleParty([ef      =>  "http://inspire.ec.europa.eu/schemas/ef/3.0"],
                            $gen->RelatedParty([base2   =>  "http://inspire.ec.europa.eu/schemas/base2/1.0"],
                                $gen->individualName([base2   =>  "http://inspire.ec.europa.eu/schemas/base2/1.0"],
                                    $gen->PT_FreeText([gmd     =>  "http://www.isotc211.org/2005/gmd"],
                                        $gen->textGroup([gmd     =>  "http://www.isotc211.org/2005/gmd"],
                                            $gen->LocalisedCharacterString([gmd     =>  "http://www.isotc211.org/2005/gmd"], 'Manuela Zublena')
                                        )
                                    )
                                ),
                                $gen->organisationName([base2   =>  "http://inspire.ec.europa.eu/schemas/base2/1.0"],
                                    $gen->PT_FreeText([gmd     =>  "http://www.isotc211.org/2005/gmd"],
                                        $gen->textGroup([gmd     =>  "http://www.isotc211.org/2005/gmd"],
                                            $gen->LocalisedCharacterString([gmd     =>  "http://www.isotc211.org/2005/gmd"], 'ARPA Valle d\'Aosta')
                                        )
                                    )
                                ),
                                $contact
                            )
                        );


$guid = Data::GUID->new;
$guid = lc $guid->as_string;

my $operationActivityPeriod = $gen->operationActivityPeriod([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                            $gen->TimePeriod(
                                {'gml:id' => 'NET.TP.'.$guid},
                                $gen->beginPosition('1994-10-01T00:00:00.000Z'),
                                $gen->endPosition({'indeterminatePosition' => "unknown"})
                            )
                        );


my $AQD_Network= $gen->AQD_Network([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                    $inspireId_Network,
                    $gen->name([ef      =>  "http://inspire.ec.europa.eu/schemas/ef/3.0"], 'Aosta Valley Air Quality Network'),
                    $gen->mediaMonitored([ef      =>  "http://inspire.ec.europa.eu/schemas/ef/3.0"], {'xlink:href' => "http://inspire.ec.europa.eu/codelist/MediaValue/air"}),
                    $responsibleParty,
                    $gen->organisationLevel([ef      =>  "http://inspire.ec.europa.eu/schemas/ef/3.0"], {'xsi:nil' => "true", 'nilReason' => "missing"}),
                    $gen->networkType([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], {'xlink:href' => "http://dd.eionet.europa.eu/vocabulary/aq/networktype/regional"}),
                    $operationActivityPeriod,
                    $gen->aggregationTimeZone([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], {'xlink:href' => "http://dd.eionet.europa.eu/vocabulary/aq/timezone/UTC+01"})
                );



# ##########################################################################
# CREAZIONE ARRAY SAM, SPO E SPP

# <gml:featureMember>
#     <aqd:AQD_Sample gml:id="SAM.IT0980A_7_UV-P_1996-06-01_00-00-00">
#         <sam:sampledFeature xsi:nil="true" nilReason="unknown"/>
#         <sams:shape>
#             <gml:Point gml:id="SAM.PT.9da54ea6-b8c6-4ffe-8252-03291a0fcee6" srsName="urn:ogc:def:crs:EPSG::4326">
#                 <gml:pos srsDimension="2">45.73028 7.29889</gml:pos>
#             </gml:Point>
#         </sams:shape>
#         <aqd:inspireId>
#             <base:Identifier>
#                 <base:localId>SAM.IT0980A_7_UV-P_1996-06-01_00:00:00</base:localId>
#                 <base:namespace>IT.ISPRA.AQD</base:namespace>
#                 <base:versionId>-1</base:versionId>
#             </base:Identifier>
#         </aqd:inspireId>
#         <aqd:inletHeight uom="http://dd.eionet.europa.eu/vocabulary/uom/length/m">3.5</aqd:inletHeight>
#     </aqd:AQD_Sample>
# </gml:featureMember>

# <gml:featureMember>
#     <aqd:AQD_SamplingPoint gml:id="SPO.IT0977A_7_UV-P_1994-10-02_00-00-00">
#         <ef:inspireId>
#             <base:Identifier>
#                 <base:localId>SPO.IT0977A_7_UV-P_1994-10-02_00:00:00</base:localId>
#                 <base:namespace>IT.ISPRA.AQD</base:namespace>
#                 <base:versionId>-1</base:versionId>
#             </base:Identifier>
#         </ef:inspireId>
#         <ef:name>IT0977A_7_UV-P_1994-10-02_00:00:00</ef:name>
#         <ef:mediaMonitored xlink:href="http://inspire.ec.europa.eu/codeList/MediaValue/air"/>
#         <ef:geometry>
#             <gml:Point gml:id="SPO.PT.25e664b0-1189-4a14-b7de-32f0ca8891c6" srsName="urn:ogc:def:crs:EPSG::4326">
#                 <gml:pos srsDimension="2">45.729170000000003 6.97778</gml:pos>
#             </gml:Point>
#         </ef:geometry>
#         <ef:observingCapability>
#             <ef:ObservingCapability gml:id="SPO.OC.692ca8ee-8a78-4441-a826-6a2fcbc72260">
#                 <ef:observingTime>
#                     <gml:TimePeriod gml:id="SPO.TP.efef98fc-159c-4ff9-9fb0-88145d97c075">
#                         <gml:beginPosition>1994-10-02T00:00:00.000Z</gml:beginPosition>
#                         <gml:endPosition indeterminatePosition="unknown" />
#                     </gml:TimePeriod>
#                 </ef:observingTime>
#                 <ef:processType xlink:href="http://inspire.ec.europa.eu/codeList/ProcessTypeValue/process"/>
#                 <ef:resultNature xlink:href="http://inspire.ec.europa.eu/codeList/ResultNatureValue/primary"/>
#                 <ef:procedure xlink:href="IT.ISPRA.AQD/SPP.IT0977A_7_UV-P_1994-10-02_00:00:00"/>
#                 <ef:featureOfInterest xlink:href="IT.ISPRA.AQD/SAM.IT0977A_7_UV-P_1994-10-02_00:00:00"/>
#                 <ef:observedProperty xlink:href="http://dd.eionet.europa.eu/vocabulary/aq/pollutant/7"/>
#             </ef:ObservingCapability>
#         </ef:observingCapability>
#         <ef:measurementRegime xlink:href="http://inspire.ec.europa.eu/codeList/MeasurementRegimeValue/continuousDataCollection"/>
#         <ef:mobile>false</ef:mobile>
#         <ef:operationalActivityPeriod>
#             <ef:OperationalActivityPeriod gml:id="SPO.OP.61e088e0-ed08-469d-9463-bc69db21f92f">
#                 <ef:activityTime>
#                     <gml:TimePeriod gml:id="SPO.TP.7946afe1-4d84-40a6-a154-f4333f68907b">
#                         <gml:beginPosition>1994-10-02T00:00:00.000Z</gml:beginPosition>
#                         <gml:endPosition indeterminatePosition="unknown" />
#                     </gml:TimePeriod>
#                 </ef:activityTime>
#             </ef:OperationalActivityPeriod>
#         </ef:operationalActivityPeriod>
#         <ef:belongsTo xlink:href="IT.ISPRA.AQD/NET.IT119A"/>
#         <aqd:relevantEmissions>
#             <aqd:RelevantEmissions>
#                 <aqd:stationClassification xlink:href="http://dd.eionet.europa.eu/vocabulary/aq/stationclassification/background"/>
#             </aqd:RelevantEmissions>
#         </aqd:relevantEmissions>
#         <aqd:reportingDB></aqd:reportingDB>
#         <aqd:reportingDBOther></aqd:reportingDBOther>
#     </aqd:AQD_SamplingPoint>
# </gml:featureMember>

# <gml:featureMember>
#     <aqd:AQD_SamplingPointProcess gml:id="SPP.IT0977A_7_UV-P_1994-10-02_00-00-00">
#         <ompr:inspireId>
#             <base:Identifier>
#                 <base:localId>SPP.IT0977A_7_UV-P_1994-10-02_00:00:00</base:localId>
#                 <base:namespace>IT.ISPRA.AQD</base:namespace>
#                 <base:versionId>-1</base:versionId>
#             </base:Identifier>
#         </ompr:inspireId>
#         <ompr:type>Ambient air quality measurement instrument configuration</ompr:type>
#         <ompr:responsibleParty xsi:nil="true"/>
#         <aqd:measurementType xlink:href="http://dd.eionet.europa.eu/vocabulary/aq/measurementtype/automatic"/>
#         <aqd:measurementMethod>
#             <aqd:MeasurementMethod>
#                 <aqd:measurementMethod xlink:href="http://dd.eionet.europa.eu/vocabulary/aq/measurementmethod/UV-P"/>
#             </aqd:MeasurementMethod>
#         </aqd:measurementMethod>
#         <aqd:measurementEquipment>
#             <aqd:MeasurementEquipment>
#                 <aqd:equipment xlink:href="http://dd.eionet.europa.eu/vocabulary/aq/measurementequipment/API400E"/>
#             </aqd:MeasurementEquipment>
#         </aqd:measurementEquipment>
#         <aqd:equivalenceDemonstration>
#             <aqd:EquivalenceDemonstration>
#                 <aqd:equivalenceDemonstrated xlink:href="http://dd.eionet.europa.eu/vocabulary/aq/equivalencedemonstrated/ref"/>
#             </aqd:EquivalenceDemonstration>
#         </aqd:equivalenceDemonstration>
#         <aqd:dataQuality>
#             <aqd:DataQuality>
#                 <aqd:detectionLimit uom="http://dd.eionet.europa.eu/vocabulary/uom/concentration/ug.m-3">1.2</aqd:detectionLimit>
#                 <aqd:documentation>999</aqd:documentation>
#                 <aqd:qaReport>in preparation</aqd:qaReport>
#             </aqd:DataQuality>
#         </aqd:dataQuality>
#         <aqd:duration>
#             <aqd:TimeReferences>
#                 <aqd:unit xlink:href="http://dd.eionet.europa.eu/vocabulary/uom/time/continuous"/>
#                 <aqd:numUnits>1</aqd:numUnits>
#             </aqd:TimeReferences>
#         </aqd:duration>
#         <aqd:cadence>
#             <aqd:TimeReferences>
#                 <aqd:unit xlink:href="http://dd.eionet.europa.eu/vocabulary/uom/time/second"/>
#                 <aqd:numUnits>2</aqd:numUnits>
#             </aqd:TimeReferences>
#         </aqd:cadence>
#     </aqd:AQD_SamplingPointProcess>
# </gml:featureMember>

my @array_contents_SAM;
my @array_contents_SPO;
my @array_contents_SPP;

my @array_feautureMembers_SAM;
my @array_feautureMembers_SPO;
my @array_feautureMembers_SPP;

# code
# mainEmissionSources
# stationClassification
# distanceSource
print ("Creazione elementi per Sampling Point\n");
print ("-- -------------------------------------------------\n\n");
foreach my $key (sort { $a <=> $b } keys %params){
    print($key. " - ");
    # IT0983A_9_chemi_2005-01-27_00-00-00
    print($params{$key}{code}."\n");
    my $code = $params{$key}{code};

    my ($pollutant_code) = $code =~ /_(\d*)_/;
    my ($meas_method) = $code =~ /IT\w*_\d*_(.*)_.*_.*/;

    my $inspireId_feauture_SAM =  $gen->inspireId([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                                $gen->Identifier    ([base    =>  "http://inspire.ec.europa.eu/schemas/base/3.3"],
                                    $gen->localId   ([base    =>  "http://inspire.ec.europa.eu/schemas/base/3.3"], 'SAM.'.$code),
                                    $gen->namespace ([base    =>  "http://inspire.ec.europa.eu/schemas/base/3.3"],'IT.ISPRA.AQD'),
                                    $gen->versionId ([base    =>  "http://inspire.ec.europa.eu/schemas/base/3.3"], -1)
                                )
                            );
    $guid = Data::GUID->new;
    $guid = lc $guid->as_string;

    # @Test
    my $shape_SAM = $gen->shape([sams    =>  "http://www.opengis.net/samplingSpatial/2.0"],
                        $gen->Point({'gml:id' => "SAM.PT.".$guid, 'srsName' => "urn:ogc:def:crs:EPSG::4326"},
                            $gen->pos({'srsDimension' => "2"}, $params{$key}{coord}),
                        )
                    );

    # @Test
    my $feauture_SAM = $gen->featureMember(
                            $gen->AQD_Sample([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                                {'gml:id' => "SAM.".$code},
                                $gen->sampledFeature([sam     =>  "http://www.opengis.net/sampling/2.0"], {'xsi:nil' => "true", 'nilReason' => "unknown"}),
                                $shape_SAM,
                                $inspireId_feauture_SAM,
                                $gen->inletHeight([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], {'uom' => "http://dd.eionet.europa.eu/vocabulary/uom/length/m"}, $params{$key}{inletHeight}),
                                defined $params{$key}{buildingDist} ? $gen->buildingDistance([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], {'uom' => "http://dd.eionet.europa.eu/vocabulary/uom/length/m"}, $params{$key}{buildingDist}) : undef,
                                defined $params{$key}{kerbDist}     ? $gen->kerbDistance([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], {'uom' => "http://dd.eionet.europa.eu/vocabulary/uom/length/m"}, $params{$key}{kerbDist}) : undef
                            )
                        );

    my $inspireId_feauture_SPO =  $gen->inspireId([ef      =>  "http://inspire.ec.europa.eu/schemas/ef/3.0"],
                                    $gen->Identifier    ([base    =>  "http://inspire.ec.europa.eu/schemas/base/3.3"],
                                        $gen->localId   ([base    =>  "http://inspire.ec.europa.eu/schemas/base/3.3"], 'SPO.'.$code),
                                        $gen->namespace ([base    =>  "http://inspire.ec.europa.eu/schemas/base/3.3"],'IT.ISPRA.AQD'),
                                        $gen->versionId ([base    =>  "http://inspire.ec.europa.eu/schemas/base/3.3"], -1)
                                    )
                                );

    # @Test
    my $geometry_SPO = $gen->geometry([ef      =>  "http://inspire.ec.europa.eu/schemas/ef/3.0"],
                        $gen->Point({'gml:id' => "SPO.PT.".$guid, 'srsName' => "urn:ogc:def:crs:EPSG::4326"},
                            $gen->pos({'srsDimension' => "2"}, $params{$key}{coord}),
                        )
                    );
    my $guid_OC = Data::GUID->new;
    $guid_OC = lc $guid_OC->as_string;

    my $guid_TP = Data::GUID->new;
    $guid_TP = lc $guid_TP->as_string;

    my $observingCapability_SPO = $gen->observingCapability([ef      =>  "http://inspire.ec.europa.eu/schemas/ef/3.0"],
                                $gen->ObservingCapability([ef      =>  "http://inspire.ec.europa.eu/schemas/ef/3.0"],
                                    {'gml:id' => "SPO.OC.".$guid_OC},
                                    $gen->observingTime([ef      =>  "http://inspire.ec.europa.eu/schemas/ef/3.0"],
                                        $gen->TimePeriod({'gml:id' => "SPO.TP.".$guid_TP},
                                            $gen->beginPosition($params{$key}{observingTime}{beginPosition}),
                                            defined $params{$key}{observingTime}{endPosition} ? $gen->endPosition($params{$key}{observingTime}{endPosition}) : $gen->endPosition({'indeterminatePosition' => "unknown"}),
                                        )
                                    ),
                                    $gen->processType([ef      =>  "http://inspire.ec.europa.eu/schemas/ef/3.0"], {'xlink:href' => "http://inspire.ec.europa.eu/codeList/ProcessTypeValue/process"}),
                                    $gen->resultNature([ef      =>  "http://inspire.ec.europa.eu/schemas/ef/3.0"], {'xlink:href' => "http://inspire.ec.europa.eu/codeList/ResultNatureValue/primary"}),
                                    $gen->procedure([ef      =>  "http://inspire.ec.europa.eu/schemas/ef/3.0"], {'xlink:href' => "IT.ISPRA.AQD/SPP.".$code}),
                                    $gen->featureOfInterest([ef      =>  "http://inspire.ec.europa.eu/schemas/ef/3.0"], {'xlink:href' => "IT.ISPRA.AQD/SAM.".$code}),
                                    $gen->observedProperty([ef      =>  "http://inspire.ec.europa.eu/schemas/ef/3.0"], {'xlink:href' => "http://dd.eionet.europa.eu/vocabulary/aq/pollutant/".$pollutant_code})
                                )
                            );

    my $guid_OP = Data::GUID->new;
    $guid_OP = lc $guid_OP->as_string;

    $guid_TP = Data::GUID->new;
    $guid_TP = lc $guid_TP->as_string;

    # @test
    my $operationalActivityPeriod_SPO = $gen->operationalActivityPeriod([ef      =>  "http://inspire.ec.europa.eu/schemas/ef/3.0"],
                                            $gen->OperationalActivityPeriod([ef      =>  "http://inspire.ec.europa.eu/schemas/ef/3.0"],
                                                {'gml:id' => "SPO.OP.".$guid_OP},
                                                $gen->activityTime([ef      =>  "http://inspire.ec.europa.eu/schemas/ef/3.0"],
                                                    $gen->TimePeriod({'gml:id' => "SPO.TP.".$guid_TP},
                                                        $gen->beginPosition($params{$key}{activityTime}{beginPosition}),
                                                        defined $params{$key}{activityTime}{endPosition} ? $gen->endPosition($params{$key}{activityTime}{endPosition}) : $gen->endPosition({'indeterminatePosition' => "unknown"})
                                                    )
                                                )
                                            )
                                        );



    my $feauture_SPO = $gen->featureMember(
                            $gen->AQD_SamplingPoint([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                                {'gml:id' => "SPO.".$code},
                                $inspireId_feauture_SPO,
                                $gen->name([ef      =>  "http://inspire.ec.europa.eu/schemas/ef/3.0"], $code),
                                $gen->mediaMonitored([ef      =>  "http://inspire.ec.europa.eu/schemas/ef/3.0"], {'xlink:href' => "http://inspire.ec.europa.eu/codeList/MediaValue/air"}),
                                $geometry_SPO,
                                $observingCapability_SPO,
                                $gen->measurementRegime([ef      =>  "http://inspire.ec.europa.eu/schemas/ef/3.0"], {'xlink:href' => "http://inspire.ec.europa.eu/codeList/MeasurementRegimeValue/continuousDataCollection"}),
                                $gen->mobile([ef      =>  "http://inspire.ec.europa.eu/schemas/ef/3.0"], 'false'),
                                $operationalActivityPeriod_SPO,
                                $gen->belongsTo([ef      =>  "http://inspire.ec.europa.eu/schemas/ef/3.0"], {'xlink:href' => "IT.ISPRA.AQD/NET.".$zoneID}),
                                $gen->relevantEmissions([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                                    $gen->RelevantEmissions([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                                        # $gen->distanceSource([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], {'uom' => "http://dd.eionet.europa.eu/vocabulary/uom/length/m"}, 150.0),
                                        defined $params{$key}{mainEmissionSources} ? $gen->mainEmissionSources([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], {'xlink:href' => "http://dd.eionet.europa.eu/vocabulary/aq/emissionsource/".$params{$key}{mainEmissionSources}}) : undef,
                                        defined $params{$key}{distanceSource} ? $gen->distanceSource([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], {'uom' => "http://dd.eionet.europa.eu/vocabulary/uom/length/m"}, $params{$key}{distanceSource}) : undef,
                                        defined $params{$key}{stationClassification} ? $gen->stationClassification([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], {'xlink:href' => "http://dd.eionet.europa.eu/vocabulary/aq/stationclassification/".$params{$key}{stationClassification}}) : undef
                                    )
                                ),
                                $gen->reportingDB([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"]),
                                $gen->reportingDBOther([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"])
                            )
                        );



    my $inspireId_feauture_SPP =  $gen->inspireId([ompr    =>  "http://inspire.ec.europa.eu/schemas/ompr/2.0"],
                                    $gen->Identifier    ([base    =>  "http://inspire.ec.europa.eu/schemas/base/3.3"],
                                        $gen->localId   ([base    =>  "http://inspire.ec.europa.eu/schemas/base/3.3"], 'SPO.'.$code),
                                        $gen->namespace ([base    =>  "http://inspire.ec.europa.eu/schemas/base/3.3"],'IT.ISPRA.AQD'),
                                        $gen->versionId ([base    =>  "http://inspire.ec.europa.eu/schemas/base/3.3"], -1)
                                    )
                                );
    #
    # Costruzione diversa a seconda che measurementType sia automatic/remote o active/passive
    #
    my @array_objects_measurement_SPP;
    if($params{$key}{measurementType} eq 'automatic' || $params{$key}{measurementType} eq 'remote'){

        my $measurementMethod_SPP = $gen->measurementMethod([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                                $gen->MeasurementMethod([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                                    $gen->measurementMethod([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], {'xlink:href' => "http://dd.eionet.europa.eu/vocabulary/aq/measurementmethod/".$meas_method})
                                )
                            );

        push @array_objects_measurement_SPP, $measurementMethod_SPP;

        if (defined $params{$key}{equipment}){
            my $measurementEquipment_SPP = $gen->measurementEquipment([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                                        $gen->MeasurementEquipment([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                                            $gen->equipment([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], {'xlink:href' => "http://dd.eionet.europa.eu/vocabulary/aq/measurementequipment/".$params{$key}{equipment}})
                                        )
                                    );
            push @array_objects_measurement_SPP, $measurementEquipment_SPP;
        }
    }
    elsif($params{$key}{measurementType} eq 'active' || $params{$key}{measurementType} eq 'passive'){

        my $samplingMethod_SPP = $gen->samplingMethod([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                $gen->SamplingMethod([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                    $gen->samplingMethod([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], {'xlink:href' => "http://dd.eionet.europa.eu/vocabulary/aq/samplingmethod/".$params{$key}{samplingMethod}})
                )
            );

        my $analyticalTechnique_SPP = $gen->analyticalTechnique([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                $gen->AnalyticalTechnique([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                    $gen->analyticalTechnique([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], {'xlink:href' => "http://dd.eionet.europa.eu/vocabulary/aq/analyticaltechnique/".$meas_method})
                )
            );

        my $samplingEquipment_SPP = $gen->samplingEquipment([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                $gen->SamplingEquipment([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                    $gen->SamplingEquipment([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], {'xlink:href' => "http://dd.eionet.europa.eu/vocabulary/aq/samplingequipment/".$params{$key}{samplingEquipment}})
                )
            );

        push @array_objects_measurement_SPP, $samplingMethod_SPP;
        push @array_objects_measurement_SPP, $analyticalTechnique_SPP;
        push @array_objects_measurement_SPP, $samplingEquipment_SPP;
    }

    my $equivalence;
    if(defined $params{$key}{demonstrationReport}){
        $equivalence = 'yes';
    }
    else{
        $equivalence = 'ref';
    }
    my $equivalenceDemonstration_SPP = $gen->equivalenceDemonstration([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                                        $gen->EquivalenceDemonstration([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                                            $gen->equivalenceDemonstrated([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], {'xlink:href' => "http://dd.eionet.europa.eu/vocabulary/aq/equivalencedemonstrated/".$equivalence},
                                               defined $params{$key}{demonstrationReport} ? $gen->demonstrationReport([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], $params{$key}{demonstrationReport}) : undef
                                            )
                                        )
                                    );

    my $dataQuality_SPP = $gen->dataQuality([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                            $gen->DataQuality([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                                $gen->detectionLimit([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], {'uom' => "http://dd.eionet.europa.eu/vocabulary/uom/concentration/".$params{$key}{dataQuality}{concentration}}, $params{$key}{dataQuality}{detectionLimit}),
                                $gen->documentation([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], $params{$key}{dataQuality}{documentation}),
                                $gen->qaReport([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], $params{$key}{dataQuality}{qaReport})
                            )
                        );


    my $duration_SPP = $gen->duration([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                            $gen->TimeReferences([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                                $gen->unit([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], {'xlink:href' => "http://dd.eionet.europa.eu/vocabulary/uom/time/".$params{$key}{timereferences}{duration_unit}}),
                                $gen->numUnits([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], $params{$key}{timereferences}{duration_numUnit})
                            )
                        );


    my $cadence_SPP = $gen->cadence([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                            $gen->TimeReferences([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                                $gen->unit([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], {'xlink:href' => "http://dd.eionet.europa.eu/vocabulary/uom/time/".$params{$key}{timereferences}{cadence_unit}}),
                                $gen->numUnits([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], $params{$key}{timereferences}{cadence_numUnit})
                            )
                        );

    my $feauture_SPP = $gen->featureMember(
                            $gen->AQD_SamplingPointProcess([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                                {'gml:id' => "SPP.".$code},
                                $inspireId_feauture_SPP,
                                $gen->type([ompr    =>  "http://inspire.ec.europa.eu/schemas/ompr/2.0"], 'Ambient air quality measurement instrument configuration'),
                                $gen->responsibleParty([ompr    =>  "http://inspire.ec.europa.eu/schemas/ompr/2.0"], {'xsi:nil' => "true"}),
                                $gen->measurementType([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], {'xlink:href' => "http://dd.eionet.europa.eu/vocabulary/aq/measurementtype/".$params{$key}{measurementType}}),
                                # $measurementMethod_SPP,
                                # $measurementEquipment_SPP,
                                # $samplingMethod_SPP,
                                # $analyticalTechnique_SPP,
                                # $samplingEquipment_SPP,
                                @array_objects_measurement_SPP,
                                $equivalenceDemonstration_SPP,
                                $dataQuality_SPP,
                                $duration_SPP,
                                $cadence_SPP
                            )
                        );


    my $content_SAM= $gen->content([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], {'xlink:href' => "IT.ISPRA.AQD/SAM.".$code});
    my $content_SPO= $gen->content([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], {'xlink:href' => "IT.ISPRA.AQD/SPO.".$code});
    my $content_SPP= $gen->content([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], {'xlink:href' => "IT.ISPRA.AQD/SPP.".$code});


    push @array_contents_SAM, $content_SAM;
    push @array_contents_SPO, $content_SPO;
    push @array_contents_SPP, $content_SPP;

    push @array_feautureMembers_SAM, $feauture_SAM;
    push @array_feautureMembers_SPO, $feauture_SPO;
    push @array_feautureMembers_SPP, $feauture_SPP;


}

# ##########################################################################
# CREAZIONE REPORTING HEADER

my $reportingHeader = $gen->AQD_ReportingHeader([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"],
                        {'gml:id' => "RHE.IT.Dataset.D.2018"},
                        $gen->change([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], 'true'),
                        $gen->changeDescription([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], 'Italy update submission 2018'),
                        $inspireId_Header,
                        $reportingAuthority_Header,
                        $reportingPeriod_Header,
                        # contents
                        $gen->content([aqd     =>  "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0"], {'xlink:href' => "IT.ISPRA.AQD/NET.".$zoneID}),
                        @array_contents_SAM,
                        @array_contents_SPO,
                        @array_contents_SPP
                    );

# ##########################################################################
# CREAZIONE XML TOTALE E SALVATAGGIO SU FILE OUTPUT
print ("\n-- -------------------------------------------------\n");
print ("Creazione file XML $filename\n");

$guid = Data::GUID->new;
$guid = lc $guid->as_string;

my $xml = $gen->FeatureCollection(
               {'xsi:schemaLocation' => "http://dd.eionet.europa.eu/schemaset/id2011850eu-1.0 http://dd.eionet.europa.eu/schemas/id2011850eu-1.0/AirQualityReporting.xsd",
               'gml:id' => "IT.".$guid},
                $gen->featureMember($reportingHeader),
                $gen->featureMember($AQD_Network),
                # feautureMembers
                @array_feautureMembers_SAM,
                @array_feautureMembers_SPO,
                @array_feautureMembers_SPP
            );

print  $output '<?xml version="1.0" encoding="UTF-8"?>'."\n";
print  $output $xml;

print ("\nFine script.\n");

# ##########################################################################
# CARATTERISTICHE ELEMENTI XML
# ##########################################################################

# aqd:AQD_ReportingHeader includes:
# aqd:inspireId                             Mandatory
# aqd:reportingAuthority                    Mandatory
# aqd:change                                Mandatory
# aqd:changeDescription                     Conditional (M if aqd:change=”True”)
# aqd:reportingPeriod                       Mandatory
# aqd:content                               Voluntary (M if aqd:change=”True”)

# AQD_Sample includes:
# aqd:inspireld                             Mandatory (D.5.1.7.1.1)
# aqd:inletHeight                           Mandatory (D.5.1.7.1.2)
# aqd:builldingDistance                     C, Mandatory for traffic stations  (D.5.1.7.1.3)
# aqd:kerbDistance                          C, Mandatory for traffic stations  (D.5.1.7.1.4)
# sams:shape                                M (provides coordinates for the inlet)
# sam:sampledFeature                        Mandatory (D.5.1.7.2 & D.6.4.2)

# aqd:AQD_SamplingPoint includes:
# ef:inspireId                              Mandatory (D.5.1.1)
# ef:ResponsibleParty                       Conditional, mandatory (D.4.1)
# aqd:assessmentType                        Mandatory (D.4.2)
# aqd:zone                                  Mandatory if used for AQD (D.4.3)
# ef:broader                                Mandatory (D.5.1.2)
# ef:belongsTo                              Mandatory (D.5.1.3)
# ef:operationalActivityPeriod              Important Mandatory (D.5.1.4)
# aqd:relevantEmissions                     Mandatory (D.5.1.5)
# aqd:stationClassification                 Mandatory (D.5.1.5.1)
# aqd:mainEmissionSources                   Conditional, mandatory (D.5.1.5.2)
# aqd:trafficEmissions                      Voluntary (D.5.1.5.3)
# aqd:heatingEmissions                      Voluntary (D.5.1.5.4)
# aqd:industrialEmissions                   Conditional, mandatory (D.5.1.5.5)
# aqd:distanceSource                        Conditional, mandatory (D.5.1.5.6)
# ef:ObservingCapability                    Essential Mandatory (not enumerated)
# ef:procedure                              Essential Mandatory (D.5.1.6) – see aqd:AQD_SamplingPointProcess
# ef:observedProperty                       Essential Mandatory (D.4.4) – Pollutant
# ef:featureOfInterest                      Essential Mandatory (D.5.1.7) – see aqd:AQD_Sample
# sam:sampledFeature                        Mandatory (D.5.1.7.2) – see aqd:AQD_RepresentativeArea
# aqd:usedAQD                               Mandatory (D.5.1.8)
# aqd:environmentalObjective                Mandatory (D.5.1.9)
# aqd:changeAEIStations                     C, Mandatory (D.5.1.10) if AEI “stations” have been relocated
# ef:mediaMonitored                         Mandatory (D.5.1.11)
# ef:measurementRegime                      Mandatory (D.5.1.12)
# ef:mobile                                 Mandatory (D.5.1.13)
# ef:processType                            Mandatory (D.5.1.14)
# ef:resultNature                           Mandatory(D.5.1.15)
# aqd:reportingDB                           Voluntary (D.5.4.1)
# aqd:reportingDBOther                      Voluntary (D.5.4.2)
# ef:geometry                               Mandatory (D.5.1.7)
# ef:involvedIn                             Mandatory (D.5.1.16)where sampling point is used in the AEI
# aqd:assessmentMethodWSS                   Mandatory if Art.21 applies (D.5.5.1)
# aqd:assessmentMethodNS                    Mandatory if Art.20 applies (D.5.5.2)
# aqd: adjustmentMethods                    Mandatory if Art. 20 or 21 applies (awaiting)

# AQD_SamplingPointProcess includes:
# ompr:inspireld                            Mandatory (D.5.1.6.1)
# ompr:responsibleParty                     Mandatory (D.5.1.6.2)
# ompr:type                                 Mandatory (D.5.1.6.7)
# aqd:measurementType                       Mandatory (D.5.1.6.3.1)
# aqd:measurementMethod                     Mandatory if measurementType = Automatic or Remote (D.5.1.6.3.2)
# aqd:measurementEquipment                  Mandatory if available & aqd:measurementType = Automatic or Remote (D.5.1.6.3.3)
# aqd:samplingMethod                        Mandatory if measurementType= Active or Passive (D.5.1.6.3.4)
# aqd:analyticalTechnique                   Mandatory if measurementType= Active or Passive (D.5.1.6.3.6)
# aqd:SamplingEquipment                     Mandatory if available & aqd:measurementType = Active or Passive (D.5.1.6.3.5)
# aqd:equivalenceDemonstration              Mandatory (D.5.1.6.4) – Voluntary for indicative
# aqd:dataQuality                           Mandatory (D.5.1.6.4)
# aqd:duration                              Mandatory (D.5.1.6.6.1)
# aqd:cadence                               Mandatory (D.5.1.6.6.2)
# ompr:processParameter (SamplingPoint)     Mandatory (D.5.1.6.8)
# ompr:processParameter (AssessmentType)    Mandatory (D.5.1.6.9)
