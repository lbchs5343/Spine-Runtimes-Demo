package com.bytedance.sdk.openadsdk.core.r;

import android.text.TextUtils;

/* loaded from: classes3.dex */
public class jy {

    /* renamed from: d, reason: collision with root package name */
    private String f3468d;
    private int dq;
    private double iw;
    private double mn;
    private int ox;
    private double p;
    private String s;

    public String d() {
        return this.f3468d;
    }

    public void d(double d2) {
        this.iw = d2;
    }

    public void d(int i) {
        this.ox = i;
    }

    public void d(String str) {
        this.s = str;
    }

    public int dq() {
        return this.dq;
    }

    public void dq(double d2) {
        this.p = d2;
    }

    public void dq(int i) {
        this.dq = i;
    }

    public void dq(String str) {
        this.f3468d = str;
    }

    public boolean ia() {
        return !TextUtils.isEmpty(this.s);
    }

    public double iw() {
        return this.iw;
    }

    public double mn() {
        return this.mn;
    }

    public int ox() {
        return this.ox;
    }

    public void ox(double d2) {
        this.mn = d2;
    }

    public double p() {
        return this.p;
    }

    public String s() {
        return this.s;
    }
}
