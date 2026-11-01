package com.google.android.gms.internal.ads;

import android.util.Pair;
import g.enw;

/* loaded from: classes3.dex */
public abstract class zzbv {
    public static final zzbv zza = new enw();

    static {
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
    }

    public final boolean equals(Object obj) {
        int zzh;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbv)) {
            return false;
        }
        zzbv zzbvVar = (zzbv) obj;
        if (zzbvVar.zzc() == zzc() && zzbvVar.zzb() == zzb()) {
            zzbu zzbuVar = new zzbu();
            zzbt zzbtVar = new zzbt();
            zzbu zzbuVar2 = new zzbu();
            zzbt zzbtVar2 = new zzbt();
            for (int i = 0; i < zzc(); i++) {
                if (!zze(i, zzbuVar, 0L).equals(zzbvVar.zze(i, zzbuVar2, 0L))) {
                    return false;
                }
            }
            for (int i2 = 0; i2 < zzb(); i2++) {
                if (!zzd(i2, zzbtVar, true).equals(zzbvVar.zzd(i2, zzbtVar2, true))) {
                    return false;
                }
            }
            int zzg = zzg(true);
            if (zzg == zzbvVar.zzg(true) && (zzh = zzh(true)) == zzbvVar.zzh(true)) {
                while (zzg != zzh) {
                    int zzj = zzj(zzg, 0, true);
                    if (zzj != zzbvVar.zzj(zzg, 0, true)) {
                        return false;
                    }
                    zzg = zzj;
                }
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        zzbu zzbuVar = new zzbu();
        zzbt zzbtVar = new zzbt();
        int zzc = zzc() + 217;
        int i2 = 0;
        while (true) {
            i = zzc * 31;
            if (i2 >= zzc()) {
                break;
            }
            zzc = i + zze(i2, zzbuVar, 0L).hashCode();
            i2++;
        }
        int zzb = zzb() + i;
        for (int i3 = 0; i3 < zzb(); i3++) {
            zzb = (zzb * 31) + zzd(i3, zzbtVar, true).hashCode();
        }
        int zzg = zzg(true);
        while (zzg != -1) {
            zzb = (zzb * 31) + zzg;
            zzg = zzj(zzg, 0, true);
        }
        return zzb;
    }

    public abstract int zza(Object obj);

    public abstract int zzb();

    public abstract int zzc();

    public abstract zzbt zzd(int i, zzbt zzbtVar, boolean z);

    public abstract zzbu zze(int i, zzbu zzbuVar, long j);

    public abstract Object zzf(int i);

    public int zzg(boolean z) {
        return zzo() ? -1 : 0;
    }

    public int zzh(boolean z) {
        if (zzo()) {
            return -1;
        }
        return zzc() - 1;
    }

    public final int zzi(int i, zzbt zzbtVar, zzbu zzbuVar, int i2, boolean z) {
        int i3 = zzd(i, zzbtVar, false).zzc;
        if (zze(i3, zzbuVar, 0L).zzo != i) {
            return i + 1;
        }
        int zzj = zzj(i3, i2, z);
        if (zzj == -1) {
            return -1;
        }
        return zze(zzj, zzbuVar, 0L).zzn;
    }

    public int zzj(int i, int i2, boolean z) {
        if (i2 == 0) {
            if (i == zzh(z)) {
                return -1;
            }
            return i + 1;
        }
        if (i2 == 1) {
            return i;
        }
        if (i2 == 2) {
            return i == zzh(z) ? zzg(z) : i + 1;
        }
        throw new IllegalStateException();
    }

    public int zzk(int i, int i2, boolean z) {
        if (i == zzg(false)) {
            return -1;
        }
        return i - 1;
    }

    public final Pair zzl(zzbu zzbuVar, zzbt zzbtVar, int i, long j) {
        Pair zzm = zzm(zzbuVar, zzbtVar, i, j, 0L);
        zzm.getClass();
        return zzm;
    }

    public final Pair zzm(zzbu zzbuVar, zzbt zzbtVar, int i, long j, long j2) {
        zzdb.zza(i, 0, zzc());
        zze(i, zzbuVar, j2);
        if (j == -9223372036854775807L) {
            long j3 = zzbuVar.zzl;
            j = 0;
        }
        int i2 = zzbuVar.zzn;
        zzd(i2, zzbtVar, false);
        while (i2 < zzbuVar.zzo) {
            long j4 = zzbtVar.zze;
            if (j == 0) {
                break;
            }
            int i3 = i2 + 1;
            long j5 = zzd(i3, zzbtVar, false).zze;
            if (j < 0) {
                break;
            }
            i2 = i3;
        }
        zzd(i2, zzbtVar, true);
        long j6 = zzbtVar.zze;
        long j7 = zzbtVar.zzd;
        if (j7 != -9223372036854775807L) {
            j = Math.min(j, j7 - 1);
        }
        long max = Math.max(0L, j);
        Object obj = zzbtVar.zzb;
        obj.getClass();
        return Pair.create(obj, Long.valueOf(max));
    }

    public zzbt zzn(Object obj, zzbt zzbtVar) {
        return zzd(zza(obj), zzbtVar, true);
    }

    public final boolean zzo() {
        return zzc() == 0;
    }
}
