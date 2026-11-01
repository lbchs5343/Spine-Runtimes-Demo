package com.bytedance.adsdk.ugeno.yoga;

import com.bykv.vk.component.ttvideo.LiveConfigKey;

/* loaded from: classes.dex */
public enum dq {
    AUTO(0, LiveConfigKey.AUTO),
    FLEX_START(1, "flex_start"),
    CENTER(2, "center"),
    FLEX_END(3, "flex_end"),
    STRETCH(4, "stretch"),
    BASELINE(5, "baseline"),
    SPACE_BETWEEN(6, "space_between"),
    SPACE_AROUND(7, "space_around");

    private final int kk;
    private final String o;

    dq(int i, String str) {
        this.kk = i;
        this.o = str;
    }

    public static dq dq(int i) {
        switch (i) {
            case 0:
                return AUTO;
            case 1:
                return FLEX_START;
            case 2:
                return CENTER;
            case 3:
                return FLEX_END;
            case 4:
                return STRETCH;
            case 5:
                return BASELINE;
            case 6:
                return SPACE_BETWEEN;
            case 7:
                return SPACE_AROUND;
            default:
                throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i)));
        }
    }

    public static dq dq(String str) {
        str.getClass();
        switch (str) {
            case "stretch":
                return STRETCH;
            case "baseline":
                return BASELINE;
            case "center":
                return CENTER;
            case "space_around":
                return SPACE_AROUND;
            case "auto":
                return AUTO;
            case "flex_start":
                return FLEX_START;
            case "space_between":
                return SPACE_BETWEEN;
            case "flex_end":
                return FLEX_END;
            default:
                throw new IllegalArgumentException("Unknown enum value: ".concat(str));
        }
    }

    public int dq() {
        return this.kk;
    }
}
