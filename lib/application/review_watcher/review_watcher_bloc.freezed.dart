// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'review_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ReviewWatcherEventTearOff {
  const _$ReviewWatcherEventTearOff();

  _WatchAll watchAll(Product product) {
    return _WatchAll(
      product,
    );
  }

  _GetCurrentReviews getCurrentReviews() {
    return const _GetCurrentReviews();
  }

  _ReviewReceived reviewReceived(
      Either<ReviewFailure, List<Review>> failureOrReviews) {
    return _ReviewReceived(
      failureOrReviews,
    );
  }
}

// ignore: unused_element
const $ReviewWatcherEvent = _$ReviewWatcherEventTearOff();

mixin _$ReviewWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAll(Product product),
    @required Result getCurrentReviews(),
    @required
        Result reviewReceived(
            Either<ReviewFailure, List<Review>> failureOrReviews),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAll(Product product),
    Result getCurrentReviews(),
    Result reviewReceived(Either<ReviewFailure, List<Review>> failureOrReviews),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAll(_WatchAll value),
    @required Result getCurrentReviews(_GetCurrentReviews value),
    @required Result reviewReceived(_ReviewReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAll(_WatchAll value),
    Result getCurrentReviews(_GetCurrentReviews value),
    Result reviewReceived(_ReviewReceived value),
    @required Result orElse(),
  });
}

abstract class $ReviewWatcherEventCopyWith<$Res> {
  factory $ReviewWatcherEventCopyWith(
          ReviewWatcherEvent value, $Res Function(ReviewWatcherEvent) then) =
      _$ReviewWatcherEventCopyWithImpl<$Res>;
}

class _$ReviewWatcherEventCopyWithImpl<$Res>
    implements $ReviewWatcherEventCopyWith<$Res> {
  _$ReviewWatcherEventCopyWithImpl(this._value, this._then);

  final ReviewWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ReviewWatcherEvent) _then;
}

