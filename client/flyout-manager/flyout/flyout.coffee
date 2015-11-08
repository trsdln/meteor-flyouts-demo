Template.Flyout.helpers
  isHidden: -> @visible is false

Template.Flyout.events
  'click .close-flyout-button': (event, tmpl) ->
    currentFlyoutElement = tmpl.$(event.target).closest('.flyout')
    flyoutData = Blaze.getData(currentFlyoutElement[0])
    flyout = FlyoutManager._getInstanceById flyoutData._id
    flyout.close()