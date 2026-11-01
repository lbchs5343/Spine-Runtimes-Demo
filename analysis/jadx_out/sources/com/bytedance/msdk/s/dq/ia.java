package com.bytedance.msdk.s.dq;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* loaded from: classes.dex */
public class ia extends SQLiteOpenHelper {
    public ia(Context context, String str, int i) {
        super(new com.bytedance.sdk.openadsdk.api.plugin.dq(context), str, (SQLiteDatabase.CursorFactory) null, i);
        com.bytedance.msdk.dq.s.ox.dq("DBHelper", "DatabaseHelper ........");
    }

    private static String d() {
        return "CREATE TABLE IF NOT EXISTS adevent_applog (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0, encrypt INTEGER default 0)";
    }

    private static String dq() {
        return "CREATE TABLE IF NOT EXISTS adevent (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0, encrypt INTEGER default 0)";
    }

    private void dq(SQLiteDatabase sQLiteDatabase) {
        com.bytedance.msdk.dq.s.ox.dq("DBHelper", "initDB........");
        try {
            sQLiteDatabase.execSQL(dq());
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            sQLiteDatabase.execSQL(d());
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    private void dq(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        try {
            sQLiteDatabase.execSQL(ox());
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            sQLiteDatabase.execSQL(p());
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    private static String ox() {
        return "ALTER TABLE adevent ADD COLUMN encrypt INTEGER default 0";
    }

    private static String p() {
        return "ALTER TABLE adevent_applog ADD COLUMN encrypt INTEGER default 0";
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            dq(sQLiteDatabase);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        try {
            com.bytedance.msdk.dq.s.ox.dq("DBHelper", "onUpgrade....数据库版本升级.....");
            if (i == 1 || i == 2) {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'ad_video_info';");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'show_freqctl';");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'show_pacing';");
            } else if (i != 3) {
                return;
            }
            sQLiteDatabase.execSQL(d());
            dq(sQLiteDatabase, i, i2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
