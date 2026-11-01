package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzes extends zzev {
    public final long zza;
    public final List zzb;
    public final List zzc;

    public zzes(int i, long j) {
        super(i);
        this.zza = j;
        this.zzb = new ArrayList();
        this.zzc = new ArrayList();
    }

    @Override // com.google.android.gms.internal.ads.zzev
    public final String toString() {
        List list = this.zzb;
        return zzev.zze(this.zzd) + " leaves: " + Arrays.toString(list.toArray()) + " containers: " + Arrays.toString(this.zzc.toArray());
    }

    public final zzes zza(int i) {
        int size = this.zzc.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzes zzesVar = (zzes) this.zzc.get(i2);
            if (zzesVar.zzd == i) {
                return zzesVar;
            }
        }
        return null;
    }

    public final zzet zzb(int i) {
        int size = this.zzb.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzet zzetVar = (zzet) this.zzb.get(i2);
            if (zzetVar.zzd == i) {
                return zzetVar;
            }
        }
        return null;
    }

    public final void zzc(zzes zzesVar) {
        this.zzc.add(zzesVar);
    }

    public final void zzd(zzet zzetVar) {
        this.zzb.add(zzetVar);
    }
}
