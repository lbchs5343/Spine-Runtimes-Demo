package com.google.android.gms.internal.ads;

import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class zzwy extends zzxa {
    public static void a(ArrayList arrayList, long[] jArr) {
        long j = 0;
        for (int i = 0; i < 2; i++) {
            j += jArr[i];
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            zzfzl zzfzlVar = (zzfzl) arrayList.get(i2);
            if (zzfzlVar != null) {
                zzfzlVar.zzf(new zzww(j, jArr[i2]));
            }
        }
    }
}
