package com.bytedance.adsdk.ugeno.yoga;

/* loaded from: classes.dex */
public class kk {
    public static long dq(float f2, float f3) {
        return Float.floatToRawIntBits(f3) | (Float.floatToRawIntBits(f2) << 32);
    }

    public static long dq(int i, int i2) {
        return dq(i, i2);
    }
}
