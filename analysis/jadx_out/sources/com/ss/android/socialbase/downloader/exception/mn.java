package com.ss.android.socialbase.downloader.exception;

/* loaded from: classes.dex */
public class mn extends BaseException {
    public mn(int i, String str) {
        super(i, str);
    }

    public mn dq(String str) {
        setExtraInfo(str);
        return this;
    }

    public String dq() {
        return getExtraInfo();
    }
}
