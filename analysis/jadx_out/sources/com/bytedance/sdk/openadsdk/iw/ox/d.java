package com.bytedance.sdk.openadsdk.iw.ox;

import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.iw.ox.p;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d<T extends p> {

    /* renamed from: d, reason: collision with root package name */
    private String f3775d;
    private j dq;
    private JSONObject ox;
    private T p;
    private boolean s = false;

    public d(j jVar, String str, JSONObject jSONObject, T t) {
        this.dq = jVar;
        this.f3775d = str;
        this.ox = jSONObject;
        this.p = t;
    }

    public String d() {
        return this.f3775d;
    }

    public j dq() {
        return this.dq;
    }

    public void dq(boolean z) {
        this.s = z;
    }

    public JSONObject ox() {
        if (this.ox == null) {
            this.ox = new JSONObject();
        }
        return this.ox;
    }

    public T p() {
        return this.p;
    }

    public boolean s() {
        return this.s;
    }
}
