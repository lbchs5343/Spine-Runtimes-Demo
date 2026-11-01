package com.bytedance.sdk.openadsdk.core.cd;

/* loaded from: classes3.dex */
public enum dq {
    USE_KWS(0),
    USE_ALOG(1),
    USE_PITAYA(2),
    USE_OTHER(3);

    private long iw;
    private long s;

    dq(int i) {
        if (i < 0 || i > 63) {
            throw new IllegalArgumentException("bit argument illegal exception,range [0,63]");
        }
        this.s = 1 << i;
        this.iw = i;
    }

    public long dq() {
        return this.s;
    }
}
