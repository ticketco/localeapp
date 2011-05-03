# This module is the source for all data that simulates what the real app would return.
# It's included in the specs and cucumber tests, so if our format changes we
# should only have to change here
module LocaleAppIntegrationData
  def valid_project_data
    {
      'name' => "Test Project",
      'default_locale' => {
        'name' => "English",
        'code' => "en"
      }
    }
  end

  def valid_translation_data
    {
      'translations' => {
        'en' => {
          'foo' => { 'monkey' => 'hello', 'night' => 'night' }
          },
          'es' => {
            'foo' => { 'monkey' => 'hola', 'night' => 'noche' }
          },
      },
      'deleted' => [
        'foo.delete_me',
        'bar.delete_me_too',
        'hah.imnotreallyhere'
      ]
    }
  end
end
