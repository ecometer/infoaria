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
use DateTime;

our %networks;
my %ARE_hash;

my $version_year = '2017_retro';
my $outfile = 'ARE_params.pl';

open FO, ">$outfile" or die "Cannot open file $outfile";

# absolute path
my $abs_path = dirname(rel2abs($0));
# load library
require "$abs_path/NET_params.pl";
print ("\n-- -------------------------------------------------\n");
print ("Acquisizione dati da file config\n");

foreach my $key (sort { $a <=> $b } keys %networks){

    my %network = %{$networks{$key}};
    print ("Creazione elementi Regimi di Valutazione\n");
    print ("-- -------------------------------------------------\n\n");

    my $samplingPoints = $network{samplingPoints};

    foreach my $inner_key (sort { $a <=> $b } keys %{$samplingPoints}){


        my %samplingPoint = %{$samplingPoints->{$inner_key}};
        if($samplingPoint{usedAQD} eq 'true'){

            my $code = $samplingPoint{code};
            my $zone = $samplingPoint{zone};

            my ($pollutant_code) = $code =~ /_(\d*)_/;

            # print("- ".$inner_key." ".$code."\n");

            my $environmentalObjectives = $samplingPoint{environmentalObjectives};

            foreach my $more_inner_key (sort { $a <=> $b } keys %{$environmentalObjectives}){

                my %environmentalObjective = %{$environmentalObjectives->{$more_inner_key}};
                # print("\t"."- ".$more_inner_key." ".$zone."_".$pollutant_code."_".$environmentalObjective{protectionTarget}."_".$environmentalObjective{objectiveType}."_".$environmentalObjective{reportingMetric}."_".$version_year."\n");
                my $ARE_code = $zone."_".$pollutant_code."_".$environmentalObjective{protectionTarget}."_".$environmentalObjective{objectiveType}."_".$environmentalObjective{reportingMetric}."_".$version_year;

                push @{ $ARE_hash{$ARE_code}{SPO}{$samplingPoint{assessmentType}} }, $code;
                # definisco struttura per Regime di Valutazione
                if (!defined $ARE_hash{$ARE_code}{flag_changed}){
                    $ARE_hash{$ARE_code}{flag_changed} = 1;
                    # CAMPI PER DATASET C
                    # ###################################################################
                    $ARE_hash{$ARE_code}{exceedanceAttainment} = 'belowLAT'; #default da cambiare a seconda dei casi
                    $ARE_hash{$ARE_code}{classificationDate} = '2017-01-01T00:00:00.000Z'; #default da cambiare
                    $ARE_hash{$ARE_code}{classificationReport} = 'link del classification report';
                    $ARE_hash{$ARE_code}{assessmentTypeDescription} = 'Descrizione di default';

                    # CAMPI PER DATASET G
                    # ###################################################################
                    $ARE_hash{$ARE_code}{exceedanceDescriptionBase} = undef;
                    $ARE_hash{$ARE_code}{exceedanceDescriptionAdjustment} = undef;

                    $ARE_hash{$ARE_code}{exceedanceDescriptionFinal} = undef;
                    $ARE_hash{$ARE_code}{exceedanceDescriptionFinal}{exceedance} = 'false';
                    $ARE_hash{$ARE_code}{exceedanceDescriptionFinal}{numericalExceedance} = undef;
                    $ARE_hash{$ARE_code}{exceedanceDescriptionFinal}{numberExceedances} = undef;
                    $ARE_hash{$ARE_code}{exceedanceDescriptionFinal}{deductionAssessmentMethod} = 'noneApplied';
                    $ARE_hash{$ARE_code}{exceedanceDescriptionFinal}{exceedanceArea}{areaClassifications}    = undef;
                    $ARE_hash{$ARE_code}{exceedanceDescriptionFinal}{exceedanceArea}{spatialExtent} = undef;
                    $ARE_hash{$ARE_code}{exceedanceDescriptionFinal}{exceedanceArea}{surfaceArea} = undef;
                    $ARE_hash{$ARE_code}{exceedanceDescriptionFinal}{exceedanceArea}{roadLength} = undef;
                    $ARE_hash{$ARE_code}{exceedanceDescriptionFinal}{exceedanceArea}{stationsUsed} = undef;
                    $ARE_hash{$ARE_code}{exceedanceDescriptionFinal}{exceedanceArea}{administrativeUnits} = undef;
                    $ARE_hash{$ARE_code}{exceedanceDescriptionFinal}{exceedanceArea}{modelUsed} = undef;
                    $ARE_hash{$ARE_code}{exceedanceDescriptionFinal}{exceedanceExposure}{populationExposed} = undef;
                    $ARE_hash{$ARE_code}{exceedanceDescriptionFinal}{exceedanceExposure}{ecosystemAreaExposed} = undef;
                    $ARE_hash{$ARE_code}{exceedanceDescriptionFinal}{exceedanceExposure}{sensitivePopulation} = undef;
                    $ARE_hash{$ARE_code}{exceedanceDescriptionFinal}{exceedanceExposure}{infrastructureServices} = undef;
                    $ARE_hash{$ARE_code}{exceedanceDescriptionFinal}{reason} = undef;
                    $ARE_hash{$ARE_code}{exceedanceDescriptionFinal}{reasonOther} = undef;
                    $ARE_hash{$ARE_code}{exceedanceDescriptionFinal}{comment} = undef;

                    $ARE_hash{$ARE_code}{comment} = undef;
                }
            }

            # print ("-- -------------------------------------------------\n\n");
        }
    }
}

