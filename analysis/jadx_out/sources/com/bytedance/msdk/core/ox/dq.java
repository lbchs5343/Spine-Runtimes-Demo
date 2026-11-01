package com.bytedance.msdk.core.ox;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private double f1003d;
    private double dq;
    private int iw;
    private String no;
    private String o;
    private double ox;
    private double p;
    private String s;
    private int mn = 0;
    private int ia = 0;
    private int kk = 0;

    public dq(double d2, double d3, double d4, double d5, int i, String str) {
        this.dq = d2;
        this.f1003d = d3;
        this.ox = d4;
        this.p = d5;
        this.s = str;
        this.iw = i;
    }

    private boolean dq(double d2, double d3) {
        String str = this.s;
        str.getClass();
        switch (str) {
            case "1":
                if (d2 > d3) {
                }
                break;
            case "2":
                if (d2 < d3) {
                }
                break;
            case "3":
                if (d2 >= d3) {
                }
                break;
            case "4":
                if (d2 <= d3) {
                }
                break;
            case "5":
                if (d2 == d3) {
                }
                break;
        }
        return true;
    }

    private boolean p() {
        return dq(this.dq, this.ox);
    }

    private boolean s() {
        return dq(this.f1003d, this.p);
    }

    public double d() {
        return this.dq;
    }

    public void d(int i) {
        this.ia = i;
    }

    public void d(String str) {
        this.no = str;
    }

    public void dq(int i) {
        this.mn = i;
    }

    public void dq(String str) {
        this.o = str;
    }

    public boolean dq() {
        return p();
    }

    public double ox() {
        return this.f1003d;
    }

    public void ox(int i) {
        this.kk = i;
    }

    public String toString() {
        return "adnName = " + this.o + " adnRit = " + this.no + ", send = " + this.mn + ", fill = " + this.ia + ", show = " + this.kk + " localSsr = " + this.dq + ", serviceSsr = " + this.ox + ", localSrr = " + this.f1003d + ", serviceSrr = " + this.p + ", opt = " + this.s + ", condition = " + this.iw + ", compareBehaviorSsr = " + p() + ", compareBehaviorSrr = " + s() + ", checkBehaviorRule = " + dq();
    }
}
