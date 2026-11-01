package com.google.android.gms.internal.ads;

import android.util.SparseArray;

/* loaded from: classes3.dex */
public final class zzly {

    /* renamed from: a, reason: collision with root package name */
    public final zzz f8798a;

    /* renamed from: b, reason: collision with root package name */
    public final SparseArray f8799b;

    public zzly(zzz zzzVar, SparseArray sparseArray) {
        this.f8798a = zzzVar;
        SparseArray sparseArray2 = new SparseArray(zzzVar.zzb());
        for (int i = 0; i < zzzVar.zzb(); i++) {
            int zza = zzzVar.zza(i);
            zzlx zzlxVar = (zzlx) sparseArray.get(zza);
            zzlxVar.getClass();
            sparseArray2.append(zza, zzlxVar);
        }
        this.f8799b = sparseArray2;
    }

    public final int zza(int i) {
        return this.f8798a.zza(i);
    }

    public final int zzb() {
        return this.f8798a.zzb();
    }

    public final zzlx zzc(int i) {
        zzlx zzlxVar = (zzlx) this.f8799b.get(i);
        zzlxVar.getClass();
        return zzlxVar;
    }

    public final boolean zzd(int i) {
        return this.f8798a.zzc(i);
    }
}
