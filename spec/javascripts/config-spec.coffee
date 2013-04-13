describe 'Em.I18n2.Config', ->
  afterEach -> Em.I18n2.Config.reopen { translationsKey: 'object' }

  it 'is defined', -> expect(Em.I18n2.Config).toBeDefined()

  it 'is customizable', ->
    Em.I18n2.Config.reopen { translationsKey: 'dot' }
    expect(Em.I18n2.Config.get 'translationsKey').toEqual 'dot'
