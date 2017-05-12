This plugin is a slightly modified version of the generate_accession_identifiers plugin that ships with ArchivesSpace.
It autogenerates accession identifiers (based on a running number and the current year).

The first time this is used, we'll need to initiate the sequences as follows:

insert into sequence (sequence_name, value) values ('camh_accession_identifier', CURRENT_MAX_ACCESSIONID);


To install, just activate the plugin in your config/config.rb file by
including an entry such as:

     AppConfig[:plugins] = ['camh_accession_identifiers']
