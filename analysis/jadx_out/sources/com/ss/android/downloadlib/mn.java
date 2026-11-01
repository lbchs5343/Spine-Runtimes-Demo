package com.ss.android.downloadlib;

/* loaded from: classes.dex */
public class mn {
    private static volatile mn dq;

    /* renamed from: d, reason: collision with root package name */
    private com.ss.android.download.api.config.iw f9234d = null;

    private mn() {
    }

    public static mn dq() {
        if (dq == null) {
            synchronized (mn.class) {
                try {
                    if (dq == null) {
                        dq = new mn();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public com.ss.android.download.api.config.iw d() {
        return this.f9234d;
    }
}
