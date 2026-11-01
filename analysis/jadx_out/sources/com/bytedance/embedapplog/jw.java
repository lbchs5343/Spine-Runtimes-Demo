package com.bytedance.embedapplog;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class jw extends ds {
    public String cd;

    /* renamed from: f, reason: collision with root package name */
    public int f731f;
    public String fw;
    public boolean gh;
    public int ig;
    public String jy;
    public String mp;
    public boolean q;
    public boolean r;

    public jw(boolean z) {
        this.r = z;
    }

    @Override // com.bytedance.embedapplog.ds
    public ds d(JSONObject jSONObject) {
        jo.d((Throwable) null);
        return null;
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
        boolean z = this.q;
        if (z) {
            jSONObject.put("is_background", z);
        }
        jSONObject.put("datetime", this.no);
        if (!TextUtils.isEmpty(this.ia)) {
            jSONObject.put("ab_sdk_version", this.ia);
        }
        if (!TextUtils.isEmpty(this.jy)) {
            jSONObject.put("uuid_changed", true);
            jSONObject.put("original_session_id", this.jy);
        }
        if (this.f731f == 1) {
            jSONObject.put("$is_first_time", "true");
        }
        jSONObject.put("$resume_from_background", !this.r);
        jSONObject.put("is_background", !this.r);
        return jSONObject;
    }

    @Override // com.bytedance.embedapplog.ds
    public int dq(Cursor cursor) {
        int dq = super.dq(cursor);
        this.mp = cursor.getString(dq);
        this.ig = cursor.getInt(dq + 1);
        this.jy = cursor.getString(dq + 2);
        this.f731f = cursor.getInt(dq + 3);
        this.fw = cursor.getString(dq + 4);
        int i = dq + 6;
        this.cd = cursor.getString(dq + 5);
        int i2 = dq + 7;
        this.gh = cursor.getInt(i) == 0;
        return i2;
    }

    @Override // com.bytedance.embedapplog.ds
    public List<String> dq() {
        List<String> dq = super.dq();
        ArrayList arrayList = new ArrayList(dq.size());
        arrayList.addAll(dq);
        arrayList.addAll(Arrays.asList("ver_name", "varchar", "ver_code", "integer", "last_session", "varchar", "is_first_time", "integer", "page_title", "varchar", "page_key", "varchar", "resume_from_background", "integer"));
        return arrayList;
    }

    @Override // com.bytedance.embedapplog.ds
    public void dq(ContentValues contentValues) {
        super.dq(contentValues);
        contentValues.put("ver_name", this.mp);
        contentValues.put("ver_code", Integer.valueOf(this.ig));
        contentValues.put("last_session", this.jy);
        contentValues.put("is_first_time", Integer.valueOf(this.f731f));
        contentValues.put("page_title", this.fw);
        contentValues.put("page_key", this.cd);
        contentValues.put("resume_from_background", Integer.valueOf(this.gh ? 1 : 0));
    }

    @Override // com.bytedance.embedapplog.ds
    public void dq(JSONObject jSONObject) {
        jo.d((Throwable) null);
    }

    @Override // com.bytedance.embedapplog.ds
    public String ia() {
        return this.q ? "bg" : "fg";
    }

    @Override // com.bytedance.embedapplog.ds
    public String p() {
        return "launch";
    }
}
