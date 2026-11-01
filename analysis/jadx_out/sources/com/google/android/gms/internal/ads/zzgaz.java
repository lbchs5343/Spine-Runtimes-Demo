package com.google.android.gms.internal.ads;

import g.aqm;
import g.cyu;
import g.gln;
import java.util.Comparator;

/* loaded from: classes3.dex */
public abstract class zzgaz implements Comparator {
    public static zzgaz zzb(Comparator comparator) {
        return new aqm(comparator);
    }

    public static zzgaz zzc() {
        return gln.f18354b;
    }

    @Override // java.util.Comparator
    public abstract int compare(Object obj, Object obj2);

    public zzgaz zza() {
        return new cyu(this);
    }
}
