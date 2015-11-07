Template.DateTmpl.helpers({
  date: function () {
    return new Date();
  }
});

Template.DateTmpl.events({
  'click .new': function (event, tmpl) {
    var flt = FlyoutManager.open('DateTmpl', {message: new Date().getTime()});
    console.log(flt);
  }
});

