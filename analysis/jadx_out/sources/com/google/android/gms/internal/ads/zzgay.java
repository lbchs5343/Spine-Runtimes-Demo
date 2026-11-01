package com.google.android.gms.internal.ads;

import g.awf;

/* loaded from: classes3.dex */
public final class zzgay {
    public static void a(int i, Object[] objArr) {
        for (int i2 = 0; i2 < i; i2++) {
            if (objArr[i2] == null) {
                throw new NullPointerException(awf.ac(i2, "at index "));
            }
        }
    }
}
