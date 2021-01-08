FROM perl:5.32-slim-stretch

RUN apt update && apt -y install build-essential openssl libssl-dev zlib1g-dev libexpat1-dev && cpanm XML::Compile::SOAP Mojolicious::Plugin::OpenAPI Raisin::API Plack::Handler::Starman Data::Dumper Data::Search Date::Manip HTML::Form::ForceValue HTTP::Cookies HTTP::Request::Common JSON SOAP::Lite WWW::Mechanize XML::LibXML XML::Simple XML::Twig && apt-get autoremove -y --purge build-essential && rm -fR /root/.cpanm || ( find /root/.cpanm/work -type f | xargs cat )

