package com.google.android.gms.internal.ads;

import g.he;

/* loaded from: classes3.dex */
public abstract class zzfzi {
    public static int a(int i, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("cannot store more than MAX_VALUE elements");
        }
        if (i2 <= i) {
            return i;
        }
        int i3 = i + (i >> 1) + 1;
        if (i3 < i2) {
            int highestOneBit = Integer.highestOneBit(i2 - 1);
            i3 = highestOneBit + highestOneBit;
        }
        return i3 < 0 ? he.UNDEFINED_ITEM_ID : i3;
    }

    public abstract zzfzi zzb(Object obj);
}
