package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes3.dex */
public class zzxa implements zzyd {

    /* renamed from: b, reason: collision with root package name */
    public final zzad[] f8936b;

    /* renamed from: c, reason: collision with root package name */
    public int f8937c;

    /* renamed from: d, reason: collision with root package name */
    public final zzbw f8938d;

    /* renamed from: e, reason: collision with root package name */
    public final int f8939e;

    /* renamed from: f, reason: collision with root package name */
    public final int[] f8940f;

    public zzxa(zzbw zzbwVar, int[] iArr, int i) {
        int length = iArr.length;
        zzdb.zzf(length > 0);
        zzbwVar.getClass();
        this.f8938d = zzbwVar;
        this.f8939e = length;
        this.f8936b = new zzad[length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.f8936b[i2] = zzbwVar.zzb(iArr[i2]);
        }
        Arrays.sort(this.f8936b, new Comparator() { // from class: com.google.android.gms.internal.ads.zzwz
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((zzad) obj2).zzj - ((zzad) obj).zzj;
            }
        });
        this.f8940f = new int[this.f8939e];
        for (int i3 = 0; i3 < this.f8939e; i3++) {
            this.f8940f[i3] = zzbwVar.zza(this.f8936b[i3]);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzxa zzxaVar = (zzxa) obj;
            if (this.f8938d.equals(zzxaVar.f8938d) && Arrays.equals(this.f8940f, zzxaVar.f8940f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f8937c;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.f8940f) + (System.identityHashCode(this.f8938d) * 31);
        this.f8937c = hashCode;
        return hashCode;
    }

    @Override // com.google.android.gms.internal.ads.zzyh
    public final int zza(int i) {
        return this.f8940f[i];
    }

    @Override // com.google.android.gms.internal.ads.zzyh
    public final int zzb(int i) {
        for (int i2 = 0; i2 < this.f8939e; i2++) {
            if (this.f8940f[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzyh
    public final int zzc() {
        return this.f8940f.length;
    }

    @Override // com.google.android.gms.internal.ads.zzyh
    public final zzad zzd(int i) {
        return this.f8936b[i];
    }

    @Override // com.google.android.gms.internal.ads.zzyh
    public final zzbw zze() {
        return this.f8938d;
    }
}
