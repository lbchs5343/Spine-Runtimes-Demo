package com.bytedance.embedapplog;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ha extends ds {

    /* renamed from: f, reason: collision with root package name */
    public long f719f;
    long fw;
    public String ig;
    public String jy;
    public String mp;
    public String q;

    @Override // com.bytedance.embedapplog.ds
    public ds d(JSONObject jSONObject) {
        super.d(jSONObject);
        this.ox = jSONObject.optLong("tea_event_index", 0L);
        this.ig = jSONObject.optString("category", null);
        this.mp = jSONObject.optString(TTDownloadField.TT_TAG, null);
        this.f719f = jSONObject.optLong("value", 0L);
        this.fw = jSONObject.optLong("ext_value", 0L);
        this.jy = jSONObject.optString("params", null);
        this.q = jSONObject.optString(TTDownloadField.TT_LABEL, null);
        return this;
    }

    @Override // com.bytedance.embedapplog.ds
    public JSONObject d() {
        JSONObject jSONObject = !TextUtils.isEmpty(this.jy) ? new JSONObject(this.jy) : null;
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
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
        jSONObject.put("category", this.ig);
        jSONObject.put(TTDownloadField.TT_TAG, this.mp);
        jSONObject.put("value", this.f719f);
        jSONObject.put("ext_value", this.fw);
        jSONObject.put(TTDownloadField.TT_LABEL, this.q);
        jSONObject.put("datetime", this.no);
        if (!TextUtils.isEmpty(this.ia)) {
            jSONObject.put("ab_sdk_version", this.ia);
        }
        return jSONObject;
    }

    @Override // com.bytedance.embedapplog.ds
    public int dq(Cursor cursor) {
        int dq = super.dq(cursor);
        this.ig = cursor.getString(dq);
        this.mp = cursor.getString(dq + 1);
        this.f719f = cursor.getLong(dq + 2);
        this.fw = cursor.getLong(dq + 3);
        int i = dq + 5;
        this.jy = cursor.getString(dq + 4);
        int i2 = dq + 6;
        this.q = cursor.getString(i);
        return i2;
    }

    @Override // com.bytedance.embedapplog.ds
    public List<String> dq() {
        List<String> dq = super.dq();
        ArrayList arrayList = new ArrayList(dq.size());
        arrayList.addAll(dq);
        arrayList.addAll(Arrays.asList("category", "varchar", TTDownloadField.TT_TAG, "varchar", "value", "integer", "ext_value", "integer", "params", "varchar", TTDownloadField.TT_LABEL, "varchar"));
        return arrayList;
    }

    @Override // com.bytedance.embedapplog.ds
    public void dq(ContentValues contentValues) {
        super.dq(contentValues);
        contentValues.put("category", this.ig);
        contentValues.put(TTDownloadField.TT_TAG, this.mp);
        contentValues.put("value", Long.valueOf(this.f719f));
        contentValues.put("ext_value", Long.valueOf(this.fw));
        contentValues.put("params", this.jy);
        contentValues.put(TTDownloadField.TT_LABEL, this.q);
    }

    @Override // com.bytedance.embedapplog.ds
    public void dq(JSONObject jSONObject) {
        super.dq(jSONObject);
        jSONObject.put("tea_event_index", this.ox);
        jSONObject.put("category", this.ig);
        jSONObject.put(TTDownloadField.TT_TAG, this.mp);
        jSONObject.put("value", this.f719f);
        jSONObject.put("ext_value", this.fw);
        jSONObject.put("params", this.jy);
        jSONObject.put(TTDownloadField.TT_LABEL, this.q);
    }

    @Override // com.bytedance.embedapplog.ds
    public String ia() {
        return this.mp + ", " + this.q;
    }

    @Override // com.bytedance.embedapplog.ds
    public String kk() {
        return this.jy;
    }

    @Override // com.bytedance.embedapplog.ds
    public String p() {
        return "event";
    }
}
