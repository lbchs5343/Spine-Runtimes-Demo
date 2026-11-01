package com.bytedance.sdk.openadsdk.core;

import android.content.ContentValues;
import android.content.Context;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class kk {
    private static final Object ox = new Object();

    /* renamed from: d, reason: collision with root package name */
    private Context f3134d;
    private ox dq;

    public class d extends AbstractCursor {
        private d() {
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String[] getColumnNames() {
            return new String[0];
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getCount() {
            return 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public double getDouble(int i) {
            return 0.0d;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public float getFloat(int i) {
            return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getInt(int i) {
            return 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public long getLong(int i) {
            return 0L;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public short getShort(int i) {
            return (short) 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String getString(int i) {
            return null;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public boolean isNull(int i) {
            return true;
        }
    }

    public class dq extends SQLiteOpenHelper {
        final Context dq;

        public dq(Context context) {
            super(new com.bytedance.sdk.openadsdk.api.plugin.dq(context), "ttopensdk.db", (SQLiteDatabase.CursorFactory) null, 12);
            this.dq = context;
        }

        private ArrayList<String> d(SQLiteDatabase sQLiteDatabase) {
            ArrayList<String> arrayList = new ArrayList<>();
            try {
                Cursor rawQuery = sQLiteDatabase.rawQuery("select name from sqlite_master where type='table' order by name", null);
                if (rawQuery != null) {
                    while (rawQuery.moveToNext()) {
                        String string = rawQuery.getString(0);
                        if (!string.equals("android_metadata") && !string.equals("sqlite_sequence")) {
                            arrayList.add(string);
                        }
                    }
                    rawQuery.close();
                }
            } catch (Exception unused) {
            }
            return arrayList;
        }

        private void d(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            sQLiteDatabase.execSQL(com.bytedance.sdk.component.ia.d.iw.iw.ox());
            sQLiteDatabase.execSQL(com.bytedance.sdk.component.ia.d.iw.iw.p());
        }

        private void dq(SQLiteDatabase sQLiteDatabase) {
            ArrayList<String> d2 = d(sQLiteDatabase);
            if (d2 == null || d2.size() <= 0) {
                return;
            }
            Iterator<String> it = d2.iterator();
            while (it.hasNext()) {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + it.next() + " ;");
            }
        }

        private void dq(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            sQLiteDatabase.execSQL(com.bytedance.sdk.component.ia.d.dq.dq.d.iw.s("adevent"));
            sQLiteDatabase.execSQL(com.bytedance.sdk.component.ia.d.dq.dq.d.p.ox("loghighpriority"));
            sQLiteDatabase.execSQL(com.bytedance.sdk.component.ia.d.dq.dq.d.mn.s("logstats"));
            sQLiteDatabase.execSQL(com.bytedance.sdk.component.ia.d.dq.dq.d.dq.ox("logstatsbatch"));
            d(sQLiteDatabase, i, i2);
        }

        private void dq(SQLiteDatabase sQLiteDatabase, Context context) {
            com.bytedance.sdk.openadsdk.core.gh.d.ox.get();
            sQLiteDatabase.execSQL(com.bytedance.sdk.component.ia.d.dq.dq.d.iw.p("adevent"));
            sQLiteDatabase.execSQL(com.bytedance.sdk.component.ia.d.dq.dq.d.p.d("loghighpriority"));
            sQLiteDatabase.execSQL(com.bytedance.sdk.component.ia.d.dq.dq.d.mn.p("logstats"));
            sQLiteDatabase.execSQL(com.bytedance.sdk.component.ia.d.dq.dq.d.dq.d("logstatsbatch"));
            sQLiteDatabase.execSQL(com.bytedance.sdk.component.ia.d.iw.iw.d());
            sQLiteDatabase.execSQL(com.bytedance.sdk.component.adexpress.dq.d.d.ox());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.tools.d.ox());
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS setting_base_info (_id INTEGER PRIMARY KEY,value TEXT)");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS setting_global_info (_id INTEGER PRIMARY KEY,value TEXT)");
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.core.nativeexpress.dq.ox.ox());
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS meta_cache (id INTEGER PRIMARY KEY AUTOINCREMENT,rit TEXT,uuid TEXT,create_time TEXT,meta_data TEXT,save_version TEXT,expire_time TEXT,slot_type TEXT,is_using INTEGER,priority TEXT)");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            try {
                dq(sQLiteDatabase, this.dq);
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.ig.p("DBHelper", th.getMessage());
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if (i > i2) {
                dq(sQLiteDatabase);
                dq(sQLiteDatabase, kk.this.f3134d);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if (i > i2) {
                try {
                    dq(sQLiteDatabase);
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.ig.p("DBHelper", th.getMessage());
                    return;
                }
            }
            dq(sQLiteDatabase, kk.this.f3134d);
            switch (i) {
                case 1:
                    dq(sQLiteDatabase, i, i2);
                    break;
                case 2:
                    sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'ad_video_info';");
                    dq(sQLiteDatabase, i, i2);
                    break;
                case 3:
                    sQLiteDatabase.execSQL(com.bytedance.sdk.component.ia.d.dq.dq.d.mn.p("logstats"));
                    dq(sQLiteDatabase, i, i2);
                    break;
                case 4:
                    sQLiteDatabase.execSQL(com.bytedance.sdk.component.adexpress.dq.d.d.ox());
                    dq(sQLiteDatabase, i, i2);
                    break;
                case 5:
                    sQLiteDatabase.execSQL(com.bytedance.sdk.component.ia.d.dq.dq.d.dq.d("logstatsbatch"));
                    dq(sQLiteDatabase, i, i2);
                    break;
                case 6:
                case 8:
                case 9:
                    dq(sQLiteDatabase, i, i2);
                    break;
                case 7:
                    sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.tools.d.ox());
                    sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS setting_base_info (_id INTEGER PRIMARY KEY,value TEXT)");
                    sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS setting_global_info (_id INTEGER PRIMARY KEY,value TEXT)");
                    dq(sQLiteDatabase, i, i2);
                    break;
                case 10:
                case 11:
                    d(sQLiteDatabase, i, i2);
                    break;
            }
        }
    }

    public class ox {

        /* renamed from: d, reason: collision with root package name */
        private SQLiteDatabase f3139d = null;

        public ox() {
        }

        private boolean iw() {
            SQLiteDatabase sQLiteDatabase = this.f3139d;
            return sQLiteDatabase != null && sQLiteDatabase.inTransaction();
        }

        public SQLiteDatabase d() {
            return this.f3139d;
        }

        public int delete(String str, String str2, String[] strArr) {
            try {
                dq();
                return this.f3139d.delete(str, str2, strArr);
            } catch (Exception e2) {
                e2.printStackTrace();
                if (iw()) {
                    throw e2;
                }
                return 0;
            }
        }

        public void dq() {
            boolean iw;
            try {
                SQLiteDatabase sQLiteDatabase = this.f3139d;
                if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                    return;
                }
                synchronized (kk.ox) {
                    try {
                        SQLiteDatabase sQLiteDatabase2 = this.f3139d;
                        if (sQLiteDatabase2 != null) {
                            if (!sQLiteDatabase2.isOpen()) {
                            }
                        }
                        kk kkVar = kk.this;
                        this.f3139d = kkVar.new dq(kkVar.getContext()).getWritableDatabase();
                    } finally {
                    }
                }
            } finally {
                if (!iw) {
                }
            }
        }

        public void dq(String str) throws SQLException {
            try {
                dq();
                this.f3139d.execSQL(str);
            } catch (Throwable th) {
                if (iw()) {
                    throw th;
                }
            }
        }

        public long insert(String str, String str2, ContentValues contentValues) {
            try {
                dq();
                return this.f3139d.insert(str, str2, contentValues);
            } catch (Exception e2) {
                e2.printStackTrace();
                if (iw()) {
                    throw e2;
                }
                return -1L;
            }
        }

        public void ox() {
            dq();
            SQLiteDatabase sQLiteDatabase = this.f3139d;
            if (sQLiteDatabase == null) {
                return;
            }
            sQLiteDatabase.beginTransaction();
        }

        public void p() {
            dq();
            SQLiteDatabase sQLiteDatabase = this.f3139d;
            if (sQLiteDatabase == null) {
                return;
            }
            sQLiteDatabase.setTransactionSuccessful();
        }

        public Cursor query(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
            try {
                dq();
                return this.f3139d.query(str, strArr, str2, strArr2, str3, str4, str5);
            } catch (Throwable th) {
                d dVar = new d();
                if (iw()) {
                    throw th;
                }
                return dVar;
            }
        }

        public void s() {
            dq();
            SQLiteDatabase sQLiteDatabase = this.f3139d;
            if (sQLiteDatabase == null) {
                return;
            }
            sQLiteDatabase.endTransaction();
        }

        public int update(String str, ContentValues contentValues, String str2, String[] strArr) {
            try {
                dq();
                return this.f3139d.update(str, contentValues, str2, strArr);
            } catch (Exception e2) {
                e2.printStackTrace();
                if (iw()) {
                    throw e2;
                }
                return 0;
            }
        }
    }

    public kk(Context context) {
        try {
            this.f3134d = context == null ? wp.getContext() : context.getApplicationContext();
            if (this.dq == null) {
                this.dq = new ox();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context getContext() {
        Context context = this.f3134d;
        return context == null ? wp.getContext() : context;
    }

    public ox dq() {
        return this.dq;
    }
}
