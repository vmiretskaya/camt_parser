require 'spec_helper'

describe CamtParser::Format054::Notification do
  let(:camt)       { CamtParser::File.parse('spec/fixtures/054/valid_example.xml') }
  let(:notifications) { camt.notifications }
  let(:ex_ntfc)    { camt.notifications[0] }

  specify { expect(notifications).to all(be_kind_of(described_class)) }
  specify { expect(ex_ntfc.identification).to eq("0352C5320131227220503") }
  specify { expect(ex_ntfc.generation_date).to be_kind_of(Time) }
  specify { expect(ex_ntfc.from_date_time).to be_nil }
  specify { expect(ex_ntfc.to_date_time).to be_nil }
  specify { expect(ex_ntfc.account).to be_kind_of(CamtParser::Account) }
  specify { expect(ex_ntfc.entries).to be_kind_of(Array) }

  specify { expect(ex_ntfc.identification).to eq("0352C5320131227220503") }
end
