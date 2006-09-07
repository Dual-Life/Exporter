
use 5.005;
use ExtUtils::MakeMaker;

my $EUMM_VERSION = $ExtUtils::MakeMaker::VERSION;
$EUMM_VERSION =~ s/_//g;

WriteMakefile(
    NAME              => 'Exporter',
    VERSION_FROM      => 'lib/Exporter.pm', 
    INSTALLDIRS       => 'perl', # core since forever
    PREREQ_PM         => {
      #Carp                    => 0, # ?
    }, 
    
    ($] >= 5.005 ? (
      ABSTRACT_FROM  => 'lib/Exporter.pm', 
    ) : ()),
    ($EUMM_VERSION >= 6.30_01 ? (
      LICENSE => 'perl', 
    ) :())
    
);
