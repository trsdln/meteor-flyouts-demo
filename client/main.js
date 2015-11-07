Template.Main.events({
  'click .test': function (event, tmpl) {
    FlyoutManager.open('DateTmpl', {message: 'Test message'});
  }
});