import 'package:flutter/material.dart';

/// Choice item style configuration
class ChipSelectionItemStyle {
  /// Item color
  final Color? color;

  /// choice item margin
  final EdgeInsetsGeometry? margin;

  /// The padding between the contents of the chip and the outside [shape].
  ///
  /// Defaults to 4 logical pixels on all sides.
  final EdgeInsetsGeometry? padding;

  /// Chips elevation
  final double? elevation;

  /// Longpress chips elevation
  final double? pressElevation;

  /// whether the chips use checkmark or not
  final bool? showCheckmark;

  /// Chip label style
  final TextStyle? labelStyle;

  /// Chip label padding
  final EdgeInsetsGeometry? labelPadding;

  /// Chip brightness
  final Brightness? brightness;

  /// Chip border color
  final Color? borderColor;

  /// Chip border opacity,
  /// only effect when [brightness] is [Brightness.light]
  final double? borderOpacity;

  /// The width of this side of the border, in logical pixels.
  final double? borderWidth;

  /// The radii for each corner.
  final BorderRadiusGeometry? borderRadius;

  /// The style of this side of the border.
  ///
  /// To omit a side, set [style] to [BorderStyle.none].
  /// This skips painting the border, but the border still has a [width].
  final BorderStyle? borderStyle;

  /// Chips shape border
  final OutlinedBorder? borderShape;

  /// Chip border color
  final Color? avatarBorderColor;

  /// The width of this side of the border, in logical pixels.
  final double? avatarBorderWidth;

  /// The radii for each corner.
  final BorderRadiusGeometry? avatarBorderRadius;

  /// The style of this side of the border.
  ///
  /// To omit a side, set [style] to [BorderStyle.none].
  /// This skips painting the border, but the border still has a [width].
  final BorderStyle? avatarBorderStyle;

  /// Chips shape border
  final ShapeBorder? avatarBorderShape;

  /// Chips clip behavior
  final Clip? clipBehavior;

  /// Configures the minimum size of the tap target.
  final MaterialTapTargetSize? materialTapTargetSize;

  /// Color to be used for the chip's background indicating that it is disabled.
  ///
  /// It defaults to [Colors.black38].
  final Color? disabledColor;

  /// Default Constructor
  const ChipSelectionItemStyle({
    this.color,
    this.margin,
    this.padding,
    this.elevation,
    this.pressElevation,
    this.showCheckmark,
    this.labelStyle,
    this.labelPadding,
    this.brightness,
    this.borderColor,
    this.borderOpacity,
    this.borderWidth,
    this.borderRadius,
    this.borderStyle,
    this.borderShape,
    this.avatarBorderColor,
    this.avatarBorderWidth,
    this.avatarBorderRadius,
    this.avatarBorderStyle,
    this.avatarBorderShape,
    this.clipBehavior,
    this.materialTapTargetSize,
    this.disabledColor,
  });

  /// Creates a copy of this [ChipSelectionItemStyle] but with
  /// the given fields replaced with the new values.
  ChipSelectionItemStyle copyWith({
    Color? color,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    double? elevation,
    double? pressElevation,
    bool? showCheckmark,
    TextStyle? labelStyle,
    EdgeInsetsGeometry? labelPadding,
    Brightness? brightness,
    Color? borderColor,
    double? borderOpacity,
    double? borderWidth,
    BorderRadiusGeometry? borderRadius,
    BorderStyle? borderStyle,
    OutlinedBorder? borderShape,
    Color? avatarBorderColor,
    double? avatarBorderWidth,
    BorderRadiusGeometry? avatarBorderRadius,
    BorderStyle? avatarBorderStyle,
    ShapeBorder? avatarBorderShape,
    Clip? clipBehavior,
    MaterialTapTargetSize? materialTapTargetSize,
    Color? disabledColor,
  }) {
    return ChipSelectionItemStyle(
      color: color ?? this.color,
      margin: margin ?? this.margin,
      padding: padding ?? this.padding,
      elevation: elevation ?? this.elevation,
      pressElevation: pressElevation ?? this.pressElevation,
      showCheckmark: showCheckmark ?? this.showCheckmark,
      labelStyle: labelStyle ?? this.labelStyle,
      labelPadding: labelPadding ?? this.labelPadding,
      brightness: brightness ?? this.brightness,
      borderColor: borderColor ?? this.borderColor,
      borderOpacity: borderOpacity ?? this.borderOpacity,
      borderWidth: borderWidth ?? this.borderWidth,
      borderRadius: borderRadius ?? this.borderRadius,
      borderStyle: borderStyle ?? this.borderStyle,
      borderShape: borderShape ?? this.borderShape,
      avatarBorderColor: avatarBorderColor ?? this.avatarBorderColor,
      avatarBorderWidth: avatarBorderWidth ?? this.avatarBorderWidth,
      avatarBorderRadius: avatarBorderRadius ?? this.avatarBorderRadius,
      avatarBorderStyle: avatarBorderStyle ?? this.avatarBorderStyle,
      avatarBorderShape: avatarBorderShape ?? this.avatarBorderShape,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      materialTapTargetSize:
          materialTapTargetSize ?? this.materialTapTargetSize,
      disabledColor: disabledColor ?? this.disabledColor,
    );
  }

