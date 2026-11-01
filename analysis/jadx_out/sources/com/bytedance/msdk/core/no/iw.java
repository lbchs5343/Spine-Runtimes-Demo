package com.bytedance.msdk.core.no;

import g.awf;

/* loaded from: classes.dex */
public class iw implements Comparable<iw> {

    /* renamed from: d, reason: collision with root package name */
    private double f990d;
    private String dq;
    private int ox;
    private int p;

    public iw(String str, double d2, int i, int i2) {
        this.dq = str;
        this.f990d = d2;
        this.ox = i;
        this.p = i2;
    }

    public double d() {
        return this.f990d;
    }

    @Override // java.lang.Comparable
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public int compareTo(iw iwVar) {
        if (iwVar == null) {
            return 1;
        }
        if (this.f990d > iwVar.d()) {
            return -1;
        }
        if (this.f990d < iwVar.d() || this.ox > iwVar.ox()) {
            return 1;
        }
        if (this.ox < iwVar.ox()) {
            return -1;
        }
        if (this.p > iwVar.p()) {
            return 1;
        }
        return this.p < iwVar.p() ? -1 : 0;
    }

    public String dq() {
        return this.dq;
    }

    public int ox() {
        return this.ox;
    }

    public int p() {
        return this.p;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("{mCsjRitId:");
        sb.append(this.dq);
        sb.append(",mEcpm:");
        sb.append(this.f990d);
        sb.append(",mLoadSort:");
        sb.append(this.ox);
        sb.append(",mShowSort:");
        return awf.x(sb, this.p, "}");
    }
}
