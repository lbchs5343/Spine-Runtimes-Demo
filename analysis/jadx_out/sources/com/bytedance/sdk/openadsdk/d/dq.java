package com.bytedance.sdk.openadsdk.d;

import com.bytedance.sdk.component.utils.ig;
import g.abn;
import java.io.File;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private String f3735d;
    private long dq;
    private String ox;
    private long p;
    private long s;

    public dq(JSONObject jSONObject) {
        this.dq = jSONObject.optLong("cid");
        this.f3735d = jSONObject.optString(abn.EXTRA_URL);
        this.ox = jSONObject.optString("file_hash");
        this.p = jSONObject.optLong("effective_time");
        this.s = jSONObject.optLong("expiration_time");
    }

    public String d() {
        return this.ox;
    }

    public boolean d(String str) {
        File file = new File(str, this.ox);
        if (!file.exists()) {
            return false;
        }
        try {
            return file.delete();
        } catch (Exception unused) {
            return false;
        }
    }

    public long dq(String str) {
        File file = new File(str, this.ox);
        return file.exists() ? file.lastModified() : System.currentTimeMillis();
    }

    public String dq() {
        return this.f3735d;
    }

    public long ox() {
        return this.p;
    }

    public boolean p() {
        return System.currentTimeMillis() >= this.s;
    }

    public JSONObject s() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cid", this.dq);
            jSONObject.put(abn.EXTRA_URL, this.f3735d);
            jSONObject.put("file_hash", this.ox);
            jSONObject.put("effective_time", this.p);
            jSONObject.put("expiration_time", this.s);
            return jSONObject;
        } catch (Exception e2) {
            ig.d("BrandVideo", e2.getMessage());
            return jSONObject;
        }
    }
}