# p(%ARE_hash);
$Data::Dumper::Terse = 1;
$Data::Dumper::Useqq    = 0;
$Data::Dumper::Quotekeys = 0;
$Data::Dumper::Sortkeys = 1;
# $Data::Dumper::Trailingcomma = 1;
print FO Dumper(%ARE_hash);
close FO;

# "IT0206_7_H_LTO_daysAbove_2017" => {

                                #     # environmentalObjective lo acquisisco dal codice dell'attaintment,
                                #     # zone lo acquisisco dal codice dell'attaintment,

                                #     ########################################################################
                                #     # se deductionAssessmentMethod diverso da 'noneApplied' altrimenti undef
                                #     exceedanceDescriptionBase => undef,
                                #     exceedanceDescriptionAdjustment => undef,
                                #     ########################################################################

                                #     exceedanceDescriptionFinal => {
                                #         exceedance => undef,
                                #         numericalExceedance => undef,
                                #         numberExceedances => undef,
                                #         deductionAssessmentMethod => 'noneApplied',
                                #         # Mandatory se exceedance = true
                                #         exceedanceArea => {
                                #             areaClassifications =>  [],  # mandatory
                                #             spatialExtent      =>  ,    # mandatory se administrativeUnit undef
                                #             surfaceArea        =>  ,    # mandatory (Conditional if exceedance is on a road link only)
                                #             roadLength         =>  ,    # conditional, mandatory if exceedance estimated on a road link
                                #             stationsUsed        =>  [],  # SPO M if exceedance measured at SamplingPoint
                                #             administrativeUnits =>  [],  # LAU codes
                                #             modelUsed          => undef # Mandatory if exceedance modeled using Model or ExpertJudgment
                                #         },
                                #         # Mandatory se exceedance = true
                                #         exceedanceExposure => {
                                #             populationExposed      => , # Voluntary
                                #             ecosystemAreaExposed   => , # Voluntary
                                #             sensitivePopulation    => , # Voluntary
                                #             infrastructureServices => # Voluntary
                                #             # referenceYear          =>   # Voluntary
                                #         },
                                #         reason => undef,
                                #         reasonOther => undef,
                                #         comment => undef
                                #     },
                                #     comment => undef
                                # },