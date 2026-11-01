package com.bytedance.sdk.component.adexpress.dq.dq;

import com.bytedance.sdk.component.iw.jy;

/* loaded from: classes.dex */
public class dq {
    private static dq s = new dq();

    /* renamed from: d, reason: collision with root package name */
    private volatile p f1674d;
    private volatile d dq;
    private volatile s iw;
    private volatile ox ox;
    private volatile jy p;

    private dq() {
    }

    public static dq dq() {
        return s;
    }

    public d d() {
        return this.dq;
    }

    public void dq(d dVar) {
        this.dq = dVar;
    }

    public void dq(ox oxVar) {
        this.ox = oxVar;
    }

    public void dq(p pVar) {
        this.f1674d = pVar;
    }

    public void dq(s sVar) {
        this.iw = sVar;
    }

    public void dq(jy jyVar) {
        this.p = jyVar;
    }

    public s iw() {
        return this.iw;
    }

    public ox ox() {
        return this.ox;
    }

    public p p() {
        return this.f1674d;
    }

    public jy s() {
        return this.p;
    }
}
