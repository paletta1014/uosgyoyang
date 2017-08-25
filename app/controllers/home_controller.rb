class HomeController < ApplicationController
  require 'open-uri'

  def index
    doc = Nokogiri::XML(open("http://wise.uos.ac.kr/uosdoc/api.ApiUcrCultTimeInq.oapi?apiKey=201605329QCU92763&year=2017&term=A20&subjectDiv=A01"),nil,'EUC-KR')
    @subj=doc.xpath('//list')
  end
  def all
    doc = Nokogiri::XML(open("http://wise.uos.ac.kr/uosdoc/api.ApiUcrCultTimeInq.oapi?apiKey=201605329QCU92763&year=2017&term=A20&subjectDiv=A01"),nil,'EUC-KR')
    @subj=doc.xpath('//list')
  end
  def mungwa
    doc = Nokogiri::XML(open("http://wise.uos.ac.kr/uosdoc/api.ApiUcrCultTimeInq.oapi?apiKey=201605329QCU92763&year=2017&term=A20&subjectDiv=A01"),nil,'EUC-KR')
    @subj=doc.xpath('//list')
  end
  def major
    doc = Nokogiri::XML(open("http://wise.uos.ac.kr/uosdoc/api.ApiUcrMjTimeInq.oapi?apiKey=201605329QCU92763&year=2017&term=A20&deptDiv=%20&dept=%20&subDept=%20"),nil,'EUC-KR')
    doc2 = Nokogiri::XML(open("http://wise.uos.ac.kr/uosdoc/api.ApiUcrCultTimeInq.oapi?apiKey=201605329QCU92763&year=2017&term=A20&subjectDiv=A07"),nil,'EUC-KR')

    @subj=doc.xpath('//list')
    @subj2=doc2.xpath('//list')
  end
end
