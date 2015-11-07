class _FlyoutManager
  constructor: () ->
    @_flyoutTemplates = new Mongo.Collection(null)

  _containsTemplate: (templateName) -> !!@_flyoutTemplates.findOne {name: templateName}

  open: (templateName, data) ->
    if !@_containsTemplate(templateName)
      @_flyoutTemplates.insert {name: templateName, data: data}

  close: (templateName) ->
    @_flyoutTemplates.remove {name: templateName}


flyoutManager = new _FlyoutManager()

@FlyoutManager = flyoutManager


Template.FlyoutManager.helpers
  templates: -> flyoutManager._flyoutTemplates.find({})