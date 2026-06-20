# Dedalo PocketBase Dart SDK

[![Dedalo101](https://img.shields.io/badge/maintained%20by-Dedalo101-blue)](https://github.com/Dedalo101)

**Independent** Dart/Flutter SDK for [PocketBase](https://pocketbase.io), maintained by Dedalo101 for the artist platform and Core stack.

> Not a GitHub fork. Based on [pocketbase/dart-sdk](https://github.com/pocketbase/dart-sdk) (MIT). See [UPSTREAM.md](UPSTREAM.md).

## Why this repo exists

The old [`Dedalo101/dart-sdk`](https://github.com/Dedalo101/dart-sdk) was a GitHub fork of the official SDK. This repo is **Dedalo's own** — we control releases, Dedalo-specific helpers, and sync with upstream on our schedule.

## Installation

### Git dependency (recommended for Dedalo projects)

```yaml
dependencies:
  dedalo_pocketbase:
    git:
      url: https://github.com/Dedalo101/dedalo-pocketbase-dart
      ref: main
```

### Import

```dart
import 'package:dedalo_pocketbase/dedalo_pocketbase.dart';

final pb = PocketBase('https://your-pocketbase.example');

// Standard PocketBase API (same as official SDK)
final record = await pb.collection('example').getOne('RECORD_ID');

// Dedalo artist-platform helpers
final artist = await pb.getArtistBySlug('nahuel');
final all = await pb.listArtists();
```

## Dedalo extensions

| Method | Description |
|--------|-------------|
| `getArtistBySlug(slug)` | Fetch one artist from the `artists` collection |
| `listArtists()` | Batch-fetch all artists, sorted by slug |

## Development

```sh
dart pub get
dart test
dart analyze
```

## License

MIT — same as upstream PocketBase Dart SDK. See [LICENSE](LICENSE).