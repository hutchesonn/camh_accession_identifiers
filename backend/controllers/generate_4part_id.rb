require 'time'

class ArchivesSpaceService < Sinatra::Base

  Endpoint.post('/plugins/generate_accession_identifiers/next')
    .description("Generate a new identifier based on the year and a running number")
    .params()
    .permissions([])
    .returns([200, "{'year', 'YYYY', 'number', N}"]) \
  do
    year = Time.now.strftime('%Y')
    number = Sequence.get("camh_accession_identifier_#{year}")
    if number == 0
      number = 1
    end

    json_response(:year => year, :number => number)
  end

end
