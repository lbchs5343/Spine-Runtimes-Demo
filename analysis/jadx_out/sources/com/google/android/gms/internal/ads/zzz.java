package com.google.android.gms.internal.ads;

import android.util.SparseBooleanArray;

/* loaded from: classes3.dex */
public final class zzz {

    /* renamed from: a, reason: collision with root package name */
    public final SparseBooleanArray f8969a;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzz)) {
            return false;
        }
        zzz zzzVar = (zzz) obj;
        int i = zzen.zza;
        SparseBooleanArray sparseBooleanArray = this.f8969a;
        if (i >= 24) {
            return sparseBooleanArray.equals(zzzVar.f8969a);
        }
        if (sparseBooleanArray.size() != zzzVar.f8969a.size()) {
            return false;
        }
        for (int i2 = 0; i2 < sparseBooleanArray.size(); i2++) {
            if (zza(i2) != zzzVar.zza(i2)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int i = zzen.zza;
        SparseBooleanArray sparseBooleanArray = this.f8969a;
        if (i >= 24) {
            return sparseBooleanArray.hashCode();
        }
        int size = sparseBooleanArray.size();
        for (int i2 = 0; i2 < sparseBooleanArray.size(); i2++) {
            size = (size * 31) + zza(i2);
        }
        return size;
    }

    public final int zza(int i) {
        SparseBooleanArray sparseBooleanArray = this.f8969a;
        zzdb.zza(i, 0, sparseBooleanArray.size());
        return sparseBooleanArray.keyAt(i);
    }

    public final int zzb() {
        return this.f8969a.size();
    }

    public final boolean zzc(int i) {
        return this.f8969a.get(i);
    }
}
