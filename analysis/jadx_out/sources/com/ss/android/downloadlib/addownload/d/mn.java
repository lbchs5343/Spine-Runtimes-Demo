package com.ss.android.downloadlib.addownload.d;

/* loaded from: classes.dex */
public class mn {

    /* renamed from: d, reason: collision with root package name */
    private int f9148d;
    private int dq;
    private String ox;

    public mn(int i) {
        this(i, 0, null);
    }

    public mn(int i, int i2) {
        this(i, i2, null);
    }

    public mn(int i, int i2, String str) {
        this.dq = i;
        this.f9148d = i2;
        this.ox = str;
    }

    public mn(int i, String str) {
        this(i, 0, str);
    }

    public String d() {
        return this.ox;
    }

    public int dq() {
        return this.f9148d;
    }

    public int getType() {
        return this.dq;
    }
}
