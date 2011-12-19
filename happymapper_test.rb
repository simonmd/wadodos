require 'rubygems'
require 'happymapper'
require 'awesome_print'

#file_contents = File.read("sample_xml/sample_images.xml")
#file_contents = File.read("sample_xml/sample_all_ct.xml")
file_contents = File.read("sample_xml/sample_series_requestimage.xml")


class Image
  include HappyMapper
  attribute :Rows, Integer
  attribute :Columns, Integer
  attribute :objectUID, String
  attribute :Position, Integer
  attribute :InstanceNumber, Integer
end

class Series
  include HappyMapper
  attribute :seriesUID, String
  attribute :StationName, String
  attribute :SeriesNumber, String
  attribute :SeriesDescription, String
  attribute :SeriesDateTime, String
  attribute :PPSStartDateTime, String
  attribute :Modality, String
  attribute :ManufacturerModelName, String
  attribute :Manufacturer, String
  attribute :InstitutionalDepartmentName, String
  attribute :InstitutionName, String
  attribute :BodyPartExamined, String
  has_many :images, Image
end

class Study
  include HappyMapper
  attribute :StudyDateF, String
  attribute :studyUID, String
  attribute :StudyID, String
  attribute :StudyDateTime, String
  attribute :NumberOfStudyRelatedSeries, Integer
  attribute :NumberOfStudyRelatedInstances, Integer
  attribute :ModalitiesInStudy, String
  attribute :InstanceAvailability, String
  attribute :AccessionNumber, String
  has_many :series, Series
end

class Patient
  include HappyMapper
  attribute :patientNameF, String
  attribute :PatientSex, String
  attribute :PatientName, String
  attribute :PatientIdentifier, String
  attribute :PatientID, String
  attribute :PatientComments, String
  has_many :studies, Study
end

class Result
  include HappyMapper
  attribute :ae, String
  has_many :patients, Patient
end

patients = Patient.parse(file_contents)

ap patients[0].studies[0]
