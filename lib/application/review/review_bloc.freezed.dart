// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'review_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ReviewEventTearOff {
  const _$ReviewEventTearOff();

  Initial initial(Option<Review> initReview) {
    return Initial(
      initReview,
    );
  }

  RateChanged rateChanged(double rate) {
    return RateChanged(
      rate,
    );
  }

  CommentChanged commentChanged(String comment) {
    return CommentChanged(
      comment,
    );
  }

  Saved saved() {
    return const Saved();
  }

  Update update(Review currentReview) {
    return Update(
      currentReview,
    );
  }

  RemoveReview removeReview(Review review) {
    return RemoveReview(
      review,
    );
  }
}

// ignore: unused_element
const $ReviewEvent = _$ReviewEventTearOff();

mixin _$ReviewEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Option<Review> initReview),
    @required Result rateChanged(double rate),
    @required Result commentChanged(String comment),
    @required Result saved(),
    @required Result update(Review currentReview),
    @required Result removeReview(Review review),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Option<Review> initReview),
    Result rateChanged(double rate),
    Result commentChanged(String comment),
    Result saved(),
    Result update(Review currentReview),
    Result removeReview(Review review),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result rateChanged(RateChanged value),
    @required Result commentChanged(CommentChanged value),
    @required Result saved(Saved value),
    @required Result update(Update value),
    @required Result removeReview(RemoveReview value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result rateChanged(RateChanged value),
    Result commentChanged(CommentChanged value),
    Result saved(Saved value),
    Result update(Update value),
    Result removeReview(RemoveReview value),
    @required Result orElse(),
  });
}

abstract class $ReviewEventCopyWith<$Res> {
  factory $ReviewEventCopyWith(
          ReviewEvent value, $Res Function(ReviewEvent) then) =
      _$ReviewEventCopyWithImpl<$Res>;
}

class _$ReviewEventCopyWithImpl<$Res> implements $ReviewEventCopyWith<$Res> {
  _$ReviewEventCopyWithImpl(this._value, this._then);

  final ReviewEvent _value;
  // ignore: unused_field
  final $Res Function(ReviewEvent) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  $Res call({Option<Review> initReview});
}

class _$InitialCopyWithImpl<$Res> extends _$ReviewEventCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;

  @override
  $Res call({
    Object initReview = freezed,
  }) {
    return _then(Initial(
      initReview == freezed ? _value.initReview : initReview as Option<Review>,
    ));
  }
}

class _$Initial implements Initial {
  const _$Initial(this.initReview) : assert(initReview != null);

  @override
  final Option<Review> initReview;

