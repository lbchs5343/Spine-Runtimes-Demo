package com.ss.android.socialbase.downloader.exception;

/* loaded from: classes.dex */
public class d extends BaseException {
    private final int dq;

    public d(int i, int i2, String str) {
        super(i, str);
        this.dq = i2;
    }

    public int dq() {
        return this.dq;
    }
}
