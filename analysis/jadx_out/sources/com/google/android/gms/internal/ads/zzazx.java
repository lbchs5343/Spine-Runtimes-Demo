package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* loaded from: classes3.dex */
public final class zzazx implements Comparator {
    public zzazx(zzazy zzazyVar) {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        zzazm zzazmVar = (zzazm) obj;
        zzazm zzazmVar2 = (zzazm) obj2;
        float f2 = zzazmVar.f4645d;
        float f3 = zzazmVar2.f4645d;
        if (f2 < f3) {
            return -1;
        }
        if (f2 > f3) {
            return 1;
        }
        float f4 = zzazmVar.f4644c;
        float f5 = zzazmVar2.f4644c;
        if (f4 < f5) {
            return -1;
        }
        if (f4 > f5) {
            return 1;
        }
        float f6 = (zzazmVar.f4642a - f2) * (zzazmVar.f4646e - f4);
        float f7 = (zzazmVar2.f4642a - f3) * (zzazmVar2.f4646e - f5);
        if (f6 > f7) {
            return -1;
        }
        return f6 < f7 ? 1 : 0;
    }
}
