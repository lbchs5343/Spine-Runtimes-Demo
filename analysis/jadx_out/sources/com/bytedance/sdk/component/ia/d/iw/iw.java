package com.bytedance.sdk.component.ia.d.iw;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.abn;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class iw implements s {

    /* renamed from: d, reason: collision with root package name */
    private Context f1915d;
    private com.bytedance.sdk.component.ia.dq.s dq;

    public iw(com.bytedance.sdk.component.ia.dq.s sVar) {
        this.f1915d = sVar.getContext();
        this.dq = sVar;
    }

    public static String d() {
        return "CREATE TABLE IF NOT EXISTS trackurl (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,url TEXT ,replaceholder INTEGER default 0,retry INTEGER default 0,extra TEXT ,encrypt INTEGER default 0)";
    }

    public static String ox() {
        return "ALTER TABLE trackurl ADD COLUMN extra TEXT";
    }

    public static String p() {
        return "ALTER TABLE trackurl ADD COLUMN encrypt INTEGER default 0";
    }

    @Override // com.bytedance.sdk.component.ia.d.iw.s
    public void delete(p pVar) {
        com.bytedance.sdk.component.ia.d.dq.dq.d.delete(this.f1915d, "trackurl", "id=?", new String[]{pVar.d()}, this.dq);
    }

    @Override // com.bytedance.sdk.component.ia.d.iw.s
    public List<p> dq() {
        JSONObject jSONObject;
        LinkedList linkedList = new LinkedList();
        Cursor query = com.bytedance.sdk.component.ia.d.dq.dq.d.query(this.f1915d, "trackurl", null, null, null, null, null, null, this.dq);
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    try {
                        String string = query.getString(query.getColumnIndex(TTDownloadField.TT_ID));
                        String string2 = query.getString(query.getColumnIndex(abn.EXTRA_URL));
                        boolean z = query.getInt(query.getColumnIndex("replaceholder")) > 0;
                        int i = query.getInt(query.getColumnIndex("retry"));
                        String string3 = query.getString(query.getColumnIndex("extra"));
                        int i2 = query.getInt(query.getColumnIndex("encrypt"));
                        if (i2 > 0) {
                            string3 = com.bytedance.sdk.component.utils.dq.ox(string3);
                        }
                        try {
                            jSONObject = new JSONObject(string3);
                        } catch (Exception unused) {
                            jSONObject = null;
                        }
                        linkedList.add(new p(string, string2, z, i, jSONObject, i2));
                    } finally {
                        query.close();
                    }
                } catch (Throwable unused2) {
                }
            }
        }
        return linkedList;
    }

    @Override // com.bytedance.sdk.component.ia.d.iw.s
    public void insert(p pVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(TTDownloadField.TT_ID, pVar.d());
        contentValues.put(abn.EXTRA_URL, pVar.ox());
        contentValues.put("replaceholder", Integer.valueOf(pVar.p() ? 1 : 0));
        contentValues.put("retry", Integer.valueOf(pVar.s()));
        contentValues.put("extra", com.bytedance.sdk.component.utils.dq.d(pVar.dq().toString()));
        contentValues.put("encrypt", (Integer) 1);
        com.bytedance.sdk.component.ia.d.dq.dq.d.insert(this.f1915d, "trackurl", contentValues, this.dq);
    }

    @Override // com.bytedance.sdk.component.ia.d.iw.s
    public void update(p pVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(TTDownloadField.TT_ID, pVar.d());
        contentValues.put(abn.EXTRA_URL, pVar.ox());
        contentValues.put("replaceholder", Integer.valueOf(pVar.p() ? 1 : 0));
        contentValues.put("retry", Integer.valueOf(pVar.s()));
        contentValues.put("extra", com.bytedance.sdk.component.utils.dq.d(pVar.dq().toString()));
        contentValues.put("encrypt", (Integer) 1);
        com.bytedance.sdk.component.ia.d.dq.dq.d.update(this.f1915d, "trackurl", contentValues, "id=?", new String[]{pVar.d()}, this.dq);
    }
}
