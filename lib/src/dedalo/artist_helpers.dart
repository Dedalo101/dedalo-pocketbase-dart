import '../client.dart';
import '../dtos/record_model.dart';

/// Dedalo101 artist-platform helpers on top of PocketBase.
extension DedaloArtistClient on PocketBase {
  /// Fetch a single artist site record by slug from the `artists` collection.
  Future<RecordModel> getArtistBySlug(
    String slug, {
    String collection = 'artists',
    String? expand,
    String? fields,
    Map<String, dynamic> query = const {},
    Map<String, String> headers = const {},
  }) {
    return this.collection(collection).getFirstListItem(
      filter('slug = {:slug}', {'slug': slug}),
      expand: expand,
      fields: fields,
      query: query,
      headers: headers,
    );
  }

  /// List all artist records, sorted by slug by default.
  Future<List<RecordModel>> listArtists({
    String collection = 'artists',
    String sort = 'slug',
    String? filterExpr,
    int batch = 1000,
    String? expand,
    String? fields,
    Map<String, dynamic> query = const {},
    Map<String, String> headers = const {},
  }) {
    return this.collection(collection).getFullList(
      batch: batch,
      sort: sort,
      filter: filterExpr,
      expand: expand,
      fields: fields,
      query: query,
      headers: headers,
    );
  }
}