  @override
  String toString() {
    return 'ReviewEvent.initial(initReview: $initReview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initial &&
            (identical(other.initReview, initReview) ||
                const DeepCollectionEquality()
                    .equals(other.initReview, initReview)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(initReview);

  @override
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Option<Review> initReview),
    @required Result rateChanged(double rate),
    @required Result commentChanged(String comment),
    @required Result saved(),
    @required Result update(Review currentReview),
    @required Result removeReview(Review review),
  }) {
    assert(initial != null);
    assert(rateChanged != null);
    assert(commentChanged != null);
    assert(saved != null);
    assert(update != null);
    assert(removeReview != null);
    return initial(initReview);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Option<Review> initReview),
    Result rateChanged(double rate),
    Result commentChanged(String comment),
    Result saved(),
    Result update(Review currentReview),
    Result removeReview(Review review),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(initReview);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result rateChanged(RateChanged value),
    @required Result commentChanged(CommentChanged value),
    @required Result saved(Saved value),
    @required Result update(Update value),
    @required Result removeReview(RemoveReview value),
  }) {
    assert(initial != null);
    assert(rateChanged != null);
    assert(commentChanged != null);
    assert(saved != null);
    assert(update != null);
    assert(removeReview != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result rateChanged(RateChanged value),
    Result commentChanged(CommentChanged value),
    Result saved(Saved value),
    Result update(Update value),
    Result removeReview(RemoveReview value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ReviewEvent {
  const factory Initial(Option<Review> initReview) = _$Initial;

  Option<Review> get initReview;
  $InitialCopyWith<Initial> get copyWith;
}

abstract class $RateChangedCopyWith<$Res> {
  factory $RateChangedCopyWith(
          RateChanged value, $Res Function(RateChanged) then) =
      _$RateChangedCopyWithImpl<$Res>;
  $Res call({double rate});
}

class _$RateChangedCopyWithImpl<$Res> extends _$ReviewEventCopyWithImpl<$Res>
    implements $RateChangedCopyWith<$Res> {
  _$RateChangedCopyWithImpl(
      RateChanged _value, $Res Function(RateChanged) _then)
      : super(_value, (v) => _then(v as RateChanged));

  @override
  RateChanged get _value => super._value as RateChanged;

  @override
  $Res call({
    Object rate = freezed,
  }) {
    return _then(RateChanged(
      rate == freezed ? _value.rate : rate as double,
    ));
  }
}

class _$RateChanged implements RateChanged {
  const _$RateChanged(this.rate) : assert(rate != null);

  @override
  final double rate;

  @override
  String toString() {
    return 'ReviewEvent.rateChanged(rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RateChanged &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(rate);

  @override
  $RateChangedCopyWith<RateChanged> get copyWith =>
      _$RateChangedCopyWithImpl<RateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Option<Review> initReview),
    @required Result rateChanged(double rate),
    @required Result commentChanged(String comment),
    @required Result saved(),
    @required Result update(Review currentReview),
    @required Result removeReview(Review review),
  }) {
    assert(initial != null);
    assert(rateChanged != null);
    assert(commentChanged != null);
    assert(saved != null);
    assert(update != null);
    assert(removeReview != null);
    return rateChanged(rate);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Option<Review> initReview),
    Result rateChanged(double rate),
    Result commentChanged(String comment),
    Result saved(),
    Result update(Review currentReview),
    Result removeReview(Review review),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rateChanged != null) {
      return rateChanged(rate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result rateChanged(RateChanged value),
    @required Result commentChanged(CommentChanged value),
    @required Result saved(Saved value),
    @required Result update(Update value),
    @required Result removeReview(RemoveReview value),
  }) {
    assert(initial != null);
    assert(rateChanged != null);
    assert(commentChanged != null);
    assert(saved != null);
    assert(update != null);
    assert(removeReview != null);
    return rateChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result rateChanged(RateChanged value),
    Result commentChanged(CommentChanged value),
    Result saved(Saved value),
    Result update(Update value),
    Result removeReview(RemoveReview value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rateChanged != null) {
      return rateChanged(this);
    }
    return orElse();
  }
}

abstract class RateChanged implements ReviewEvent {
  const factory RateChanged(double rate) = _$RateChanged;

  double get rate;
  $RateChangedCopyWith<RateChanged> get copyWith;
}

abstract class $CommentChangedCopyWith<$Res> {
  factory $CommentChangedCopyWith(
          CommentChanged value, $Res Function(CommentChanged) then) =
      _$CommentChangedCopyWithImpl<$Res>;
  $Res call({String comment});
}

class _$CommentChangedCopyWithImpl<$Res> extends _$ReviewEventCopyWithImpl<$Res>
    implements $CommentChangedCopyWith<$Res> {
  _$CommentChangedCopyWithImpl(
      CommentChanged _value, $Res Function(CommentChanged) _then)
      : super(_value, (v) => _then(v as CommentChanged));

  @override
  CommentChanged get _value => super._value as CommentChanged;

  @override
  $Res call({
    Object comment = freezed,
  }) {
    return _then(CommentChanged(
      comment == freezed ? _value.comment : comment as String,
    ));
  }
}

class _$CommentChanged implements CommentChanged {
  const _$CommentChanged(this.comment) : assert(comment != null);

  @override
  final String comment;

