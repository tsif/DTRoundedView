DTRoundedView
=============

A UIView subclass where you can round individual corners separately

## Example usage

DTRoundedView *roundedview  = [[DTRoundedView alloc] initWithFrame:(CGRect){{100.0f, 100.0f}, {100.0f, 100.0f}}];
roundedview.backgroundColor = [UIColor clearColor];
roundedview.fillColour      = [UIColor redColor];
roundedview.corners         = DTCornerTopRight|DTCornerBottomLeft;
roundedview.radius          = 10.0f;
    
## Authors

* [@tsif][tsif]

## Release History

## License

Licensed under the [MIT License](LICENSE-MIT)

[tsif]: https://github.com/thanpolas "tsif"
