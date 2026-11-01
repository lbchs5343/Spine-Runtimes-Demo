package com.bytedance.adsdk.ugeno.yoga;

/* loaded from: classes.dex */
public enum ia {
    UNDEFINED(0),
    EXACTLY(1),
    AT_MOST(2);

    private final int p;

    ia(int i) {
        this.p = i;
    }

    public static ia dq(int i) {
        if (i == 0) {
            return UNDEFINED;
        }
        if (i == 1) {
            return EXACTLY;
        }
        if (i == 2) {
            return AT_MOST;
        }
        throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i)));
    }
}
