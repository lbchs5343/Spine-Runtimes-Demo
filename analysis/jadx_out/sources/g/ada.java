package g;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;

/* loaded from: classes.dex */
public abstract class ada extends ContentProvider {
    public static final String COLUMN_CREATE_TIME = "ct";
    public static final String COLUMN_DOMAIN = "d";
    public static final String COLUMN_ID = "_id";
    public static final String COLUMN_KEY = "k";
    public static final String COLUMN_VALUE = "v";
    public static final int ITEM = 1;
    public static final int ITEM_ID = 2;
    public static final String SQL_CREATE_INDEX_DOMAIN_AND_KEY = "CREATE UNIQUE INDEX unique_index_domain_key ON kv(d, k);";
    public static final String SQL_CREATE_TABLE = "CREATE TABLE kv (_id INTEGER PRIMARY KEY,d TEXT,k TEXT,v TEXT,ct INTEGER);";
    public static final String TABLE_NAME = "kv";
    private SQLiteDatabase db;
    private static final UriMatcher uriMatcher = new UriMatcher(-1);
    private static boolean isInitedUriMatcher = false;

    public static String getAuthority(String str) {
        return awf.c(str, ".s");
    }

    public static Uri getContentUri(Context context) {
        return getContentUri(context.getPackageName());
    }

    public static Uri getContentUri(String str) {
        return Uri.parse("content://" + getAuthority(str) + "/kv");
    }

    public static void initUriMatcher(Context context) {
        initUriMatcher(context.getPackageName());
    }

    public static void initUriMatcher(String str) {
        if (isInitedUriMatcher) {
            return;
        }
        synchronized (ada.class) {
            try {
                if (!isInitedUriMatcher) {
                    UriMatcher uriMatcher2 = uriMatcher;
                    uriMatcher2.addURI(getAuthority(str), TABLE_NAME, 1);
                    uriMatcher2.addURI(getAuthority(str), "kv/#", 2);
                    isInitedUriMatcher = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        initUriMatcher(getContext());
        int match = uriMatcher.match(uri);
        if (match == 1) {
            return this.db.delete(TABLE_NAME, str, strArr);
        }
        if (match != 2) {
            return -1;
        }
        return this.db.delete(TABLE_NAME, "_id=?", new String[]{uri.getLastPathSegment()});
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        initUriMatcher(getContext());
        if (uriMatcher.match(uri) != 1) {
            return null;
        }
        long replace = this.db.replace(TABLE_NAME, null, contentValues);
        if (replace <= 0) {
            return null;
        }
        Uri withAppendedId = ContentUris.withAppendedId(getContentUri(getContext()), replace);
        getContext().getContentResolver().notifyChange(withAppendedId, null);
        return withAppendedId;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        Context context = getContext();
        if (dcq.f13973b == null) {
            synchronized (dcq.class) {
                try {
                    if (dcq.f13973b == null) {
                        dcq dcqVar = new dcq(0, false);
                        dcqVar.f13976f = new vh(context, "cl.db", null, 1, 1).getWritableDatabase();
                        dcq.f13973b = dcqVar;
                    }
                } finally {
                }
            }
        }
        this.db = (SQLiteDatabase) dcq.f13973b.f13976f;
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Cursor query;
        initUriMatcher(getContext());
        int match = uriMatcher.match(uri);
        if (match == 1) {
            query = this.db.query(TABLE_NAME, strArr, str, strArr2, null, null, str2);
        } else {
            if (match != 2) {
                return null;
            }
            query = this.db.query(TABLE_NAME, strArr, "_id=" + uri.getLastPathSegment(), strArr2, null, null, str2);
        }
        query.setNotificationUri(getContext().getContentResolver(), uri);
        return query;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        initUriMatcher(getContext());
        int match = uriMatcher.match(uri);
        if (match == 1) {
            return this.db.update(TABLE_NAME, contentValues, str, strArr);
        }
        if (match != 2) {
            return -1;
        }
        return this.db.update(TABLE_NAME, contentValues, "_id=?", new String[]{uri.getLastPathSegment()});
    }
}
