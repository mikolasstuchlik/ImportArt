#if swift(>=5.5)
import CSqliteCURL
#else
import CLegacySqlite
import CLegacyCURL
#endif

// Show that curl works
print("CURL version: " + String(cString: curl_version()))

// Show that sqlite works
print("Sqlite version: " + String(cString: sqlite3_libversion()))

