at_exit do
  ReportBuilder.input_path = "cucumber.json"
  ReportBuilder.configure do |config|
    config.report_path = "reports/run"
    config.report_types = [:json, :html]
    options = {
        report_title: "Automacao QA"
    }
    ReportBuilder.build_report options
  end
end

After do |scenario|
  page.save_screenshot 'image.png'
  attach("image.png", 'image/png')
end


