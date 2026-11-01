package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzko {
    public final long zza;
    public final float zzb;
    public final long zzc;

    public /* synthetic */ zzko(zzkm zzkmVar) {
        this.zza = zzkmVar.f8781a;
        this.zzb = zzkmVar.f8782b;
        this.zzc = zzkmVar.f8783c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzko)) {
            return false;
        }
        zzko zzkoVar = (zzko) obj;
        return this.zza == zzkoVar.zza && this.zzb == zzkoVar.zzb && this.zzc == zzkoVar.zzc;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.zza), Float.valueOf(this.zzb), Long.valueOf(this.zzc)});
    }

    public final zzkm zza() {
        zzkm zzkmVar = new zzkm();
        zzkmVar.f8781a = this.zza;
        zzkmVar.f8782b = this.zzb;
        zzkmVar.f8783c = this.zzc;
        return zzkmVar;
    }
}
