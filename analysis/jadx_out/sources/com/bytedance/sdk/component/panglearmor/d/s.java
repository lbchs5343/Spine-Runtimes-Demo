package com.bytedance.sdk.component.panglearmor.d;

import org.json.JSONObject;

/* loaded from: classes.dex */
public class s {
    private static s dq;

    /* renamed from: d, reason: collision with root package name */
    private boolean f2172d = false;
    private long ox = 180000;
    private long p = 43200000;
    private long s = 3;
    private long iw = 30;
    private long mn = 15;

    private s() {
    }

    public static s dq() {
        if (dq == null) {
            synchronized (s.class) {
                try {
                    if (dq == null) {
                        dq = new s();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public boolean d() {
        return this.f2172d;
    }

    public synchronized void dq(JSONObject jSONObject) {
        if (jSONObject != null) {
            if (!jSONObject.toString().isEmpty()) {
                this.f2172d = jSONObject.optBoolean("sensorenable", false);
                this.ox = jSONObject.optLong("interval", 180000L);
                this.p = jSONObject.optLong("expireduation", 43200000L);
                this.s = jSONObject.optLong("showinterval", 3L);
                this.iw = jSONObject.optLong("azimuth_unit", 30L);
                this.mn = jSONObject.optLong("angle_unit", 15L);
            }
        }
    }

    public long iw() {
        return this.iw;
    }

    public long mn() {
        return this.mn;
    }

    public long ox() {
        return this.p;
    }

    public long p() {
        return this.ox;
    }

    public long s() {
        return this.s;
    }
}
