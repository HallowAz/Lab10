require 'rails_helper'

RSpec.describe "Labs", type: :request do
  

  describe "RSS" do
    before {get lab_show_xml_path, params: {numb: 100}}
    context 'value 101' do
      it 'renders with xml' do
        expect(response.content_type).to match('application/xml; charset=utf-8')
      end

       it 'correct page' do
         expect(response.body). to match ('100')
         expect(response.body). to match ('101')
       end
    end
  end

end
