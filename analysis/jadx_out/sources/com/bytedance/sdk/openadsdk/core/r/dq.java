package com.bytedance.sdk.openadsdk.core.r;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private int f3432d;
    private String dq;
    private long iw;
    private String ox;
    private List<j> p = new ArrayList();
    private JSONObject s;

    public List<j> d() {
        return this.p;
    }

    public void d(String str) {
        this.ox = str;
    }

    public int dq() {
        return this.f3432d;
    }

    public void dq(int i) {
        this.f3432d = i;
    }

    public void dq(long j) {
        this.iw = j;
    }

    public void dq(j jVar) {
        this.p.add(jVar);
    }

    public void dq(String str) {
        this.dq = str;
    }

    public void dq(List<j> list) {
        this.p = list;
    }

    public void dq(JSONObject jSONObject) {
        this.s = jSONObject;
    }

    public JSONObject ox() {
        return this.s;
    }
}
