Template.Flyout.helpers
  isHidden: -> @visible is false

Template.Flyout.events
  'click .close-flyout-button': (event, tmpl) ->
    flyout = FlyoutManager._getInstanceById tmpl.data._id
    flyout.close()