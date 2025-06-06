// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$notesHash() => r'ed36f5adf2166a38510217b79a3b50c8428a9c4a';

/// See also [notes].
@ProviderFor(notes)
final notesProvider =
    AutoDisposeFutureProvider<List<Map<String, dynamic>>>.internal(
  notes,
  name: r'notesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$notesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef NotesRef = AutoDisposeFutureProviderRef<List<Map<String, dynamic>>>;
String _$createNoteHash() => r'00fc6c05c01b25c7fe7a8688a043ae33b57b1d73';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [createNote].
@ProviderFor(createNote)
const createNoteProvider = CreateNoteFamily();

/// See also [createNote].
class CreateNoteFamily extends Family<AsyncValue<void>> {
  /// See also [createNote].
  const CreateNoteFamily();

  /// See also [createNote].
  CreateNoteProvider call({
    required String text,
  }) {
    return CreateNoteProvider(
      text: text,
    );
  }

  @override
  CreateNoteProvider getProviderOverride(
    covariant CreateNoteProvider provider,
  ) {
    return call(
      text: provider.text,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createNoteProvider';
}

/// See also [createNote].
class CreateNoteProvider extends AutoDisposeFutureProvider<void> {
  /// See also [createNote].
  CreateNoteProvider({
    required String text,
  }) : this._internal(
          (ref) => createNote(
            ref as CreateNoteRef,
            text: text,
          ),
          from: createNoteProvider,
          name: r'createNoteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createNoteHash,
          dependencies: CreateNoteFamily._dependencies,
          allTransitiveDependencies:
              CreateNoteFamily._allTransitiveDependencies,
          text: text,
        );

  CreateNoteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.text,
  }) : super.internal();

  final String text;

  @override
  Override overrideWith(
    FutureOr<void> Function(CreateNoteRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateNoteProvider._internal(
        (ref) => create(ref as CreateNoteRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        text: text,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _CreateNoteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateNoteProvider && other.text == text;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, text.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreateNoteRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `text` of this provider.
  String get text;
}

class _CreateNoteProviderElement extends AutoDisposeFutureProviderElement<void>
    with CreateNoteRef {
  _CreateNoteProviderElement(super.provider);

  @override
  String get text => (origin as CreateNoteProvider).text;
}

String _$updateNoteHash() => r'0be2097add4cf6efe1522310e8ab40ba9a484534';

/// See also [updateNote].
@ProviderFor(updateNote)
const updateNoteProvider = UpdateNoteFamily();

/// See also [updateNote].
class UpdateNoteFamily extends Family<AsyncValue<void>> {
  /// See also [updateNote].
  const UpdateNoteFamily();

  /// See also [updateNote].
  UpdateNoteProvider call({
    required String text,
    required int id,
  }) {
    return UpdateNoteProvider(
      text: text,
      id: id,
    );
  }

  @override
  UpdateNoteProvider getProviderOverride(
    covariant UpdateNoteProvider provider,
  ) {
    return call(
      text: provider.text,
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'updateNoteProvider';
}

/// See also [updateNote].
class UpdateNoteProvider extends AutoDisposeFutureProvider<void> {
  /// See also [updateNote].
  UpdateNoteProvider({
    required String text,
    required int id,
  }) : this._internal(
          (ref) => updateNote(
            ref as UpdateNoteRef,
            text: text,
            id: id,
          ),
          from: updateNoteProvider,
          name: r'updateNoteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateNoteHash,
          dependencies: UpdateNoteFamily._dependencies,
          allTransitiveDependencies:
              UpdateNoteFamily._allTransitiveDependencies,
          text: text,
          id: id,
        );

  UpdateNoteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.text,
    required this.id,
  }) : super.internal();

  final String text;
  final int id;

  @override
  Override overrideWith(
    FutureOr<void> Function(UpdateNoteRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateNoteProvider._internal(
        (ref) => create(ref as UpdateNoteRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        text: text,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _UpdateNoteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateNoteProvider && other.text == text && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, text.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdateNoteRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `text` of this provider.
  String get text;

  /// The parameter `id` of this provider.
  int get id;
}

class _UpdateNoteProviderElement extends AutoDisposeFutureProviderElement<void>
    with UpdateNoteRef {
  _UpdateNoteProviderElement(super.provider);

  @override
  String get text => (origin as UpdateNoteProvider).text;
  @override
  int get id => (origin as UpdateNoteProvider).id;
}

String _$deleteNoteHash() => r'e4a59df72d81ab022a1a4b7f083e29b732a2352b';

/// See also [deleteNote].
@ProviderFor(deleteNote)
const deleteNoteProvider = DeleteNoteFamily();

/// See also [deleteNote].
class DeleteNoteFamily extends Family<AsyncValue<void>> {
  /// See also [deleteNote].
  const DeleteNoteFamily();

  /// See also [deleteNote].
  DeleteNoteProvider call({
    required int id,
  }) {
    return DeleteNoteProvider(
      id: id,
    );
  }

  @override
  DeleteNoteProvider getProviderOverride(
    covariant DeleteNoteProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deleteNoteProvider';
}

/// See also [deleteNote].
class DeleteNoteProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteNote].
  DeleteNoteProvider({
    required int id,
  }) : this._internal(
          (ref) => deleteNote(
            ref as DeleteNoteRef,
            id: id,
          ),
          from: deleteNoteProvider,
          name: r'deleteNoteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteNoteHash,
          dependencies: DeleteNoteFamily._dependencies,
          allTransitiveDependencies:
              DeleteNoteFamily._allTransitiveDependencies,
          id: id,
        );

  DeleteNoteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<void> Function(DeleteNoteRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteNoteProvider._internal(
        (ref) => create(ref as DeleteNoteRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _DeleteNoteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteNoteProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DeleteNoteRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `id` of this provider.
  int get id;
}

class _DeleteNoteProviderElement extends AutoDisposeFutureProviderElement<void>
    with DeleteNoteRef {
  _DeleteNoteProviderElement(super.provider);

  @override
  int get id => (origin as DeleteNoteProvider).id;
}

String _$noteRepositoryHash() => r'8ffd004f27c380d0e4b6d6473ead8f89fe1b8535';

/// See also [noteRepository].
@ProviderFor(noteRepository)
final noteRepositoryProvider = AutoDisposeProvider<NoteRepository>.internal(
  noteRepository,
  name: r'noteRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$noteRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef NoteRepositoryRef = AutoDisposeProviderRef<NoteRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
