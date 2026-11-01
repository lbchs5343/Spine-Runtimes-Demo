package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzcc {

    /* renamed from: a, reason: collision with root package name */
    public final boolean[] f5162a;

    /* renamed from: b, reason: collision with root package name */
    public final zzbw f5163b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f5164c;

    /* renamed from: d, reason: collision with root package name */
    public final int[] f5165d;
    public final int zza;

    static {
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
    }

    public zzcc(zzbw zzbwVar, boolean z, int[] iArr, boolean[] zArr) {
        int i = zzbwVar.zza;
        this.zza = i;
        zzdb.zzd(i == iArr.length && i == zArr.length);
        this.f5163b = zzbwVar;
        this.f5164c = z && i > 1;
        this.f5165d = (int[]) iArr.clone();
        this.f5162a = (boolean[]) zArr.clone();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzcc.class == obj.getClass()) {
            zzcc zzccVar = (zzcc) obj;
            if (this.f5164c == zzccVar.f5164c && this.f5163b.equals(zzccVar.f5163b) && Arrays.equals(this.f5165d, zzccVar.f5165d) && Arrays.equals(this.f5162a, zzccVar.f5162a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f5162a) + ((Arrays.hashCode(this.f5165d) + (((this.f5163b.hashCode() * 31) + (this.f5164c ? 1 : 0)) * 31)) * 31);
    }

    public final int zza() {
        return this.f5163b.zzc;
    }

    public final zzad zzb(int i) {
        return this.f5163b.zzb(i);
    }

    public final boolean zzc() {
        for (boolean z : this.f5162a) {
            if (z) {
                return true;
            }
        }
        return false;
    }

    public final boolean zzd(int i) {
        return this.f5162a[i];
    }
}
