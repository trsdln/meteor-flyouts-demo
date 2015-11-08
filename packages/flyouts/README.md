### flyouts

Easy customizable and reactive sidebar flyouts

### Example

__ Step 1: __ Include `FlyoutManager` in your app layout or in body (in case you don't have layouts)

```
{{> FlyoutManager}}
```

__ Step 2: __ Create template that will be showed as flyout

```
<template name="myCustomTemplate">
 <div class="flyout-header">
    <button class="close-flyout-button"> x </button>
  </div>
  <div class="flyout-content">
    {{yourMessage}}
  </div>
</template>
```
* Note: `close-flyout-button` is predefined class for close flyout button.
You don't need to add any event handlers for it. *

Style it whatever you want (in example is used LESS):

```
@padding: 10px;
.flyout {
  .flyout-header {
    background: #CCC;
    padding: @padding;
    box-shadow: 1px 1px 4px rgba(0, 0, 0, 0.5)
  }

  .flyout-content {
    padding: @padding;
  }
}
```

__ Step 3: __ Open you template in flayout window when you need it

```
//open flyout
var yourFlyout = FlyoutManager.open('myCustomTemplate', {yourMessage: 'Hello, Flyouts!'});

//close flyout
yourFlyout.close()
```

__ Step 4: Have fun!

### Future work:

* Add some configuration abilities