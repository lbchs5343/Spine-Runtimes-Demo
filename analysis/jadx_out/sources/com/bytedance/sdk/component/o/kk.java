package com.bytedance.sdk.component.o;

/* loaded from: classes.dex */
public abstract class kk implements Comparable<kk>, Runnable {

    /* renamed from: d, reason: collision with root package name */
    private String f2027d;
    private int dq;

    public kk(String str) {
        this.dq = 5;
        this.f2027d = str;
    }

    public kk(String str, int i) {
        this.dq = 0;
        this.dq = i == 0 ? 5 : i;
        this.f2027d = str;
    }

    public int dq() {
        return this.dq;
    }

    @Override // java.lang.Comparable
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public int compareTo(kk kkVar) {
        if (dq() < kkVar.dq()) {
            return 1;
        }
        return dq() >= kkVar.dq() ? -1 : 0;
    }

    public void dq(int i) {
        this.dq = i;
    }
}
