package com.bytedance.msdk.core.d;

import org.json.JSONArray;

/* loaded from: classes.dex */
public class s {

    /* renamed from: d, reason: collision with root package name */
    private final float[] f851d;
    private final String dq;
    private final int[] ox;

    public s(String str, JSONArray jSONArray, JSONArray jSONArray2) {
        this.dq = str;
        this.f851d = new float[jSONArray.length()];
        this.ox = new int[jSONArray2.length()];
        for (int i = 0; i < jSONArray.length(); i++) {
            this.f851d[i] = (float) jSONArray.optDouble(i);
        }
        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
            this.ox[i2] = jSONArray2.optInt(i2);
        }
    }

    public int dq(float f2) {
        int[] iArr;
        int i;
        float[] fArr = this.f851d;
        int i2 = -1;
        if (fArr != null && fArr.length != 0 && (iArr = this.ox) != null && iArr.length != 0) {
            int length = fArr.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    break;
                }
                float[] fArr2 = this.f851d;
                float f3 = fArr2[i3];
                if (f2 <= f3 || (i = i3 + 1) >= length || f2 > fArr2[i]) {
                    if (i3 == length - 1 && f2 > f3) {
                        i2 = this.ox[i3];
                    }
                    i3++;
                } else {
                    int[] iArr2 = this.ox;
                    if (i3 < iArr2.length) {
                        return iArr2[i3];
                    }
                }
            }
        }
        return i2;
    }
}
