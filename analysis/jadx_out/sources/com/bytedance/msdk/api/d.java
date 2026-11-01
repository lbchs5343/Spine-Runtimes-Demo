package com.bytedance.msdk.api;

/* loaded from: classes.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private String f755d;
    private String dq;
    private String iw;
    private String ox;
    private String p;
    private int s;

    public d d(String str) {
        this.dq = str;
        return this;
    }

    public String d() {
        return this.dq;
    }

    public d dq(int i) {
        this.s = i;
        return this;
    }

    public d dq(String str) {
        this.p = str;
        return this;
    }

    public String dq() {
        return this.p;
    }

    public String iw() {
        return this.iw;
    }

    public d ox(String str) {
        this.f755d = str;
        return this;
    }

    public String ox() {
        return this.f755d;
    }

    public d p(String str) {
        this.ox = str;
        return this;
    }

    public String p() {
        return this.ox;
    }

    public int s() {
        return this.s;
    }

    public d s(String str) {
        this.iw = str;
        return this;
    }

    public String toString() {
        return "{mediationRit='" + this.dq + "', adnName='" + this.f755d + "', customAdnName='" + this.ox + "', adType='" + this.p + "', errCode=" + this.s + ", errMsg=" + this.iw + '}';
    }
}
