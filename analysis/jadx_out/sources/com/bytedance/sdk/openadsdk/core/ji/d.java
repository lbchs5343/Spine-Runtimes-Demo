package com.bytedance.sdk.openadsdk.core.ji;

import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private Map<String, String> f3107d;
    private byte[] dq;
    private JSONObject ox;
    private int p;
    private JSONObject s;

    public int d() {
        return this.p;
    }

    public void d(JSONObject jSONObject) {
        this.ox = jSONObject;
    }

    public JSONObject dq() {
        return this.s;
    }

    public void dq(int i) {
        this.p = i;
    }

    public void dq(Map<String, String> map) {
        this.f3107d = map;
    }

    public void dq(JSONObject jSONObject) {
        this.s = jSONObject;
    }

    public void dq(byte[] bArr) {
        this.dq = bArr;
    }

    public byte[] ox() {
        return this.dq;
    }

    public JSONObject p() {
        return this.ox;
    }

    public Map<String, String> s() {
        return this.f3107d;
    }
}
