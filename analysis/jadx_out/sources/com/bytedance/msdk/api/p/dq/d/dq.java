package com.bytedance.msdk.api.p.dq.d;

import g.awf;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private String f765d;
    private int dq;

    public dq(int i, String str) {
        this.dq = i;
        this.f765d = str;
    }

    public String d() {
        return this.f765d;
    }

    public int dq() {
        return this.dq;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GMCustomAdError{mCode=");
        sb.append(this.dq);
        sb.append(", mMessage='");
        return awf.ad(sb, this.f765d, "'}");
    }
}
