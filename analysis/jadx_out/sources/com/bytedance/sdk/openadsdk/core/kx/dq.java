package com.bytedance.sdk.openadsdk.core.kx;

import android.os.Build;
import com.bytedance.sdk.openadsdk.core.kx.dq.d;
import com.bytedance.sdk.openadsdk.core.kx.dq.ox;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.ox.p;
import com.bytedance.sdk.openadsdk.core.wp;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq {
    private static dq dq = new dq();

    /* renamed from: d, reason: collision with root package name */
    private volatile int f3141d = -1;
    private volatile long ox = 0;
    private volatile long p = 0;

    private dq() {
    }

    public static dq dq() {
        return dq;
    }

    public long d() {
        return this.ox;
    }

    public boolean d(JSONObject jSONObject) {
        JSONArray optJSONArray;
        if (jSONObject != null && (optJSONArray = jSONObject.optJSONArray("callback")) != null && optJSONArray.length() != 0) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                if (dq(optJSONArray.optString(i))) {
                    return true;
                }
            }
        }
        return false;
    }

    public void dq(int i) {
        if (this.f3141d != i) {
            p.dq().ia(i);
        }
        this.f3141d = i;
    }

    public void dq(long j, long j2) {
        this.ox = j;
        this.p = j2;
    }

    public boolean dq(String str) {
        String str2 = Build.MANUFACTURER;
        String str3 = Build.BRAND;
        if (str2 != null && str3 != null) {
            return str2.equalsIgnoreCase(str) || str3.equalsIgnoreCase(str);
        }
        if (str2 != null) {
            return str2.equalsIgnoreCase(str);
        }
        if (str3 != null) {
            return str3.equalsIgnoreCase(str);
        }
        return false;
    }

    public boolean dq(JSONObject jSONObject) {
        JSONArray optJSONArray;
        if (jSONObject != null && (optJSONArray = jSONObject.optJSONArray("register")) != null && optJSONArray.length() != 0) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                if (dq(optJSONArray.optString(i))) {
                    return true;
                }
            }
        }
        return false;
    }

    public int iw() {
        if (!no.ia().s()) {
            return 0;
        }
        if (this.f3141d == -1) {
            int kx = p.dq().kx();
            if (kx != -1) {
                this.f3141d = kx;
            } else if (wp.d().ws() == null) {
                this.f3141d = 1;
            } else {
                this.f3141d = 2;
            }
        }
        return this.f3141d;
    }

    public long ox() {
        return this.p;
    }

    public void p() {
        JSONObject ws = wp.d().ws();
        if (ws == null) {
            this.f3141d = 1;
        }
        if (dq(ws)) {
            new ox().dq(ws, this.f3141d);
        } else if (d(ws)) {
            new d().dq(ws, this.f3141d);
        } else {
            this.f3141d = 1;
        }
    }

    public boolean s() {
        return this.f3141d == 0 || this.f3141d == 3;
    }
}
