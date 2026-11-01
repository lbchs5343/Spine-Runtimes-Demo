package com.bytedance.sdk.component.ia.d.iw;

import org.json.JSONObject;

/* loaded from: classes.dex */
class p {

    /* renamed from: d, reason: collision with root package name */
    private String f1919d;
    private String dq;
    private int iw;
    private boolean ox;
    private int p;
    private JSONObject s;

    public p(String str, String str2, boolean z, int i, JSONObject jSONObject, int i2) {
        this.dq = str;
        this.f1919d = str2;
        this.ox = z;
        this.p = i;
        this.s = jSONObject;
        this.iw = i2;
    }

    public String d() {
        return this.dq;
    }

    public JSONObject dq() {
        if (this.s == null) {
            this.s = new JSONObject();
        }
        return this.s;
    }

    public void dq(int i) {
        this.p = i;
    }

    public String ox() {
        return this.f1919d;
    }

    public boolean p() {
        return this.ox;
    }

    public int s() {
        return this.p;
    }
}
