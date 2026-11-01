package com.ss.android.downloadlib.p;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.ss.android.downloadlib.addownload.no;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private static volatile ox f9260d;
    private SQLiteDatabase dq;

    private ox() {
        try {
            this.dq = new d(no.getContext()).getWritableDatabase();
        } catch (Throwable th) {
            com.ss.android.downloadlib.s.ox.dq().dq(th, "ClickEventHelper");
        }
    }

    public static ox dq() {
        if (f9260d == null) {
            synchronized (ox.class) {
                try {
                    if (f9260d == null) {
                        f9260d = new ox();
                    }
                } finally {
                }
            }
        }
        return f9260d;
    }

    private void ox(long j, String str) {
        SQLiteDatabase sQLiteDatabase = this.dq;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen() || j <= 0 || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            String optString = new JSONObject(str).optString("req_id");
            if (TextUtils.isEmpty(optString)) {
                return;
            }
            this.dq.delete("click_event", "time < ? AND ad_id = ? AND req_id = ?", new String[]{String.valueOf(System.currentTimeMillis() - 1209600000), String.valueOf(j), optString});
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public boolean d() {
        return com.ss.android.socialbase.downloader.mn.dq.ox().dq("click_event_switch", 0) == 1;
    }

    public boolean d(long j, String str) {
        SQLiteDatabase sQLiteDatabase = this.dq;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen() || j <= 0 || TextUtils.isEmpty(str)) {
            return false;
        }
        Cursor cursor = null;
        try {
            try {
                String optString = new JSONObject(str).optString("req_id");
                if (TextUtils.isEmpty(optString)) {
                    return false;
                }
                cursor = this.dq.query("click_event", d.dq, "time > ? AND ad_id = ? AND req_id = ?", new String[]{String.valueOf(System.currentTimeMillis() - 1209600000), String.valueOf(j), optString}, null, null, null, null);
                boolean z = cursor.getCount() > 0;
                cursor.close();
                return z;
            } catch (Exception e2) {
                e2.printStackTrace();
                if (cursor != null) {
                    cursor.close();
                }
                return false;
            }
        } finally {
        }
    }

    public void dq(long j, String str) {
        String optString;
        SQLiteDatabase sQLiteDatabase = this.dq;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen() || j <= 0 || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            optString = new JSONObject(str).optString("req_id");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (TextUtils.isEmpty(optString)) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(MediationConstant.EXTRA_ADID, Long.valueOf(j));
        contentValues.put("req_id", optString);
        contentValues.put("time", Long.valueOf(System.currentTimeMillis()));
        this.dq.insert("click_event", null, contentValues);
        ox(j, str);
    }

    public boolean ox() {
        return com.ss.android.socialbase.downloader.mn.dq.ox().dq("click_event_switch", 0) == 2;
    }
}