  /// Creates a copy of this [ChipSelectionItemStyle] but with
  /// the given fields replaced with the new values.
  ChipSelectionItemStyle merge(ChipSelectionItemStyle? other) {
    // if null return current object
    if (other == null) return this;

    return copyWith(
      color: other.color,
      margin: other.margin,
      padding: other.padding,
      elevation: other.elevation,
      pressElevation: other.pressElevation,
      showCheckmark: other.showCheckmark,
      labelStyle: other.labelStyle,
      labelPadding: other.labelPadding,
      brightness: other.brightness,
      borderColor: other.borderColor,
      borderOpacity: other.borderOpacity,
      borderWidth: other.borderWidth,
      borderRadius: other.borderRadius,
      borderStyle: other.borderStyle,
      borderShape: other.borderShape,
      avatarBorderColor: other.avatarBorderColor,
      avatarBorderWidth: other.avatarBorderWidth,
      avatarBorderRadius: other.avatarBorderRadius,
      avatarBorderStyle: other.avatarBorderStyle,
      avatarBorderShape: other.avatarBorderShape,
      clipBehavior: other.clipBehavior,
      materialTapTargetSize: other.materialTapTargetSize,
      disabledColor: other.disabledColor,
    );
  }
}

/// Choice option
class ChipSelectionData<T> {
  /// Value to return
  final T value;

  /// Represent as primary text
  final String label;

  /// Tooltip string to be used for the body area (where the label and avatar are) of the chip.
  final String? tooltip;

  /// Whether the choice is disabled or not
  final bool disabled;

  /// Whether the choice is hidden or displayed
  final bool hidden;

  /// This prop is useful for choice builder
  final dynamic meta;

  /// Individual choice unselected item style
  final ChipSelectionItemStyle? style;

  /// Individual choice selected item style
  final ChipSelectionItemStyle? activeStyle;

  /// Callback to select choice
  /// autofill by the system
  /// used in choice builder
  final void Function(bool selected)? select;

  /// Whether the choice is selected or not
  /// autofill by the system
  /// used in choice builder
  final bool selected;

