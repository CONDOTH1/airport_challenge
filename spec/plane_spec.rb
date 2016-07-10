require 'plane'

describe Plane do
  let(:weather_report) {double :WeatherReport}
  it {is_expected.to respond_to(:landed?)}
  it {is_expected.to respond_to(:safe_to_land?)}

  it "checks the weather report" do
    #weather_report = double(:weather_conditions => "clear")
    allow(weather_report).to receive(:weather_conditions) { "stormy" }
    #expect(subject.safe_to_land?(weather_report.weather_conditions)).to eq(false)
    expect{subject.safe_to_land?(weather_report.weather_conditions)}.to raise_error "Unable to land due to stormy conditions"
  end

  #it "ensures the plane doesn't land in stormy weather" do
  #allow(subject).to receive(:weather_report) { "stormy" }
  #allow(weather_report).to receive(weather_conditions) { "clear" }
  #expect(subject.landed?).to eq("stormy")
  #end
end
