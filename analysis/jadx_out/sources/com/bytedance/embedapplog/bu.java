package com.bytedance.embedapplog;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class bu extends ds {
    public String cd;

    /* renamed from: f, reason: collision with root package name */
    public String f708f;
    public String fw;
    public int gh;
    public long ig;
    public String jy;
    public String mp;
    public String q;
    public String r;

    private JSONObject ig() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("page_key", this.q);
        jSONObject.put("refer_page_key", this.mp);
        jSONObject.put("is_back", this.gh);
        jSONObject.put(MediationConstant.EXTRA_DURATION, this.ig);
        jSONObject.put("page_title", this.jy);
        jSONObject.put("refer_page_title", this.f708f);
        jSONObject.put("page_path", this.fw);
        jSONObject.put("referrer_page_path", this.cd);
        return jSONObject;
    }

    @Override // com.bytedance.embedapplog.ds
    public ds d(JSONObject jSONObject) {
        super.d(jSONObject);
        this.q = jSONObject.optString("page_key", null);
        this.mp = jSONObject.optString("refer_page_key", null);
        this.ig = jSONObject.optLong(MediationConstant.EXTRA_DURATION, 0L);
        this.gh = jSONObject.optInt("is_back", 0);
        this.jy = jSONObject.optString("page_title", null);
        this.f708f = jSONObject.optString("refer_page_title", null);
        this.fw = jSONObject.optString("page_path", null);
        this.cd = jSONObject.optString("referrer_page_path", null);
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
        jSONObject.put("event", "bav2b_page");
        jSONObject.put("is_bav", 1);
        jSONObject.put("params", ig());
        jSONObject.put("datetime", this.no);
        return jSONObject;
    }

    @Override // com.bytedance.embedapplog.ds
    public int dq(Cursor cursor) {
        int dq = super.dq(cursor);
        this.q = cursor.getString(dq);
        this.mp = cursor.getString(dq + 1);
        this.ig = cursor.getLong(dq + 2);
        this.gh = cursor.getInt(dq + 3);
        this.r = cursor.getString(dq + 4);
        this.jy = cursor.getString(dq + 5);
        this.f708f = cursor.getString(dq + 6);
        int i = dq + 8;
        this.fw = cursor.getString(dq + 7);
        int i2 = dq + 9;
        this.cd = cursor.getString(i);
        return i2;
    }

    @Override // com.bytedance.embedapplog.ds
    public List<String> dq() {
        List<String> dq = super.dq();
        ArrayList arrayList = new ArrayList(dq.size());
        arrayList.addAll(dq);
        arrayList.addAll(Arrays.asList("page_key", "varchar", "refer_page_key", "varchar", MediationConstant.EXTRA_DURATION, "integer", "is_back", "integer", "last_session", "varchar", "page_title", "varchar", "refer_page_title", "varchar", "page_path", "varchar", "referrer_page_path", "varchar"));
        return arrayList;
    }

    @Override // com.bytedance.embedapplog.ds
    public void dq(ContentValues contentValues) {
        super.dq(contentValues);
        contentValues.put("page_key", this.q);
        contentValues.put("refer_page_key", this.mp);
        contentValues.put(MediationConstant.EXTRA_DURATION, Long.valueOf(this.ig));
        contentValues.put("is_back", Integer.valueOf(this.gh));
        contentValues.put("last_session", this.r);
        contentValues.put("page_title", this.jy);
        contentValues.put("refer_page_title", this.f708f);
        contentValues.put("page_path", this.fw);
        contentValues.put("referrer_page_path", this.cd);
    }

    @Override // com.bytedance.embedapplog.ds
    public void dq(JSONObject jSONObject) {
        super.dq(jSONObject);
        jSONObject.put("page_key", this.q);
        jSONObject.put("refer_page_key", this.mp);
        jSONObject.put(MediationConstant.EXTRA_DURATION, this.ig);
        jSONObject.put("is_back", this.gh);
        jSONObject.put("page_title", this.jy);
        jSONObject.put("refer_page_title", this.f708f);
        jSONObject.put("page_path", this.fw);
        jSONObject.put("referrer_page_path", this.cd);
    }

    @Override // com.bytedance.embedapplog.ds
    public String ia() {
        return this.q + ", " + this.ig;
    }

    public boolean no() {
        return this.q.contains(":");
    }

    public boolean o() {
        return this.ig == -1;
    }

    @Override // com.bytedance.embedapplog.ds
    public String p() {
        return "page";
    }
}
