package com.bytedance.sdk.component.ia.d.dq.dq.dq;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.bytedance.sdk.component.ia.d.dq.dq.d.mn;
import com.bytedance.sdk.component.ia.d.dq.dq.d.p;
import com.bytedance.sdk.component.ia.dq.iw;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class dq extends SQLiteOpenHelper {

    /* renamed from: d, reason: collision with root package name */
    private iw f1911d;
    final Context dq;

    public dq(Context context, iw iwVar) {
        super(new com.bytedance.sdk.openadsdk.api.plugin.dq(context), "ttadlog.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.dq = context;
        this.f1911d = iwVar;
    }

    private void d(SQLiteDatabase sQLiteDatabase) {
        ArrayList<String> ox = ox(sQLiteDatabase);
        if (ox == null || ox.size() <= 0) {
            return;
        }
        Iterator<String> it = ox.iterator();
        while (it.hasNext()) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + it.next() + " ;");
        }
    }

    private void dq(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(com.bytedance.sdk.component.ia.d.dq.dq.d.iw.p(this.f1911d.d()));
        sQLiteDatabase.execSQL(p.d(this.f1911d.dq()));
        sQLiteDatabase.execSQL(mn.p(this.f1911d.p()));
        sQLiteDatabase.execSQL(com.bytedance.sdk.component.ia.d.dq.dq.d.dq.d(this.f1911d.s()));
        sQLiteDatabase.execSQL(com.bytedance.sdk.component.ia.d.iw.iw.d());
    }

    private ArrayList<String> ox(SQLiteDatabase sQLiteDatabase) {
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

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            dq(sQLiteDatabase);
        } catch (Throwable unused) {
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        try {
            if (i <= i2) {
                dq(sQLiteDatabase);
            } else {
                d(sQLiteDatabase);
                dq(sQLiteDatabase);
            }
        } catch (Throwable unused) {
        }
    }
}