  @override
  String toString() {
    return 'ReviewEvent.commentChanged(comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommentChanged &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(other.comment, comment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(comment);

  @override
  $CommentChangedCopyWith<CommentChanged> get copyWith =>
      _$CommentChangedCopyWithImpl<CommentChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Option<Review> initReview),
    @required Result rateChanged(double rate),
    @required Result commentChanged(String comment),
    @required Result saved(),
    @required Result update(Review currentReview),
    @required Result removeReview(Review review),
  }) {
    assert(initial != null);
    assert(rateChanged != null);
    assert(commentChanged != null);
    assert(saved != null);
    assert(update != null);
    assert(removeReview != null);
    return commentChanged(comment);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Option<Review> initReview),
    Result rateChanged(double rate),
    Result commentChanged(String comment),
    Result saved(),
    Result update(Review currentReview),
    Result removeReview(Review review),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (commentChanged != null) {
      return commentChanged(comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result rateChanged(RateChanged value),
    @required Result commentChanged(CommentChanged value),
    @required Result saved(Saved value),
    @required Result update(Update value),
    @required Result removeReview(RemoveReview value),
  }) {
    assert(initial != null);
    assert(rateChanged != null);
    assert(commentChanged != null);
    assert(saved != null);
    assert(update != null);
    assert(removeReview != null);
    return commentChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result rateChanged(RateChanged value),
    Result commentChanged(CommentChanged value),
    Result saved(Saved value),
    Result update(Update value),
    Result removeReview(RemoveReview value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (commentChanged != null) {
      return commentChanged(this);
    }
    return orElse();
  }
}

abstract class CommentChanged implements ReviewEvent {
  const factory CommentChanged(String comment) = _$CommentChanged;

  String get comment;
  $CommentChangedCopyWith<CommentChanged> get copyWith;
}

abstract class $SavedCopyWith<$Res> {
  factory $SavedCopyWith(Saved value, $Res Function(Saved) then) =
      _$SavedCopyWithImpl<$Res>;
}

class _$SavedCopyWithImpl<$Res> extends _$ReviewEventCopyWithImpl<$Res>
    implements $SavedCopyWith<$Res> {
  _$SavedCopyWithImpl(Saved _value, $Res Function(Saved) _then)
      : super(_value, (v) => _then(v as Saved));

  @override
  Saved get _value => super._value as Saved;
}

class _$Saved implements Saved {
  const _$Saved();

