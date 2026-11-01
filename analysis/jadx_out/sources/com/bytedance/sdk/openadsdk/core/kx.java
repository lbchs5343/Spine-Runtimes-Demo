package com.bytedance.sdk.openadsdk.core;

import android.os.SystemClock;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class kx {

    /* renamed from: d, reason: collision with root package name */
    private long f3140d;
    private String dq;
    private long ox;
    private Map<String, Long> p = new HashMap();

    private kx(String str, long j) {
        this.dq = str;
        this.f3140d = j;
        this.ox = j;
    }

    public static kx dq(String str) {
        return new kx(str, SystemClock.elapsedRealtime());
    }

    public long d() {
        return SystemClock.elapsedRealtime() - this.f3140d;
    }

    public long d(String str) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = elapsedRealtime - this.ox;
        this.ox = elapsedRealtime;
        this.p.put(str, Long.valueOf(j));
        return j;
    }

    public long dq() {
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.f3140d;
        this.p.put(this.dq, Long.valueOf(elapsedRealtime));
        return elapsedRealtime;
    }

    public JSONObject dq(long j) {
        JSONObject jSONObject = new JSONObject();
        dq(jSONObject, j);
        return jSONObject;
    }

    public void dq(String str, long j) {
        this.p.put(str, Long.valueOf(j));
    }

    public void dq(JSONObject jSONObject, long j) {
        if (jSONObject == null) {
            return;
        }
        for (Map.Entry<String, Long> entry : this.p.entrySet()) {
            String key = entry.getKey();
            Long value = entry.getValue();
            if (!TextUtils.isEmpty(key) && value.longValue() > j) {
                try {
                    jSONObject.put(key, value);
                } catch (JSONException unused) {
                }
            }
        }
    }
}