  /// Default Constructor
  const ChipSelectionData({
    required this.value,
    required this.label,
    this.tooltip,
    this.disabled = false,
    this.hidden = false,
    this.meta,
    this.style,
    this.activeStyle,
    this.select,
    this.selected = false,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChipSelectionData &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;

  /// Helper to create choice items from any list
  static List<ChipSelectionData<R>> listFrom<R, E>({
    required List<E> source,
    required _ChipSelectionProp<E, R> value,
    required _ChipSelectionProp<E, String> label,
    _ChipSelectionProp<E, String>? tooltip,
    _ChipSelectionProp<E, bool>? disabled,
    _ChipSelectionProp<E, bool>? hidden,
    _ChipSelectionProp<E, dynamic>? meta,
    _ChipSelectionProp<E, ChipSelectionItemStyle>? style,
    _ChipSelectionProp<E, ChipSelectionItemStyle>? activeStyle,
  }) =>
      source
          .asMap()
          .map((index, item) => MapEntry(
              index,
              ChipSelectionData<R>(
                value: value.call(index, item),
                label: label.call(index, item),
                tooltip: tooltip?.call(index, item),
                disabled: disabled?.call(index, item) ?? false,
                hidden: hidden?.call(index, item) ?? false,
                meta: meta?.call(index, item),
                style: style?.call(index, item),
                activeStyle: activeStyle?.call(index, item),
              )))
          .values
          .toList()
          .cast<ChipSelectionData<R>>();

  /// Creates a copy of this [ChipSelection] but with
  /// the given fields replaced with the new values.
  ChipSelectionData<T> copyWith({
    T? value,
    String? label,
    String? tooltip,
    bool? disabled,
    bool? hidden,
    dynamic meta,
    ChipSelectionItemStyle? style,
    ChipSelectionItemStyle? activeStyle,
    Function(bool selected)? select,
    bool? selected,
  }) {
    return ChipSelectionData<T>(
      value: value ?? this.value,
      label: label ?? this.label,
      tooltip: tooltip ?? this.tooltip,
      disabled: disabled ?? this.disabled,
      hidden: hidden ?? this.hidden,
      meta: meta ?? this.meta,
      style: style ?? this.style,
      activeStyle: activeStyle ?? this.activeStyle,
      select: select ?? this.select,
      selected: selected ?? this.selected,
    );
  }

  /// Creates a copy of this [ChipSelectionData] but with
  /// the given fields replaced with the new values.
  ChipSelectionData<T> merge(ChipSelectionData<T>? other) {
    // if null return current object
    if (other == null) return this;

    return copyWith(
      value: other.value,
      label: other.label,
      tooltip: other.tooltip,
      disabled: other.disabled,
      hidden: other.hidden,
      meta: other.meta,
      style: other.style,
      activeStyle: other.activeStyle,
      select: other.select,
      selected: other.selected,
    );
  }
}

/// Builder for option prop
typedef R _ChipSelectionProp<T, R>(int index, T item);

/// Callback when the value changed
typedef void ChipSelectionChanged<T>(T value);

/// Callback to load the choice items
typedef Future<List<ChipSelectionData<T>>> ChipSelectionLoader<T>();

/// Builder for custom choice item
typedef Widget ChipSelectionBuilder<T>(ChipSelectionData<T> item);

/// Default choice item widget
class ChipSelectionItem<T> extends StatelessWidget {
  /// choice item data
  final ChipSelectionData<T> data;

  /// unselected choice style
  final ChipSelectionItemStyle style;

  /// selected choice style
  final ChipSelectionItemStyle activeStyle;

  /// label widget
  final Widget? label;

  /// avatar widget
  final Widget? avatar;

  /// default constructor
  const ChipSelectionItem({
    Key? key,
    required this.data,
    required this.style,
    required this.activeStyle,
    this.label,
    this.avatar,
  }) : super(key: key);

  /// get shape border
  static OutlinedBorder getShapeBorder({
    Color? color,
    double? width,
    BorderRadiusGeometry? radius,
    BorderStyle? style,
  }) {
    final BorderSide side = BorderSide(
        color: color ?? Color(4278190080),
        width: width ?? 1.0,
        style: style ?? BorderStyle.solid);
    return radius == null
        ? StadiumBorder(side: side)
        : RoundedRectangleBorder(
            borderRadius: radius,
            side: side,
          );
  }

  /// get shape border
  static ShapeBorder getAvatarShapeBorder({
    Color? color,
    double? width,
    BorderRadiusGeometry? radius,
    BorderStyle? style,
  }) {
    final BorderSide side = BorderSide(
        color: color ?? const Color(0xFF000000),
        width: width ?? 1.0,
        style: style ?? BorderStyle.none);
    return radius == null
        ? CircleBorder(side: side)
        : RoundedRectangleBorder(
            borderRadius: radius,
            side: side,
          );
  }

  /// default border opacity
  static final double defaultBorderOpacity = .2;

  @override
  Widget build(BuildContext context) {
    final ChipSelectionItemStyle effectiveStyle =
        data.selected ? activeStyle : style;

    final bool isDark = effectiveStyle.brightness == Brightness.dark;

    final Color? textColor =
        isDark ? const Color(0xFFFFFFFF) : effectiveStyle.color;

    final Color? borderColor = isDark
        ? const Color(0x00000000)
        : textColor
            ?.withOpacity(effectiveStyle.borderOpacity ?? defaultBorderOpacity);

    final Color? checkmarkColor = isDark ? textColor : activeStyle.color;

    final Color? backgroundColor =
        isDark ? style.color : const Color(0x00000000);

    final Color? selectedBackgroundColor =
        isDark ? activeStyle.color : const Color(0x00000000);

    return Padding(
      padding: effectiveStyle.margin ?? const EdgeInsets.all(0),
      child: RawChip(
        padding: effectiveStyle.padding,
        label: label ?? Text(data.label),
        labelStyle:
            TextStyle(color: textColor).merge(effectiveStyle.labelStyle),
        labelPadding: effectiveStyle.labelPadding,
        avatar: avatar,
        avatarBorder: effectiveStyle.avatarBorderShape ??
            getAvatarShapeBorder(
              color: effectiveStyle.avatarBorderColor,
              width: effectiveStyle.avatarBorderWidth,
              radius: effectiveStyle.avatarBorderRadius,
              style: effectiveStyle.avatarBorderStyle,
            ),
        tooltip: data.tooltip,
        shape: effectiveStyle.borderShape ??
            getShapeBorder(
              color: effectiveStyle.borderColor ?? borderColor,
              width: effectiveStyle.borderWidth,
              radius: effectiveStyle.borderRadius,
              style: effectiveStyle.borderStyle,
            ),
        clipBehavior: effectiveStyle.clipBehavior ?? Clip.none,
        elevation: effectiveStyle.elevation ?? 0,
        pressElevation: effectiveStyle.pressElevation ?? 0,
        shadowColor: style.color,
        selectedShadowColor: activeStyle.color,
        backgroundColor: backgroundColor,
        selectedColor: selectedBackgroundColor,
        checkmarkColor: checkmarkColor,
        showCheckmark: effectiveStyle.showCheckmark,
        materialTapTargetSize: effectiveStyle.materialTapTargetSize,
        disabledColor:
            effectiveStyle.disabledColor ?? Colors.blueGrey.withOpacity(.1),
        isEnabled: data.disabled != true,
        selected: data.selected,
        onSelected: data.select,
      ),
    );
  }
}

/// Easy way to provide a single or multiple choice chips.
class ChipSelection<T> extends StatefulWidget {
  /// List of choice item
  final List<ChipSelectionData<T>> choiceItems;

  /// Async loader of choice items
  final ChipSelectionLoader<T>? choiceLoader;

  /// Choice unselected item style
  final ChipSelectionItemStyle? choiceStyle;

  /// Choice selected item style
  final ChipSelectionItemStyle? choiceActiveStyle;

  /// Builder for custom choice item label
  final ChipSelectionBuilder<T>? choiceLabelBuilder;

  /// Builder for custom choice item label
  final ChipSelectionBuilder<T>? choiceAvatarBuilder;

  /// Builder for custom choice item
  final ChipSelectionBuilder<T>? choiceBuilder;

  /// Builder for spinner widget
  final WidgetBuilder? spinnerBuilder;

  /// Builder for placeholder widget
  final WidgetBuilder? placeholderBuilder;

  /// Builder for placeholder widget
  final WidgetBuilder? errorBuilder;

  /// Whether the chips is wrapped or scrollable
  final bool wrapped;

  /// Container padding
  final EdgeInsetsGeometry? padding;

  /// The direction to use as the main axis.
  final Axis direction;

  /// Determines the order to lay children out vertically and how to interpret start and end in the vertical direction.
  final VerticalDirection verticalDirection;

  /// Determines the order to lay children out horizontally and how to interpret start and end in the horizontal direction.
  final TextDirection? textDirection;

  /// if [wrapped] is [false], How the scroll view should respond to user input.
  final ScrollPhysics? scrollPhysics;

  /// if [wrapped] is [false], How much space should be occupied in the main axis.
  final MainAxisSize mainAxisSize;

  /// if [wrapped] is [false], How the children should be placed along the main axis.
  final MainAxisAlignment mainAxisAlignment;

  /// if [wrapped] is [false], How the children should be placed along the cross axis.
  final CrossAxisAlignment crossAxisAlignment;

  /// if [wrapped] is [true], how the children within a run should be aligned relative to each other in the cross axis.
  final WrapCrossAlignment wrapCrossAlignment;

  /// if [wrapped] is [true], determines how wrap will align the objects
  final WrapAlignment alignment;

  /// if [wrapped] is [true], how the runs themselves should be placed in the cross axis.
  final WrapAlignment runAlignment;

  /// if [wrapped] is [true], how much space to place between children in a run in the main axis.
  final double spacing;

  /// if [wrapped] is [true], how much space to place between the runs themselves in the cross axis.
  final double runSpacing;

  /// Clip behavior
  final Clip clipBehavior;

  /// String to display when choice items is empty
  final String? placeholder;

  /// placeholder text style
  final TextStyle? placeholderStyle;

  /// placeholder text align
  final TextAlign? placeholderAlign;

  /// error text style
  final TextStyle? errorStyle;

  /// error text align
  final TextAlign? errorAlign;

  /// spinner size
  final double? spinnerSize;

  /// spinner color
  final Color? spinnerColor;

  /// spinner thickness
  final double? spinnerThickness;

  final T? _value;
  final List<T>? _values;
  final ChipSelectionChanged<T>? _onChangedSingle;
  final ChipSelectionChanged<List<T>>? _onChangedMultiple;
  final bool _isMultiChoice;

  /// Costructor for single choice
  ChipSelection.single({
    Key? key,
    required T value,
    required ChipSelectionChanged<T> onChanged,
    required this.choiceItems,
    this.choiceLoader,
    this.choiceStyle,
    this.choiceActiveStyle,
    this.choiceLabelBuilder,
    this.choiceAvatarBuilder,
    this.choiceBuilder,
    this.spinnerBuilder,
    this.placeholderBuilder,
    this.errorBuilder,
    this.wrapped = false,
    this.padding,
    this.direction = Axis.horizontal,
    this.verticalDirection = VerticalDirection.down,
    this.textDirection,
    this.clipBehavior = Clip.hardEdge,
    this.scrollPhysics,
    this.mainAxisSize = MainAxisSize.max,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.alignment = WrapAlignment.start,
    this.runAlignment = WrapAlignment.start,
    this.wrapCrossAlignment = WrapCrossAlignment.start,
    this.spacing = 10.0,
    this.runSpacing = 0,
    this.placeholder,
    this.placeholderStyle,
    this.placeholderAlign,
    this.errorStyle,
    this.errorAlign,
    this.spinnerSize,
    this.spinnerColor,
    this.spinnerThickness,
  })  : _isMultiChoice = false,
        _value = value,
        _values = null,
        _onChangedMultiple = null,
        _onChangedSingle = onChanged,
        super(key: key);

  /// Constructor for multiple choice
  ChipSelection.multiple({
    Key? key,
    required List<T> value,
    required ChipSelectionChanged<List<T>> onChanged,
    required this.choiceItems,
    this.choiceLoader,
    this.choiceStyle,
    this.choiceActiveStyle,
    this.choiceLabelBuilder,
    this.choiceAvatarBuilder,
    this.choiceBuilder,
    this.spinnerBuilder,
    this.placeholderBuilder,
    this.errorBuilder,
    this.wrapped = false,
    this.padding,
    this.direction = Axis.horizontal,
    this.verticalDirection = VerticalDirection.down,
    this.textDirection,
    this.clipBehavior = Clip.hardEdge,
    this.scrollPhysics,
    this.mainAxisSize = MainAxisSize.max,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.alignment = WrapAlignment.start,
    this.runAlignment = WrapAlignment.start,
    this.wrapCrossAlignment = WrapCrossAlignment.start,
    this.spacing = 10.0,
    this.runSpacing = 0,
    this.placeholder,
    this.placeholderStyle,
    this.placeholderAlign,
    this.errorStyle,
    this.errorAlign,
    this.spinnerSize,
    this.spinnerColor,
    this.spinnerThickness,
  })  : _isMultiChoice = true,
        _value = null,
        _values = value,
        _onChangedSingle = null,
        _onChangedMultiple = onChanged,
        super(key: key);

  /// default padding for scrollable list
  static final EdgeInsetsGeometry defaultScrollablePadding =
      const EdgeInsets.symmetric(horizontal: 10);

  /// default padding for wrapped list
  static final EdgeInsetsGeometry defaultWrappedPadding =
      const EdgeInsets.fromLTRB(15, 10, 15, 10);

  /// default padding for spinner and placeholder
  static final EdgeInsetsGeometry defaultPadding = const EdgeInsets.all(20);

  /// default chip margin in wrapped list
  static final EdgeInsetsGeometry defaultWrappedChipMargin =
      const EdgeInsets.all(0);

  /// default chip margin in scrollable list
  static final EdgeInsetsGeometry defaultScrollableChipMargin =
      const EdgeInsets.all(5);

  /// default placeholder string
  static final String defaultPlaceholder = 'Empty choice items';

  @override
  ChipSelectionState<T> createState() => ChipSelectionState<T>();
}

/// Chips Choice State
class ChipSelectionState<T> extends State<ChipSelection<T>> {
  /// get default theme
  ThemeData get theme => Theme.of(context);

  /// default chip margin
  EdgeInsetsGeometry get defaultChipMargin => widget.wrapped
      ? ChipSelection.defaultWrappedChipMargin
      : ChipSelection.defaultScrollableChipMargin;

  /// default style for unselected choice item
  ChipSelectionItemStyle get defaultChoiceStyle => ChipSelectionItemStyle(
      margin: defaultChipMargin, color: theme.unselectedWidgetColor);

  /// default style for selected choice item
  ChipSelectionItemStyle get defaultActiveChoiceStyle => ChipSelectionItemStyle(
      margin: defaultChipMargin, color: theme.primaryColor);

  /// get placeholder string
  String get placeholder =>
      widget.placeholder ?? ChipSelection.defaultPlaceholder;

  /// choice items
  late List<ChipSelectionData<T>> choiceItems;

  /// choice loader process indicator
  bool loading = false;

  /// choice loader error
  Error? error;

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void initState() {
    super.initState();

    /// initial load choice items
    loadChoiceItems();
  }

  @override
  void didUpdateWidget(ChipSelection<T> oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.choiceItems != widget.choiceItems ||
        oldWidget.choiceLoader != widget.choiceLoader) {
      loadChoiceItems();
    }
  }

  /// load the choice items
  void loadChoiceItems() async {
    try {
      setState(() {
        error = null;
        loading = true;
      });
      if (widget.choiceLoader != null) {
        final List<ChipSelectionData<T>> items = await widget.choiceLoader!();
        setState(() => choiceItems = items);
      } else {
        setState(() => choiceItems = widget.choiceItems);
      }
    } on Error catch (e) {
      setState(() => error = e);
    } finally {
      setState(() => loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return loading == true
        ? ChipSelectionSpinner(
            padding: widget.padding ?? ChipSelection.defaultPadding,
            size: widget.spinnerSize,
            color: widget.spinnerColor,
            thickness: widget.spinnerThickness,
          )
        : choiceItems.isNotEmpty
            ? widget.wrapped != true
                ? listScrollable
                : listWrapped
            : error != null
                ? widget.errorBuilder?.call(context) ??
                    ChipSelectionPlaceholder(
                      padding: widget.padding ?? ChipSelection.defaultPadding,
                      style: widget.errorStyle,
                      align: widget.errorAlign,
                      message: error.toString(),
                    )
                : widget.placeholderBuilder?.call(context) ??
                    ChipSelectionPlaceholder(
                      padding: widget.padding ?? ChipSelection.defaultPadding,
                      style: widget.placeholderStyle,
                      align: widget.placeholderAlign,
                      message: placeholder,
                    );
  }

  /// the scrollable list
  Widget get listScrollable {
    return SingleChildScrollView(
      padding: widget.padding ?? ChipSelection.defaultScrollablePadding,
      scrollDirection: widget.direction,
      clipBehavior: widget.clipBehavior,
      physics: widget.scrollPhysics,
      child: Flex(
        direction: widget.direction,
        verticalDirection: widget.verticalDirection,
        textDirection: widget.textDirection,
        clipBehavior: widget.clipBehavior,
        crossAxisAlignment: widget.crossAxisAlignment,
        mainAxisAlignment: widget.mainAxisAlignment,
        mainAxisSize: widget.mainAxisSize,
        children: choiceChips,
      ),
    );
  }

  Widget get listScrollableVertical {
    return ListView.builder(
      itemCount: choiceItems.length,
      itemBuilder: (context, i) => choiceChipsGenerator(i),
    );
  }

  /// the wrapped list
  Widget get listWrapped {
    return Padding(
      padding: widget.padding ?? ChipSelection.defaultWrappedPadding,
      child: Wrap(
        direction: widget.direction,
        textDirection: widget.textDirection,
        verticalDirection: widget.verticalDirection,
        alignment: widget.alignment,
        runAlignment: widget.runAlignment,
        crossAxisAlignment: widget.wrapCrossAlignment,
        spacing: widget.spacing, // gap between adjacent chips
        runSpacing: widget.runSpacing, // gap between lines
        clipBehavior: widget.clipBehavior,
        children: choiceChips,
      ),
    );
  }

  /// generate the choice chips
  List<Widget> get choiceChips {
    return List<Widget>.generate(choiceItems.length, choiceChipsGenerator)
        .toList();
  }

  /// choice chips generator
  Widget choiceChipsGenerator(int i) {
    final ChipSelectionData<T> item = choiceItems[i].copyWith(
      selected: widget._isMultiChoice
          ? widget._values?.contains(choiceItems[i].value)
          : widget._value == choiceItems[i].value,
      select: _select(choiceItems[i].value),
    );
    return !item.hidden
        ? widget.choiceBuilder?.call(item) ??
            ChipSelectionItem(
              data: item,
              style: defaultChoiceStyle
                  .merge(widget.choiceStyle)
                  .merge(item.style),
              activeStyle: defaultActiveChoiceStyle
                  .merge(widget.choiceStyle)
                  .merge(item.style)
                  .merge(widget.choiceActiveStyle)
                  .merge(item.activeStyle),
              label: widget.choiceLabelBuilder?.call(item),
              avatar: widget.choiceAvatarBuilder?.call(item),
            )
        : SizedBox();
  }

  /// return the selection function
  Function(bool selected) _select(T value) {
    return (bool selected) {
      if (widget._isMultiChoice) {
        List<T> values = List.from(widget._values ?? []);
        if (selected) {
          values.add(value);
        } else {
          values.remove(value);
        }
        widget._onChangedMultiple?.call(values);
      } else {
        widget._onChangedSingle?.call(value);
      }
    };
  }
}

/// default spinner widget
class ChipSelectionSpinner extends StatelessWidget {
  /// spinner padding
  final EdgeInsetsGeometry? padding;

  /// spinner size
  final double? size;

  /// spinner color
  final Color? color;

  /// spinner thickness
  final double? thickness;

  /// default constructor
  const ChipSelectionSpinner({
    Key? key,
    this.padding,
    this.size,
    this.color,
    this.thickness,
  }) : super(key: key);

  /// default spinner padding
  static final EdgeInsetsGeometry defaultPadding = const EdgeInsets.all(25);

  /// default spinner size
  static final double defaultSize = 20;

  /// default spinner thickness
  static final double defaultThickness = 2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? ChipSelectionSpinner.defaultPadding,
      child: Center(
        child: SizedBox(
          width: size ?? ChipSelectionSpinner.defaultSize,
          height: size ?? ChipSelectionSpinner.defaultSize,
          child: CircularProgressIndicator(
            strokeWidth: thickness ?? ChipSelectionSpinner.defaultThickness,
            valueColor: AlwaysStoppedAnimation<Color>(
                color ?? Theme.of(context).accentColor),
          ),
        ),
      ),
    );
  }
}

class ChipSelectionPlaceholder extends StatelessWidget {
  /// String to display
  final String message;

  /// placeholder text style
  final TextStyle? style;

  /// placeholder text align
  final TextAlign? align;

  /// placeholder padding
  final EdgeInsetsGeometry? padding;

  /// default constructor
  const ChipSelectionPlaceholder({
    Key? key,
    required this.message,
    this.style,
    this.align,
    this.padding,
  }) : super(key: key);

  /// default text style
  static final TextStyle defaultStyle = const TextStyle();

  /// default text align
  static final TextAlign defaultAlign = TextAlign.left;

  /// default padding
  static final EdgeInsetsGeometry defaultPadding = const EdgeInsets.all(25);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? ChipSelectionPlaceholder.defaultPadding,
      child: Text(message,
          textAlign: align ?? ChipSelectionPlaceholder.defaultAlign,
          style: ChipSelectionPlaceholder.defaultStyle.merge(style)),
    );
  }
}
