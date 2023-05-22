# Nested navigation with extra arguments using GoRouter

Example of navigation through nested views passing an extra argument.

## Issue

When user clicks on back button of the browser, the view on the stack is not showed. A new view is created with null value on extra argument.

https://github.com/ferrarafer/nested_navigation_with_arguments_gorouter/assets/1505545/5b39e047-efb7-4dbd-8b3e-c6da12c3d1e1

## Possible workarounds

### Option 1 ([branch implementation](https://github.com/ferrarafer/nested_navigation_with_arguments_gorouter/tree/fix/do-not-allow-go-back-on-sections))

Avoid navigation back between sections using `neglect`, which stops the Flutter router from adding this page to the browser history. That way, when user clicks on back button of the browser, goes back outside the nested view.

https://github.com/ferrarafer/nested_navigation_with_arguments_gorouter/assets/1505545/0e02499f-7552-4953-8d40-ff588cac875f