  @override
  String toString() {
    return 'ReviewEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Option<Review> initReview),
    @required Result rateChanged(double rate),
    @required Result commentChanged(String comment),
    @required Result saved(),
    @required Result update(Review currentReview),
    @required Result removeReview(Review review),
  }) {
    assert(initial != null);
    assert(rateChanged != null);
    assert(commentChanged != null);
    assert(saved != null);
    assert(update != null);
    assert(removeReview != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Option<Review> initReview),
    Result rateChanged(double rate),
    Result commentChanged(String comment),
    Result saved(),
    Result update(Review currentReview),
    Result removeReview(Review review),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result rateChanged(RateChanged value),
    @required Result commentChanged(CommentChanged value),
    @required Result saved(Saved value),
    @required Result update(Update value),
    @required Result removeReview(RemoveReview value),
  }) {
    assert(initial != null);
    assert(rateChanged != null);
    assert(commentChanged != null);
    assert(saved != null);
    assert(update != null);
    assert(removeReview != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result rateChanged(RateChanged value),
    Result commentChanged(CommentChanged value),
    Result saved(Saved value),
    Result update(Update value),
    Result removeReview(RemoveReview value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class Saved implements ReviewEvent {
  const factory Saved() = _$Saved;
}

abstract class $UpdateCopyWith<$Res> {
  factory $UpdateCopyWith(Update value, $Res Function(Update) then) =
      _$UpdateCopyWithImpl<$Res>;
  $Res call({Review currentReview});

  $ReviewCopyWith<$Res> get currentReview;
}

class _$UpdateCopyWithImpl<$Res> extends _$ReviewEventCopyWithImpl<$Res>
    implements $UpdateCopyWith<$Res> {
  _$UpdateCopyWithImpl(Update _value, $Res Function(Update) _then)
      : super(_value, (v) => _then(v as Update));

  @override
  Update get _value => super._value as Update;

  @override
  $Res call({
    Object currentReview = freezed,
  }) {
    return _then(Update(
      currentReview == freezed ? _value.currentReview : currentReview as Review,
    ));
  }

  @override
  $ReviewCopyWith<$Res> get currentReview {
    if (_value.currentReview == null) {
      return null;
    }
    return $ReviewCopyWith<$Res>(_value.currentReview, (value) {
      return _then(_value.copyWith(currentReview: value));
    });
  }
}

class _$Update implements Update {
  const _$Update(this.currentReview) : assert(currentReview != null);

  @override
  final Review currentReview;

  @override
  String toString() {
    return 'ReviewEvent.update(currentReview: $currentReview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Update &&
            (identical(other.currentReview, currentReview) ||
                const DeepCollectionEquality()
                    .equals(other.currentReview, currentReview)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentReview);

  @override
  $UpdateCopyWith<Update> get copyWith =>
      _$UpdateCopyWithImpl<Update>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Option<Review> initReview),
    @required Result rateChanged(double rate),
    @required Result commentChanged(String comment),
    @required Result saved(),
    @required Result update(Review currentReview),
    @required Result removeReview(Review review),
  }) {
    assert(initial != null);
    assert(rateChanged != null);
    assert(commentChanged != null);
    assert(saved != null);
    assert(update != null);
    assert(removeReview != null);
    return update(currentReview);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Option<Review> initReview),
    Result rateChanged(double rate),
    Result commentChanged(String comment),
    Result saved(),
    Result update(Review currentReview),
    Result removeReview(Review review),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(currentReview);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result rateChanged(RateChanged value),
    @required Result commentChanged(CommentChanged value),
    @required Result saved(Saved value),
    @required Result update(Update value),
    @required Result removeReview(RemoveReview value),
  }) {
    assert(initial != null);
    assert(rateChanged != null);
    assert(commentChanged != null);
    assert(saved != null);
    assert(update != null);
    assert(removeReview != null);
    return update(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result rateChanged(RateChanged value),
    Result commentChanged(CommentChanged value),
    Result saved(Saved value),
    Result update(Update value),
    Result removeReview(RemoveReview value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class Update implements ReviewEvent {
  const factory Update(Review currentReview) = _$Update;

  Review get currentReview;
  $UpdateCopyWith<Update> get copyWith;
}

abstract class $RemoveReviewCopyWith<$Res> {
  factory $RemoveReviewCopyWith(
          RemoveReview value, $Res Function(RemoveReview) then) =
      _$RemoveReviewCopyWithImpl<$Res>;
  $Res call({Review review});

  $ReviewCopyWith<$Res> get review;
}

class _$RemoveReviewCopyWithImpl<$Res> extends _$ReviewEventCopyWithImpl<$Res>
    implements $RemoveReviewCopyWith<$Res> {
  _$RemoveReviewCopyWithImpl(
      RemoveReview _value, $Res Function(RemoveReview) _then)
      : super(_value, (v) => _then(v as RemoveReview));

  @override
  RemoveReview get _value => super._value as RemoveReview;

  @override
  $Res call({
    Object review = freezed,
  }) {
    return _then(RemoveReview(
      review == freezed ? _value.review : review as Review,
    ));
  }

  @override
  $ReviewCopyWith<$Res> get review {
    if (_value.review == null) {
      return null;
    }
    return $ReviewCopyWith<$Res>(_value.review, (value) {
      return _then(_value.copyWith(review: value));
    });
  }
}

class _$RemoveReview implements RemoveReview {
  const _$RemoveReview(this.review) : assert(review != null);

  @override
  final Review review;

  @override
  String toString() {
    return 'ReviewEvent.removeReview(review: $review)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveReview &&
            (identical(other.review, review) ||
                const DeepCollectionEquality().equals(other.review, review)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(review);

  @override
  $RemoveReviewCopyWith<RemoveReview> get copyWith =>
      _$RemoveReviewCopyWithImpl<RemoveReview>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Option<Review> initReview),
    @required Result rateChanged(double rate),
    @required Result commentChanged(String comment),
    @required Result saved(),
    @required Result update(Review currentReview),
    @required Result removeReview(Review review),
  }) {
    assert(initial != null);
    assert(rateChanged != null);
    assert(commentChanged != null);
    assert(saved != null);
    assert(update != null);
    assert(removeReview != null);
    return removeReview(review);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Option<Review> initReview),
    Result rateChanged(double rate),
    Result commentChanged(String comment),
    Result saved(),
    Result update(Review currentReview),
    Result removeReview(Review review),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeReview != null) {
      return removeReview(review);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result rateChanged(RateChanged value),
    @required Result commentChanged(CommentChanged value),
    @required Result saved(Saved value),
    @required Result update(Update value),
    @required Result removeReview(RemoveReview value),
  }) {
    assert(initial != null);
    assert(rateChanged != null);
    assert(commentChanged != null);
    assert(saved != null);
    assert(update != null);
    assert(removeReview != null);
    return removeReview(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result rateChanged(RateChanged value),
    Result commentChanged(CommentChanged value),
    Result saved(Saved value),
    Result update(Update value),
    Result removeReview(RemoveReview value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeReview != null) {
      return removeReview(this);
    }
    return orElse();
  }
}

abstract class RemoveReview implements ReviewEvent {
  const factory RemoveReview(Review review) = _$RemoveReview;

  Review get review;
  $RemoveReviewCopyWith<RemoveReview> get copyWith;
}

class _$ReviewStateTearOff {
  const _$ReviewStateTearOff();

  _ReviewState call(
      {@required Review review,
      @required bool showErrorMessages,
      @required bool isSubmitting}) {
    return _ReviewState(
      review: review,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
    );
  }
}

// ignore: unused_element
const $ReviewState = _$ReviewStateTearOff();

mixin _$ReviewState {
  Review get review;
  bool get showErrorMessages;
  bool get isSubmitting;

  $ReviewStateCopyWith<ReviewState> get copyWith;
}

abstract class $ReviewStateCopyWith<$Res> {
  factory $ReviewStateCopyWith(
          ReviewState value, $Res Function(ReviewState) then) =
      _$ReviewStateCopyWithImpl<$Res>;
  $Res call({Review review, bool showErrorMessages, bool isSubmitting});

  $ReviewCopyWith<$Res> get review;
}

class _$ReviewStateCopyWithImpl<$Res> implements $ReviewStateCopyWith<$Res> {
  _$ReviewStateCopyWithImpl(this._value, this._then);

  final ReviewState _value;
  // ignore: unused_field
  final $Res Function(ReviewState) _then;

  @override
  $Res call({
    Object review = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      review: review == freezed ? _value.review : review as Review,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }

  @override
  $ReviewCopyWith<$Res> get review {
    if (_value.review == null) {
      return null;
    }
    return $ReviewCopyWith<$Res>(_value.review, (value) {
      return _then(_value.copyWith(review: value));
    });
  }
}

abstract class _$ReviewStateCopyWith<$Res>
    implements $ReviewStateCopyWith<$Res> {
  factory _$ReviewStateCopyWith(
          _ReviewState value, $Res Function(_ReviewState) then) =
      __$ReviewStateCopyWithImpl<$Res>;
  @override
  $Res call({Review review, bool showErrorMessages, bool isSubmitting});

  @override
  $ReviewCopyWith<$Res> get review;
}

class __$ReviewStateCopyWithImpl<$Res> extends _$ReviewStateCopyWithImpl<$Res>
    implements _$ReviewStateCopyWith<$Res> {
  __$ReviewStateCopyWithImpl(
      _ReviewState _value, $Res Function(_ReviewState) _then)
      : super(_value, (v) => _then(v as _ReviewState));

  @override
  _ReviewState get _value => super._value as _ReviewState;

  @override
  $Res call({
    Object review = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_ReviewState(
      review: review == freezed ? _value.review : review as Review,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

class _$_ReviewState implements _ReviewState {
  const _$_ReviewState(
      {@required this.review,
      @required this.showErrorMessages,
      @required this.isSubmitting})
      : assert(review != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null);

  @override
  final Review review;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'ReviewState(review: $review, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewState &&
            (identical(other.review, review) ||
                const DeepCollectionEquality().equals(other.review, review)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(review) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting);

  @override
  _$ReviewStateCopyWith<_ReviewState> get copyWith =>
      __$ReviewStateCopyWithImpl<_ReviewState>(this, _$identity);
}

abstract class _ReviewState implements ReviewState {
  const factory _ReviewState(
      {@required Review review,
      @required bool showErrorMessages,
      @required bool isSubmitting}) = _$_ReviewState;

  @override
  Review get review;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  _$ReviewStateCopyWith<_ReviewState> get copyWith;
}