abstract class _$WatchAllCopyWith<$Res> {
  factory _$WatchAllCopyWith(_WatchAll value, $Res Function(_WatchAll) then) =
      __$WatchAllCopyWithImpl<$Res>;
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

class __$WatchAllCopyWithImpl<$Res>
    extends _$ReviewWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllCopyWith<$Res> {
  __$WatchAllCopyWithImpl(_WatchAll _value, $Res Function(_WatchAll) _then)
      : super(_value, (v) => _then(v as _WatchAll));

  @override
  _WatchAll get _value => super._value as _WatchAll;

  @override
  $Res call({
    Object product = freezed,
  }) {
    return _then(_WatchAll(
      product == freezed ? _value.product : product as Product,
    ));
  }

  @override
  $ProductCopyWith<$Res> get product {
    if (_value.product == null) {
      return null;
    }
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

class _$_WatchAll implements _WatchAll {
  const _$_WatchAll(this.product) : assert(product != null);

  @override
  final Product product;

  @override
  String toString() {
    return 'ReviewWatcherEvent.watchAll(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAll &&
            (identical(other.product, product) ||
                const DeepCollectionEquality().equals(other.product, product)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(product);

  @override
  _$WatchAllCopyWith<_WatchAll> get copyWith =>
      __$WatchAllCopyWithImpl<_WatchAll>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAll(Product product),
    @required Result getCurrentReviews(),
    @required
        Result reviewReceived(
            Either<ReviewFailure, List<Review>> failureOrReviews),
  }) {
    assert(watchAll != null);
    assert(getCurrentReviews != null);
    assert(reviewReceived != null);
    return watchAll(product);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAll(Product product),
    Result getCurrentReviews(),
    Result reviewReceived(Either<ReviewFailure, List<Review>> failureOrReviews),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAll != null) {
      return watchAll(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAll(_WatchAll value),
    @required Result getCurrentReviews(_GetCurrentReviews value),
    @required Result reviewReceived(_ReviewReceived value),
  }) {
    assert(watchAll != null);
    assert(getCurrentReviews != null);
    assert(reviewReceived != null);
    return watchAll(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAll(_WatchAll value),
    Result getCurrentReviews(_GetCurrentReviews value),
    Result reviewReceived(_ReviewReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAll != null) {
      return watchAll(this);
    }
    return orElse();
  }
}

abstract class _WatchAll implements ReviewWatcherEvent {
  const factory _WatchAll(Product product) = _$_WatchAll;

  Product get product;
  _$WatchAllCopyWith<_WatchAll> get copyWith;
}

abstract class _$GetCurrentReviewsCopyWith<$Res> {
  factory _$GetCurrentReviewsCopyWith(
          _GetCurrentReviews value, $Res Function(_GetCurrentReviews) then) =
      __$GetCurrentReviewsCopyWithImpl<$Res>;
}

class __$GetCurrentReviewsCopyWithImpl<$Res>
    extends _$ReviewWatcherEventCopyWithImpl<$Res>
    implements _$GetCurrentReviewsCopyWith<$Res> {
  __$GetCurrentReviewsCopyWithImpl(
      _GetCurrentReviews _value, $Res Function(_GetCurrentReviews) _then)
      : super(_value, (v) => _then(v as _GetCurrentReviews));

  @override
  _GetCurrentReviews get _value => super._value as _GetCurrentReviews;
}

class _$_GetCurrentReviews implements _GetCurrentReviews {
  const _$_GetCurrentReviews();

  @override
  String toString() {
    return 'ReviewWatcherEvent.getCurrentReviews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetCurrentReviews);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAll(Product product),
    @required Result getCurrentReviews(),
    @required
        Result reviewReceived(
            Either<ReviewFailure, List<Review>> failureOrReviews),
  }) {
    assert(watchAll != null);
    assert(getCurrentReviews != null);
    assert(reviewReceived != null);
    return getCurrentReviews();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAll(Product product),
    Result getCurrentReviews(),
    Result reviewReceived(Either<ReviewFailure, List<Review>> failureOrReviews),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCurrentReviews != null) {
      return getCurrentReviews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAll(_WatchAll value),
    @required Result getCurrentReviews(_GetCurrentReviews value),
    @required Result reviewReceived(_ReviewReceived value),
  }) {
    assert(watchAll != null);
    assert(getCurrentReviews != null);
    assert(reviewReceived != null);
    return getCurrentReviews(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAll(_WatchAll value),
    Result getCurrentReviews(_GetCurrentReviews value),
    Result reviewReceived(_ReviewReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCurrentReviews != null) {
      return getCurrentReviews(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentReviews implements ReviewWatcherEvent {
  const factory _GetCurrentReviews() = _$_GetCurrentReviews;
}

abstract class _$ReviewReceivedCopyWith<$Res> {
  factory _$ReviewReceivedCopyWith(
          _ReviewReceived value, $Res Function(_ReviewReceived) then) =
      __$ReviewReceivedCopyWithImpl<$Res>;
  $Res call({Either<ReviewFailure, List<Review>> failureOrReviews});
}

class __$ReviewReceivedCopyWithImpl<$Res>
    extends _$ReviewWatcherEventCopyWithImpl<$Res>
    implements _$ReviewReceivedCopyWith<$Res> {
  __$ReviewReceivedCopyWithImpl(
      _ReviewReceived _value, $Res Function(_ReviewReceived) _then)
      : super(_value, (v) => _then(v as _ReviewReceived));

  @override
  _ReviewReceived get _value => super._value as _ReviewReceived;

  @override
  $Res call({
    Object failureOrReviews = freezed,
  }) {
    return _then(_ReviewReceived(
      failureOrReviews == freezed
          ? _value.failureOrReviews
          : failureOrReviews as Either<ReviewFailure, List<Review>>,
    ));
  }
}

class _$_ReviewReceived implements _ReviewReceived {
  const _$_ReviewReceived(this.failureOrReviews)
      : assert(failureOrReviews != null);

  @override
  final Either<ReviewFailure, List<Review>> failureOrReviews;

  @override
  String toString() {
    return 'ReviewWatcherEvent.reviewReceived(failureOrReviews: $failureOrReviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewReceived &&
            (identical(other.failureOrReviews, failureOrReviews) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrReviews, failureOrReviews)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrReviews);

  @override
  _$ReviewReceivedCopyWith<_ReviewReceived> get copyWith =>
      __$ReviewReceivedCopyWithImpl<_ReviewReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAll(Product product),
    @required Result getCurrentReviews(),
    @required
        Result reviewReceived(
            Either<ReviewFailure, List<Review>> failureOrReviews),
  }) {
    assert(watchAll != null);
    assert(getCurrentReviews != null);
    assert(reviewReceived != null);
    return reviewReceived(failureOrReviews);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAll(Product product),
    Result getCurrentReviews(),
    Result reviewReceived(Either<ReviewFailure, List<Review>> failureOrReviews),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reviewReceived != null) {
      return reviewReceived(failureOrReviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAll(_WatchAll value),
    @required Result getCurrentReviews(_GetCurrentReviews value),
    @required Result reviewReceived(_ReviewReceived value),
  }) {
    assert(watchAll != null);
    assert(getCurrentReviews != null);
    assert(reviewReceived != null);
    return reviewReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAll(_WatchAll value),
    Result getCurrentReviews(_GetCurrentReviews value),
    Result reviewReceived(_ReviewReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reviewReceived != null) {
      return reviewReceived(this);
    }
    return orElse();
  }
}

abstract class _ReviewReceived implements ReviewWatcherEvent {
  const factory _ReviewReceived(
      Either<ReviewFailure, List<Review>> failureOrReviews) = _$_ReviewReceived;

  Either<ReviewFailure, List<Review>> get failureOrReviews;
  _$ReviewReceivedCopyWith<_ReviewReceived> get copyWith;
}

class _$ReviewWatcherStateTearOff {
  const _$ReviewWatcherStateTearOff();

  Initial initial() {
    return const Initial();
  }

  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

  LoadSuccess loadSuccess(List<Review> reviews, @nullable Review userReview) {
    return LoadSuccess(
      reviews,
      userReview,
    );
  }

  LoadFailure loadFailure(ReviewFailure reviewFailure) {
    return LoadFailure(
      reviewFailure,
    );
  }
}

// ignore: unused_element
const $ReviewWatcherState = _$ReviewWatcherStateTearOff();

mixin _$ReviewWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result loadSuccess(List<Review> reviews, @nullable Review userReview),
    @required Result loadFailure(ReviewFailure reviewFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Review> reviews, @nullable Review userReview),
    Result loadFailure(ReviewFailure reviewFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $ReviewWatcherStateCopyWith<$Res> {
  factory $ReviewWatcherStateCopyWith(
          ReviewWatcherState value, $Res Function(ReviewWatcherState) then) =
      _$ReviewWatcherStateCopyWithImpl<$Res>;
}

class _$ReviewWatcherStateCopyWithImpl<$Res>
    implements $ReviewWatcherStateCopyWith<$Res> {
  _$ReviewWatcherStateCopyWithImpl(this._value, this._then);

  final ReviewWatcherState _value;
  // ignore: unused_field
  final $Res Function(ReviewWatcherState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$ReviewWatcherStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ReviewWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result loadSuccess(List<Review> reviews, @nullable Review userReview),
    @required Result loadFailure(ReviewFailure reviewFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Review> reviews, @nullable Review userReview),
    Result loadFailure(ReviewFailure reviewFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ReviewWatcherState {
  const factory Initial() = _$Initial;
}

abstract class $DataTransferInProgressCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
}

class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$ReviewWatcherStateCopyWithImpl<$Res>
    implements $DataTransferInProgressCopyWith<$Res> {
  _$DataTransferInProgressCopyWithImpl(DataTransferInProgress _value,
      $Res Function(DataTransferInProgress) _then)
      : super(_value, (v) => _then(v as DataTransferInProgress));

  @override
  DataTransferInProgress get _value => super._value as DataTransferInProgress;
}

class _$DataTransferInProgress implements DataTransferInProgress {
  const _$DataTransferInProgress();

  @override
  String toString() {
    return 'ReviewWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DataTransferInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result loadSuccess(List<Review> reviews, @nullable Review userReview),
    @required Result loadFailure(ReviewFailure reviewFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Review> reviews, @nullable Review userReview),
    Result loadFailure(ReviewFailure reviewFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class DataTransferInProgress implements ReviewWatcherState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Review> reviews, @nullable Review userReview});

  $ReviewCopyWith<$Res> get userReview;
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$ReviewWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object reviews = freezed,
    Object userReview = freezed,
  }) {
    return _then(LoadSuccess(
      reviews == freezed ? _value.reviews : reviews as List<Review>,
      userReview == freezed ? _value.userReview : userReview as Review,
    ));
  }

  @override
  $ReviewCopyWith<$Res> get userReview {
    if (_value.userReview == null) {
      return null;
    }
    return $ReviewCopyWith<$Res>(_value.userReview, (value) {
      return _then(_value.copyWith(userReview: value));
    });
  }
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.reviews, @nullable this.userReview)
      : assert(reviews != null);

  @override
  final List<Review> reviews;
  @override
  @nullable
  final Review userReview;

  @override
  String toString() {
    return 'ReviewWatcherState.loadSuccess(reviews: $reviews, userReview: $userReview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.reviews, reviews) ||
                const DeepCollectionEquality()
                    .equals(other.reviews, reviews)) &&
            (identical(other.userReview, userReview) ||
                const DeepCollectionEquality()
                    .equals(other.userReview, userReview)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reviews) ^
      const DeepCollectionEquality().hash(userReview);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result loadSuccess(List<Review> reviews, @nullable Review userReview),
    @required Result loadFailure(ReviewFailure reviewFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(reviews, userReview);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Review> reviews, @nullable Review userReview),
    Result loadFailure(ReviewFailure reviewFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(reviews, userReview);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements ReviewWatcherState {
  const factory LoadSuccess(List<Review> reviews, @nullable Review userReview) =
      _$LoadSuccess;

  List<Review> get reviews;
  @nullable
  Review get userReview;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({ReviewFailure reviewFailure});

  $ReviewFailureCopyWith<$Res> get reviewFailure;
}

class _$LoadFailureCopyWithImpl<$Res>
    extends _$ReviewWatcherStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object reviewFailure = freezed,
  }) {
    return _then(LoadFailure(
      reviewFailure == freezed
          ? _value.reviewFailure
          : reviewFailure as ReviewFailure,
    ));
  }

  @override
  $ReviewFailureCopyWith<$Res> get reviewFailure {
    if (_value.reviewFailure == null) {
      return null;
    }
    return $ReviewFailureCopyWith<$Res>(_value.reviewFailure, (value) {
      return _then(_value.copyWith(reviewFailure: value));
    });
  }
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.reviewFailure) : assert(reviewFailure != null);

  @override
  final ReviewFailure reviewFailure;

  @override
  String toString() {
    return 'ReviewWatcherState.loadFailure(reviewFailure: $reviewFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.reviewFailure, reviewFailure) ||
                const DeepCollectionEquality()
                    .equals(other.reviewFailure, reviewFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reviewFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result loadSuccess(List<Review> reviews, @nullable Review userReview),
    @required Result loadFailure(ReviewFailure reviewFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(reviewFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Review> reviews, @nullable Review userReview),
    Result loadFailure(ReviewFailure reviewFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(reviewFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements ReviewWatcherState {
  const factory LoadFailure(ReviewFailure reviewFailure) = _$LoadFailure;

  ReviewFailure get reviewFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
