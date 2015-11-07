class _FlyoutManager
  constructor: () ->
    @_flyoutTemplates = new Mongo.Collection(null)

  _containsTemplate: (templateName) -> !!@_flyoutTemplates.findOne {name: templateName}

  open: (templateName, data) ->
    if !@_containsTemplate(templateName)
      @_flyoutTemplates.insert {name: templateName, data: data}

  close: (templateName) ->
#trigger hide animation first
    @_flyoutTemplates.update {name: templateName}, {
      $set: {visible: false}
    }
    #then remove template from dom
    removeTemplateCb = => @_flyoutTemplates.remove {name: templateName}
    Meteor.setTimeout removeTemplateCb, 1000


flyoutManager = new _FlyoutManager()

@FlyoutManager = flyoutManager


Template.FlyoutManager.helpers
  templates: -> flyoutManager._flyoutTemplates.find({})