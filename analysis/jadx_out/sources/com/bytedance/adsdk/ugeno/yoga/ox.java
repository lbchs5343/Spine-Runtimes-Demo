package com.bytedance.adsdk.ugeno.yoga;

/* loaded from: classes.dex */
public enum ox {
    INHERIT(0),
    LTR(1),
    RTL(2);

    private final int p;

    ox(int i) {
        this.p = i;
    }

    public int dq() {
        return this.p;
    }
}
