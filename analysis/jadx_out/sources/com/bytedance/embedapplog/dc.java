package com.bytedance.embedapplog;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dc extends ds {
    protected String ig;
    protected String mp;
    private boolean q;

    public dc(String str, boolean z, String str2) {
        this.mp = str;
        this.q = z;
        this.ig = str2;
        this.o = 0;
    }

    public dc(String str, boolean z, String str2, int i) {
        this.mp = str;
        this.q = z;
        this.ig = str2;
        this.o = i;
    }

    @Override // com.bytedance.embedapplog.ds
    public ds d(JSONObject jSONObject) {
        super.d(jSONObject);
        this.mp = jSONObject.optString("event", null);
        this.ig = jSONObject.optString("params", null);
        this.q = jSONObject.optBoolean("is_bav", false);
        return this;
    }

    @Override // com.bytedance.embedapplog.ds
    public JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("local_time_ms", this.f713d);
        jSONObject.put("tea_event_index", this.ox);
        jSONObject.put("session_id", this.p);
        long j = this.s;
        if (j > 0) {
            jSONObject.put("user_id", j);
        }
        jSONObject.put("user_unique_id", TextUtils.isEmpty(this.iw) ? JSONObject.NULL : this.iw);
        if (!TextUtils.isEmpty(this.mn)) {
            jSONObject.put("ssid", this.mn);
        }
        jSONObject.put("event", this.mp);
        if (this.q) {
            jSONObject.put("is_bav", 1);
        }
        if (!TextUtils.isEmpty(this.ig)) {
            jSONObject.put("params", new JSONObject(this.ig));
        }
        jSONObject.put("datetime", this.no);
        if (!TextUtils.isEmpty(this.ia)) {
            jSONObject.put("ab_sdk_version", this.ia);
        }
        return jSONObject;
    }

    @Override // com.bytedance.embedapplog.ds
    public int dq(Cursor cursor) {
        int dq = super.dq(cursor);
        this.mp = cursor.getString(dq);
        int i = dq + 2;
        this.ig = cursor.getString(dq + 1);
        int i2 = dq + 3;
        this.q = cursor.getInt(i) == 1;
        return i2;
    }

    @Override // com.bytedance.embedapplog.ds
    public List<String> dq() {
        List<String> dq = super.dq();
        ArrayList arrayList = new ArrayList(dq.size());
        arrayList.addAll(dq);
        arrayList.addAll(Arrays.asList("event", "varchar", "params", "varchar", "is_bav", "integer"));
        return arrayList;
    }

    @Override // com.bytedance.embedapplog.ds
    public void dq(ContentValues contentValues) {
        super.dq(contentValues);
        contentValues.put("event", this.mp);
        contentValues.put("params", this.ig);
        contentValues.put("is_bav", Integer.valueOf(this.q ? 1 : 0));
    }

    @Override // com.bytedance.embedapplog.ds
    public void dq(JSONObject jSONObject) {
        super.dq(jSONObject);
        jSONObject.put("event", this.mp);
        jSONObject.put("params", this.ig);
        jSONObject.put("is_bav", this.q);
    }

    @Override // com.bytedance.embedapplog.ds
    public String ia() {
        return this.mp;
    }

    @Override // com.bytedance.embedapplog.ds
    public String kk() {
        return this.ig;
    }

    @Override // com.bytedance.embedapplog.ds
    public String p() {
        return "eventv3";
    }
}
