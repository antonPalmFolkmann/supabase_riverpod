# Supabase Riverpod

---

## Goals for the project

### Step 1 - get it working
- [x] Create note
- [x] Read note
- [x] Update note
- [x] Delete note

### Step 2 - abstraction
- [x] Note repository
- [x] Supabase injectable service

---

## Commands

### Run

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

### Test

```sh
$ flutter test --coverage --test-randomize-ordering-seed random
```