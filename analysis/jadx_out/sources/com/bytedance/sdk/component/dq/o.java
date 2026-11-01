package com.bytedance.sdk.component.dq;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.dq.no;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class o {

    /* renamed from: d, reason: collision with root package name */
    dq f1878d;
    com.bytedance.sdk.component.mp.dq dq;

    /* renamed from: f, reason: collision with root package name */
    no.d f1879f;
    boolean ia;
    boolean iw;
    boolean jy;
    mp kk;
    boolean mn;
    q o;
    ia p;
    boolean q;
    Context s;
    String ox = "IESJSBridge";
    String no = "host";
    final Set<String> ig = new LinkedHashSet();
    final Set<String> mp = new LinkedHashSet();

    public o() {
    }

    public o(com.bytedance.sdk.component.mp.dq dqVar) {
        this.dq = dqVar;
    }

    private void ox() {
        if ((this.dq == null && !this.q && this.f1878d == null) || ((TextUtils.isEmpty(this.ox) && this.dq != null) || this.p == null)) {
            throw new IllegalArgumentException("Requested arguments aren't set properly when building JsBridge.");
        }
    }

    public fw d() {
        ox();
        return new fw(this);
    }

    public o d(boolean z) {
        this.mn = z;
        return this;
    }

    public o dq() {
        this.jy = true;
        return this;
    }

    public o dq(dq dqVar) {
        this.f1878d = dqVar;
        return this;
    }

    public o dq(ig igVar) {
        this.p = ia.dq(igVar);
        return this;
    }

    public o dq(String str) {
        this.ox = str;
        return this;
    }

    public o dq(boolean z) {
        this.iw = z;
        return this;
    }

    public Context getContext() {
        return this.s;
    }
}
