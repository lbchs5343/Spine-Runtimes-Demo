package com.bykv.vk.openvk.preload.geckox.dq;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.bykv.vk.openvk.preload.geckox.q.dq.dq;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class d extends SQLiteOpenHelper {
    private static volatile d dq;

    private d(Context context, String str) {
        super(new com.bytedance.sdk.openadsdk.api.plugin.dq(context), str, (SQLiteDatabase.CursorFactory) null, 1);
    }

    public static d dq(Context context) {
        String ox;
        if (dq == null) {
            synchronized (d.class) {
                try {
                    if (dq == null) {
                        Context applicationContext = context.getApplicationContext();
                        StringBuilder sb = new StringBuilder("geckox_clean_statistic");
                        if (TextUtils.isEmpty(com.bykv.vk.openvk.preload.geckox.utils.d.dq)) {
                            String dq2 = com.bykv.vk.openvk.preload.geckox.utils.d.dq();
                            com.bykv.vk.openvk.preload.geckox.utils.d.dq = dq2;
                            if (TextUtils.isEmpty(dq2)) {
                                String d2 = com.bykv.vk.openvk.preload.geckox.utils.d.d();
                                com.bykv.vk.openvk.preload.geckox.utils.d.dq = d2;
                                if (TextUtils.isEmpty(d2)) {
                                    ox = com.bykv.vk.openvk.preload.geckox.utils.d.ox(context);
                                    com.bykv.vk.openvk.preload.geckox.utils.d.dq = ox;
                                } else {
                                    ox = com.bykv.vk.openvk.preload.geckox.utils.d.dq;
                                }
                            } else {
                                ox = com.bykv.vk.openvk.preload.geckox.utils.d.dq;
                            }
                        } else {
                            ox = com.bykv.vk.openvk.preload.geckox.utils.d.dq;
                        }
                        sb.append(ox);
                        sb.append(".db");
                        dq = new d(applicationContext, sb.toString());
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public final List<dq.C0018dq> dq() {
        Cursor cursor;
        ArrayList arrayList = new ArrayList();
        Cursor cursor2 = null;
        try {
            cursor = getWritableDatabase().query("geckox_clean_statistic", null, null, null, null, null, null);
        } catch (Exception e2) {
            e = e2;
        }
        if (cursor == null) {
            return arrayList;
        }
        while (cursor.moveToNext()) {
            try {
                String string = cursor.getString(cursor.getColumnIndex("access_key"));
                String string2 = cursor.getString(cursor.getColumnIndex("channel"));
                int i = cursor.getInt(cursor.getColumnIndex("clean_type"));
                int i2 = cursor.getInt(cursor.getColumnIndex("status"));
                long j = cursor.getInt(cursor.getColumnIndex("pkg_id"));
                int i3 = cursor.getInt(cursor.getColumnIndex("err_code"));
                String string3 = cursor.getString(cursor.getColumnIndex("err_msg"));
                int i4 = cursor.getInt(cursor.getColumnIndex("clean_strategy"));
                long j2 = cursor.getLong(cursor.getColumnIndex("clean_duration"));
                dq.C0018dq c0018dq = new dq.C0018dq();
                c0018dq.mn = string;
                c0018dq.iw = string2;
                c0018dq.f677d = Integer.valueOf(i2);
                c0018dq.dq = Long.valueOf(j);
                c0018dq.p = i3 == 0 ? null : String.valueOf(i3);
                c0018dq.s = string3;
                c0018dq.fw = Integer.valueOf(i);
                c0018dq.gh = Long.valueOf(j2);
                c0018dq.cd = Integer.valueOf(i4);
                arrayList.add(c0018dq);
            } catch (Exception e3) {
                e = e3;
                cursor2 = cursor;
                com.bykv.vk.openvk.preload.geckox.no.d.dq("clean-channel", "get all statistic failed!", e);
                cursor = cursor2;
                com.bykv.vk.openvk.preload.geckox.utils.dq.dq(cursor);
                return arrayList;
            }
        }
        getWritableDatabase().delete("geckox_clean_statistic", null, null);
        com.bykv.vk.openvk.preload.geckox.utils.dq.dq(cursor);
        return arrayList;
    }

    public final void dq(String str, String str2, int i, int i2, long j, int i3, String str3, long j2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("access_key", str);
        contentValues.put("channel", str2);
        contentValues.put("clean_type", Integer.valueOf(i));
        contentValues.put("status", Integer.valueOf(i2));
        contentValues.put("pkg_id", Long.valueOf(j));
        contentValues.put("err_code", Integer.valueOf(i3));
        contentValues.put("err_msg", str3);
        contentValues.put("clean_duration", Long.valueOf(j2));
        contentValues.put("clean_strategy", (Integer) 1);
        try {
            getWritableDatabase().insert("geckox_clean_statistic", null, contentValues);
        } catch (Exception e2) {
            com.bykv.vk.openvk.preload.geckox.no.d.dq("clean-channel", "insert failed", e2);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("create table if not exists geckox_clean_statistic (id integer primary key autoincrement,access_key text,channel text,clean_type integer,status integer,pkg_id integer,err_code integer,clean_strategy integer,clean_duration integer,err_msg text)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
