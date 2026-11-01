package com.bytedance.sdk.component.iw.d;

import com.bytedance.sdk.component.iw.iw;
import com.bytedance.sdk.component.iw.mn;
import java.util.Map;

/* loaded from: classes.dex */
public class p<T> implements iw {

    /* renamed from: d, reason: collision with root package name */
    private int f1945d;
    Map<String, String> dq;
    private T ox;
    private String p;
    private mn s;

    public p(int i, T t, String str) {
        this.f1945d = i;
        this.ox = t;
        this.p = str;
    }

    public p(int i, T t, String str, Map<String, String> map) {
        this(i, t, str);
        this.dq = map;
    }

    @Override // com.bytedance.sdk.component.iw.iw
    public int d() {
        return this.f1945d;
    }

    @Override // com.bytedance.sdk.component.iw.iw
    public mn dq() {
        return this.s;
    }

    public void dq(mn mnVar) {
        this.s = mnVar;
    }

    @Override // com.bytedance.sdk.component.iw.iw
    public T ox() {
        return this.ox;
    }

    @Override // com.bytedance.sdk.component.iw.iw
    public String p() {
        return this.p;
    }

    @Override // com.bytedance.sdk.component.iw.iw
    public Map<String, String> s() {
        return this.dq;
    }
}
