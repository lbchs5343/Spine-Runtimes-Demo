package com.google.android.gms.internal.ads;

import g.aqw;
import g.dty;
import g.gzx;
import g.ij;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzja implements Runnable {
    public final /* synthetic */ ij zza;
    public final /* synthetic */ zzke zzb;

    public /* synthetic */ zzja(ij ijVar, zzke zzkeVar) {
        this.zza = ijVar;
        this.zzb = zzkeVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        ij ijVar = this.zza;
        zzke zzkeVar = this.zzb;
        int i = ijVar.ae - zzkeVar.zzb;
        ijVar.ae = i;
        boolean z2 = true;
        if (zzkeVar.zzc) {
            ijVar.o = zzkeVar.zzd;
            ijVar.s = true;
        }
        if (i == 0) {
            zzbv zzbvVar = zzkeVar.zza.i;
            if (!ijVar.i.i.zzo() && zzbvVar.zzo()) {
                ijVar.f19429f = -1;
                ijVar.ah = 0L;
            }
            if (!zzbvVar.zzo()) {
                List asList = Arrays.asList(((aqw) zzbvVar).r);
                zzdb.zzf(asList.size() == ijVar.m.size());
                for (int i2 = 0; i2 < asList.size(); i2++) {
                    ((dty) ijVar.m.get(i2)).f14805b = (zzbv) asList.get(i2);
                }
            }
            long j = -9223372036854775807L;
            if (ijVar.s) {
                if (zzkeVar.zza.o.equals(ijVar.i.o) && zzkeVar.zza.f19078f == ijVar.i.t) {
                    z2 = false;
                }
                if (z2) {
                    if (zzbvVar.zzo() || zzkeVar.zza.o.zzb()) {
                        j = zzkeVar.zza.f19078f;
                    } else {
                        gzx gzxVar = zzkeVar.zza;
                        zzur zzurVar = gzxVar.o;
                        long j2 = gzxVar.f19078f;
                        zzbvVar.zzn(zzurVar.zza, ijVar.f19428e);
                        j = j2;
                    }
                }
                z = z2;
            } else {
                z = false;
            }
            ijVar.s = false;
            ijVar.ap(zzkeVar.zza, 1, z, ijVar.o, j, -1);
        }
    }
}
