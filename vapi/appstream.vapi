/* appstream.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "As", gir_namespace = "AppStream", gir_version = "0.8", lower_case_cprefix = "as_")]
namespace AppStream {
	[CCode (cheader_filename = "appstream.h", type_id = "as_category_get_type ()")]
	public class Category : GLib.Object {
		[CCode (has_construct_function = false)]
		public Category ();
		public void add_subcategory (AppStream.Category cat);
		public void complete ();
		public static AppStream.Category @construct (GLib.Type object_type);
		public unowned string get_directory ();
		public GLib.List<weak string> get_excluded ();
		public unowned string get_icon ();
		public unowned GLib.List<string> get_included ();
		public int get_level ();
		public unowned string get_name ();
		public unowned GLib.List<string> get_subcategories ();
		public unowned string get_summary ();
		public bool has_subcategory ();
		public void remove_subcategory (AppStream.Category cat);
		public void set_directory (string value);
		public void set_icon (string value);
		public void set_level (int value);
		public void set_name (string value);
		public string directory { get; set; }
		public void* excluded { get; }
		public string icon { get; set; }
		public void* included { get; }
		public int level { get; set; }
		public string name { get; set; }
		public void* subcategories { get; }
		public string summary { get; }
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_component_get_type ()")]
	public class Component : GLib.Object {
		[CCode (has_construct_function = false)]
		public Component ();
		public void add_bundle_id (AppStream.BundleKind bundle_kind, string id);
		public void add_extends (string cpt_id);
		public void add_icon (AppStream.IconKind kind, int width, int height, string value);
		public void add_icon_url (int width, int height, string value);
		public void add_language (string locale, int percentage);
		public void add_provided_item (AppStream.ProvidesKind kind, string value, string? data);
		public void add_release (AppStream.Release release);
		public void add_screenshot (AppStream.Screenshot sshot);
		public void add_url (AppStream.UrlKind url_kind, string url);
		public string get_active_locale ();
		public unowned string get_bundle_id (AppStream.BundleKind bundle_kind);
		public unowned GLib.HashTable<string,string> get_bundle_ids ();
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned string[] get_categories ();
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned string[] get_compulsory_for_desktops ();
		public unowned string get_description ();
		public unowned string get_developer_name ();
		public unowned GLib.GenericArray<string> get_extends ();
		public unowned string get_icon (AppStream.IconKind kind, int width, int height);
		public unowned string get_icon_url (int width, int height);
		public unowned GLib.HashTable<string,string> get_icon_urls ();
		public unowned string get_id ();
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned string[] get_keywords ();
		public AppStream.ComponentKind get_kind ();
		public int get_language (string locale);
		public GLib.List<weak string> get_languages ();
		public unowned string get_name ();
		public unowned string get_origin ();
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned string[] get_pkgnames ();
		public unowned string get_project_group ();
		public unowned string get_project_license ();
		public unowned GLib.GenericArray<string> get_provided_items ();
		public unowned GLib.GenericArray<AppStream.Release> get_releases ();
		public unowned GLib.GenericArray<AppStream.Screenshot> get_screenshots ();
		public unowned string get_source_pkgname ();
		public unowned string get_summary ();
		public unowned string get_url (AppStream.UrlKind url_kind);
		public unowned GLib.HashTable<string,string> get_urls ();
		public bool has_category (string category);
		public bool is_compulsory_for_desktop (string desktop);
		public bool is_valid ();
		public bool provides_item (AppStream.ProvidesKind kind, string value);
		public void set_active_locale (string locale);
		public void set_categories ([CCode (array_length = false, array_null_terminated = true)] string[] value);
		public void set_categories_from_str (string categories_str);
		public void set_compulsory_for_desktops (string value);
		public void set_description (string value, string locale);
		public void set_developer_name (string value, string locale);
		public void set_id (string value);
		public void set_keywords ([CCode (array_length = false, array_null_terminated = true)] string[] value, string locale);
		public void set_kind (AppStream.ComponentKind value);
		public void set_name (string value, string locale);
		public void set_origin (string origin);
		public void set_pkgnames ([CCode (array_length = false, array_null_terminated = true)] string[] value);
		public void set_project_group (string value);
		public void set_project_license (string value);
		public void set_source_pkgname (string spkgname);
		public void set_summary (string value, string locale);
		public string to_string ();
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] categories { get; set; }
		[NoAccessorMethod]
		public string description { owned get; set; }
		[NoAccessorMethod]
		public string developer_name { owned get; set; }
		public GLib.HashTable<weak void*,weak void*> icon_urls { get; }
		public string id { get; set; }
		[CCode (array_length = false, array_null_terminated = true)]
		[NoAccessorMethod]
		public string[] keywords { owned get; set; }
		public AppStream.ComponentKind kind { get; set; }
		[NoAccessorMethod]
		public string name { owned get; set; }
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] pkgnames { get; set; }
		public string project_group { get; set; }
		public string project_license { get; set; }
		public GLib.GenericArray<weak void*> screenshots { get; }
		[NoAccessorMethod]
		public string summary { owned get; set; }
		public GLib.HashTable<weak void*,weak void*> urls { get; }
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_data_pool_get_type ()")]
	public class DataPool : GLib.Object {
		[CCode (has_construct_function = false)]
		public DataPool ();
		public AppStream.Component get_component_by_id (string id);
		public GLib.List<weak AppStream.Component> get_components ();
		public unowned string get_locale ();
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] get_watched_locations ();
		public void set_data_source_directories ([CCode (array_length = false, array_null_terminated = true)] string[] dirs);
		public void set_locale (string locale);
		public bool update ();
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_database_get_type ()")]
	public class Database : GLib.Object {
		[CCode (has_construct_function = false)]
		public Database ();
		public static AppStream.Database @construct (GLib.Type object_type);
		public bool db_exists ();
		public GLib.GenericArray<AppStream.Component> find_components (AppStream.SearchQuery query);
		public GLib.GenericArray<AppStream.Component> find_components_by_term (string search_term, string? categories_str);
		public GLib.GenericArray<AppStream.Component> get_all_components ();
		public AppStream.Component get_component_by_id (string idname);
		public GLib.GenericArray<AppStream.Component> get_components_by_kind (AppStream.ComponentKind kinds);
		public GLib.GenericArray<AppStream.Component> get_components_by_provides (AppStream.ProvidesKind kind, string value, string? data);
		public unowned string get_database_path ();
		public virtual bool open ();
		public void set_database_path (string value);
		public string database_path { get; set; }
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_distro_details_get_type ()")]
	public class DistroDetails : GLib.Object {
		[CCode (has_construct_function = false)]
		public DistroDetails ();
		public bool config_distro_get_bool (string key);
		public string config_distro_get_str (string key);
		public static AppStream.DistroDetails @construct (GLib.Type object_type);
		public unowned string get_distro_id ();
		public unowned string get_distro_name ();
		public unowned string get_distro_version ();
		[CCode (array_length = false, array_null_terminated = true)]
		public static string[] get_icon_repository_paths ();
		public string distro_id { get; }
		public string distro_name { get; }
		public string distro_version { get; }
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_image_get_type ()")]
	public class Image : GLib.Object {
		[CCode (has_construct_function = false)]
		public Image ();
		public uint get_height ();
		public AppStream.ImageKind get_kind ();
		public unowned string get_url ();
		public uint get_width ();
		public static AppStream.ImageKind kind_from_string (string kind);
		public static unowned string kind_to_string (AppStream.ImageKind kind);
		public void set_height (uint height);
		public void set_kind (AppStream.ImageKind kind);
		public void set_url (string url);
		public void set_width (uint width);
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_menu_parser_get_type ()")]
	public class MenuParser : GLib.Object {
		[CCode (has_construct_function = false)]
		public MenuParser ();
		public static AppStream.MenuParser @construct (GLib.Type object_type);
		public static AppStream.MenuParser construct_from_file (GLib.Type object_type, string menu_file);
		[CCode (has_construct_function = false)]
		public MenuParser.from_file (string menu_file);
		public bool get_update_category_data ();
		public GLib.List<AppStream.Category> parse ();
		public void set_update_category_data (bool value);
		public bool update_category_data { get; set; }
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_metadata_get_type ()")]
	public class Metadata : GLib.Object {
		[CCode (has_construct_function = false)]
		public Metadata ();
		public void add_component (AppStream.Component cpt);
		public void clear_components ();
		public string component_to_upstream_xml ();
		public string components_to_distro_xml ();
		public static GLib.Quark error_quark ();
		public unowned AppStream.Component get_component ();
		public unowned GLib.GenericArray<AppStream.Component> get_components ();
		public unowned string get_locale ();
		public unowned string get_origin ();
		public void parse_data (string data) throws GLib.Error;
		public void parse_file (GLib.File file) throws GLib.Error;
		public void save_distro_xml (string fname) throws GLib.Error;
		public void save_upstream_xml (string fname) throws GLib.Error;
		public void set_locale (string locale);
		public void set_origin (string origin);
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_release_get_type ()")]
	public class Release : GLib.Object {
		[CCode (has_construct_function = false)]
		public Release ();
		public void add_location (string location);
		public string get_active_locale ();
		public unowned string get_checksum (AppStream.ChecksumKind cs_kind);
		public unowned string get_description ();
		public unowned GLib.GenericArray<string> get_locations ();
		public uint64 get_timestamp ();
		public AppStream.UrgencyKind get_urgency ();
		public unowned string get_version ();
		public void set_active_locale (string locale);
		public void set_checksum (string checksum, AppStream.ChecksumKind cs_kind);
		public void set_description (string description, string locale);
		public void set_timestamp (uint64 timestamp);
		public void set_urgency (AppStream.UrgencyKind urgency);
		public void set_version (string version);
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_screenshot_get_type ()")]
	public class Screenshot : GLib.Object {
		[CCode (has_construct_function = false)]
		public Screenshot ();
		public void add_image (AppStream.Image image);
		public string get_active_locale ();
		public unowned string get_caption ();
		public unowned GLib.GenericArray<AppStream.Image> get_images ();
		public AppStream.ScreenshotKind get_kind ();
		public bool is_valid ();
		public static AppStream.ScreenshotKind kind_from_string (string kind);
		public static unowned string kind_to_string (AppStream.ScreenshotKind kind);
		public void set_active_locale (string locale);
		public void set_caption (string caption, string locale);
		public void set_kind (AppStream.ScreenshotKind kind);
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_search_query_get_type ()")]
	public class SearchQuery : GLib.Object {
		[CCode (has_construct_function = false)]
		public SearchQuery (string term);
		public static AppStream.SearchQuery @construct (GLib.Type object_type, string term);
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] get_categories ();
		public bool get_search_all_categories ();
		public unowned string get_search_term ();
		public void sanitize_search_term ();
		public void set_categories (string value);
		public void set_categories_from_string (string categories_str);
		public void set_search_all_categories ();
		public void set_search_term (string value);
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] categories { owned get; set; }
		public string search_term { get; set; }
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_validator_get_type ()")]
	public class Validator : GLib.Object {
		[CCode (has_construct_function = false)]
		public Validator ();
		public void clear_issues ();
		public GLib.List<weak AppStream.ValidatorIssue> get_issues ();
		public bool validate_data (string metadata);
		public bool validate_file (GLib.File metadata_file);
		public bool validate_tree (string root_dir);
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_validator_issue_get_type ()")]
	public class ValidatorIssue : GLib.Object {
		[CCode (has_construct_function = false)]
		public ValidatorIssue ();
		public AppStream.IssueImportance get_importance ();
		public AppStream.IssueKind get_kind ();
		public unowned string get_location ();
		public unowned string get_message ();
		public void set_importance (AppStream.IssueImportance importance);
		public void set_kind (AppStream.IssueKind kind);
		public void set_location (string location);
		public void set_message (string message);
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_BUNDLE_KIND_", has_type_id = false)]
	public enum BundleKind {
		UNKNOWN,
		LIMBA,
		XDG_APP;
		public static AppStream.BundleKind from_string (string bundle_kind);
		public static unowned string to_string (AppStream.BundleKind bundle_kind);
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_CHECKSUM_KIND_", has_type_id = false)]
	public enum ChecksumKind {
		NONE,
		SHA1,
		SHA256,
		LAST;
		public static AppStream.ChecksumKind from_string (string kind_str);
		public static unowned string to_string (AppStream.ChecksumKind kind);
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_COMPONENT_KIND_", type_id = "as_component_kind_get_type ()")]
	public enum ComponentKind {
		UNKNOWN,
		GENERIC,
		[CCode (cname = "AS_COMPONENT_KIND_DESKTOP_APP")]
		DESKTOP,
		FONT,
		CODEC,
		INPUTMETHOD,
		ADDON,
		FIRMWARE,
		LAST;
		public static AppStream.ComponentKind from_string (string kind_str);
		public static unowned string to_string (AppStream.ComponentKind kind);
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_ICON_KIND_", has_type_id = false)]
	public enum IconKind {
		UNKNOWN,
		CACHED,
		STOCK,
		LOCAL,
		REMOTE,
		LAST;
		public static AppStream.IconKind from_string (string kind_str);
		public static unowned string to_string (AppStream.IconKind kind);
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_IMAGE_KIND_", has_type_id = false)]
	public enum ImageKind {
		UNKNOWN,
		SOURCE,
		THUMBNAIL,
		LAST
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_ISSUE_IMPORTANCE_", has_type_id = false)]
	public enum IssueImportance {
		UNKNOWN,
		ERROR,
		WARNING,
		INFO,
		PEDANTIC
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_ISSUE_KIND_", has_type_id = false)]
	public enum IssueKind {
		UNKNOWN,
		MARKUP_INVALID,
		LEGACY,
		TAG_DUPLICATED,
		TAG_MISSING,
		TAG_UNKNOWN,
		TAG_NOT_ALLOWED,
		PROPERTY_MISSING,
		PROPERTY_INVALID,
		VALUE_WRONG,
		VALUE_ISSUE,
		FILE_MISSING,
		WRONG_NAME
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_METADATA_ERROR_", has_type_id = false)]
	public enum MetadataError {
		FAILED,
		LAST
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_PROVIDES_KIND_", has_type_id = false)]
	public enum ProvidesKind {
		UNKNOWN,
		LIBRARY,
		BINARY,
		FONT,
		MODALIAS,
		FIRMWARE,
		PYTHON2,
		PYTHON3,
		MIMETYPE,
		DBUS;
		public static AppStream.ProvidesKind from_string (string kind_str);
		public static unowned string to_string (AppStream.ProvidesKind kind);
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_SCREENSHOT_KIND_", has_type_id = false)]
	public enum ScreenshotKind {
		UNKNOWN,
		NORMAL,
		DEFAULT
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_URGENCY_KIND_", has_type_id = false)]
	public enum UrgencyKind {
		UNKNOWN,
		LOW,
		MEDIUM,
		HIGH,
		CRITICAL;
		public static AppStream.UrgencyKind from_string (string urgency_kind);
		public static unowned string to_string (AppStream.UrgencyKind urgency_kind);
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_URL_KIND_", has_type_id = false)]
	public enum UrlKind {
		UNKNOWN,
		HOMEPAGE,
		BUGTRACKER,
		FAQ,
		HELP,
		DONATION;
		public static AppStream.UrlKind from_string (string url_kind);
		public static unowned string to_string (AppStream.UrlKind url_kind);
	}
	[CCode (cheader_filename = "appstream.h")]
	public static string description_markup_convert_simple (string markup);
	[CCode (cheader_filename = "appstream.h")]
	public static GLib.List<AppStream.Category> get_system_categories ();
	[CCode (cheader_filename = "appstream.h")]
	public static string provides_item_create (AppStream.ProvidesKind kind, string value, string data);
	[CCode (cheader_filename = "appstream.h")]
	public static AppStream.ProvidesKind provides_item_get_kind (string item);
	[CCode (cheader_filename = "appstream.h")]
	public static string provides_item_get_value (string item);
	[CCode (array_length = false, array_null_terminated = true, cheader_filename = "appstream.h")]
	public static string[] ptr_array_to_strv (GLib.GenericArray<string> array);
	[CCode (cheader_filename = "appstream.h")]
	public static bool str_empty (string str);
}
