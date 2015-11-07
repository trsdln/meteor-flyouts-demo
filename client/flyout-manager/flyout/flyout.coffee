Template.Flyout.events
  'click .close-flyout-button': (event, tmpl) ->
    FlyoutManager.close tmpl.data.name