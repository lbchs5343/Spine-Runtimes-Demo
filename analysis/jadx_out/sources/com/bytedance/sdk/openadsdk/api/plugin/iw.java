package com.bytedance.sdk.openadsdk.api.plugin;

import android.os.SystemClock;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class iw {

    /* renamed from: d, reason: collision with root package name */
    private long f2417d;
    private String dq;
    private long ox;
    private Map<String, Long> p = new HashMap();

    private iw(String str, long j) {
        this.dq = str;
        this.f2417d = j;
        this.ox = j;
    }

    public static iw dq(String str) {
        return new iw(str, SystemClock.elapsedRealtime());
    }

    public long d(String str) {
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.ox;
        this.ox = SystemClock.elapsedRealtime();
        this.p.put(str, Long.valueOf(elapsedRealtime));
        return elapsedRealtime;
    }

    public long dq() {
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.f2417d;
        this.p.put(this.dq, Long.valueOf(elapsedRealtime));
        return elapsedRealtime;
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
