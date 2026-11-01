package com.bykv.vk.component.ttvideo.utils;

/* loaded from: classes.dex */
public class AVUtils {

    public static class ScaleInfo {
        public int h;
        public int w;
        public int x;
        public int y;
    }

    public static final ScaleInfo getScaleInfoFromSize(float f2, float f3, float f4, float f5) {
        ScaleInfo scaleInfo = new ScaleInfo();
        float f6 = f2 / f3;
        scaleInfo.w = (int) f4;
        int i = (int) (f4 / f6);
        scaleInfo.h = i;
        if (i < f5) {
            scaleInfo.h = (int) f5;
            scaleInfo.w = (int) (f6 * f5);
        }
        int i2 = scaleInfo.h;
        int i3 = ((int) (i2 - f5)) >> 1;
        scaleInfo.y = i3;
        int i4 = scaleInfo.w;
        int i5 = ((int) (i4 - f4)) >> 1;
        scaleInfo.x = i5;
        if (i2 > f5) {
            scaleInfo.y = 0 - i3;
        }
        if (i4 > f4) {
            scaleInfo.x = 0 - i5;
        }
        return scaleInfo;
    }
}
