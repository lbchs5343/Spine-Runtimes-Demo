package com.google.android.gms.internal.ads;

import g.bha;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class zztv implements zzup, zzuo {

    /* renamed from: b, reason: collision with root package name */
    public long f8894b;

    /* renamed from: c, reason: collision with root package name */
    public zzuo f8895c;
    public final zzup zza;

    /* renamed from: d, reason: collision with root package name */
    public bha[] f8896d = new bha[0];

    /* renamed from: a, reason: collision with root package name */
    public long f8893a = 0;

    public zztv(zzup zzupVar, boolean z, long j, long j2) {
        this.zza = zzupVar;
        this.f8894b = j2;
    }

    public final boolean e() {
        return this.f8893a != -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final long zza(long j, zzls zzlsVar) {
        if (j == 0) {
            return 0L;
        }
        long max = Math.max(0L, Math.min(zzlsVar.zzc, j));
        long j2 = zzlsVar.zzd;
        long j3 = this.f8894b;
        long max2 = Math.max(0L, Math.min(j2, j3 == Long.MIN_VALUE ? Long.MAX_VALUE : j3 - j));
        if (max != zzlsVar.zzc || max2 != zzlsVar.zzd) {
            zzlsVar = new zzls(max, max2);
        }
        return this.zza.zza(j, zzlsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final long zzb() {
        long zzb = this.zza.zzb();
        if (zzb != Long.MIN_VALUE) {
            long j = this.f8894b;
            if (j == Long.MIN_VALUE || zzb < j) {
                return zzb;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final long zzc() {
        long zzc = this.zza.zzc();
        if (zzc != Long.MIN_VALUE) {
            long j = this.f8894b;
            if (j == Long.MIN_VALUE || zzc < j) {
                return zzc;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final long zzd() {
        if (e()) {
            long j = this.f8893a;
            this.f8893a = -9223372036854775807L;
            long zzd = zzd();
            return zzd != -9223372036854775807L ? zzd : j;
        }
        long zzd2 = this.zza.zzd();
        if (zzd2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        zzdb.zzf(zzd2 >= 0);
        long j2 = this.f8894b;
        zzdb.zzf(j2 == Long.MIN_VALUE || zzd2 <= j2);
        return zzd2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0032, code lost:
    
        if (r0 > r8) goto L17;
     */
    @Override // com.google.android.gms.internal.ads.zzup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long zze(long j) {
        this.f8893a = -9223372036854775807L;
        boolean z = false;
        for (bha bhaVar : this.f8896d) {
            if (bhaVar != null) {
                bhaVar.f11561b = false;
            }
        }
        long zze = this.zza.zze(j);
        if (zze != j) {
            if (zze >= 0) {
                long j2 = this.f8894b;
                if (j2 != Long.MIN_VALUE) {
                }
            }
            zzdb.zzf(z);
            return zze;
        }
        z = true;
        zzdb.zzf(z);
        return zze;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0056, code lost:
    
        if (r14 > r3) goto L24;
     */
    @Override // com.google.android.gms.internal.ads.zzup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long zzf(zzyd[] zzydVarArr, boolean[] zArr, zzwg[] zzwgVarArr, boolean[] zArr2, long j) {
        int length = zzwgVarArr.length;
        this.f8896d = new bha[length];
        zzwg[] zzwgVarArr2 = new zzwg[length];
        int i = 0;
        while (true) {
            zzwg zzwgVar = null;
            if (i >= zzwgVarArr.length) {
                break;
            }
            bha[] bhaVarArr = this.f8896d;
            bha bhaVar = (bha) zzwgVarArr[i];
            bhaVarArr[i] = bhaVar;
            if (bhaVar != null) {
                zzwgVar = bhaVar.f11560a;
            }
            zzwgVarArr2[i] = zzwgVar;
            i++;
        }
        long zzf = this.zza.zzf(zzydVarArr, zArr, zzwgVarArr2, zArr2, j);
        long j2 = (e() && j == 0) ? 0L : j;
        this.f8893a = -9223372036854775807L;
        boolean z = true;
        if (zzf != j2) {
            if (zzf >= 0) {
                long j3 = this.f8894b;
                if (j3 != Long.MIN_VALUE) {
                }
            }
            z = false;
        }
        zzdb.zzf(z);
        for (int i2 = 0; i2 < zzwgVarArr.length; i2++) {
            zzwg zzwgVar2 = zzwgVarArr2[i2];
            if (zzwgVar2 == null) {
                this.f8896d[i2] = null;
            } else {
                bha[] bhaVarArr2 = this.f8896d;
                bha bhaVar2 = bhaVarArr2[i2];
                if (bhaVar2 == null || bhaVar2.f11560a != zzwgVar2) {
                    bhaVarArr2[i2] = new bha(this, zzwgVar2);
                }
            }
            zzwgVarArr[i2] = this.f8896d[i2];
        }
        return zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzwh
    public final /* bridge */ /* synthetic */ void zzg(zzwi zzwiVar) {
        zzuo zzuoVar = this.f8895c;
        zzuoVar.getClass();
        zzuoVar.zzg(this);
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final zzwr zzh() {
        return this.zza.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzuo
    public final void zzi(zzup zzupVar) {
        zzuo zzuoVar = this.f8895c;
        zzuoVar.getClass();
        zzuoVar.zzi(this);
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final void zzj(long j, boolean z) {
        this.zza.zzj(j, false);
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final void zzk() throws IOException {
        this.zza.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final void zzl(zzuo zzuoVar, long j) {
        this.f8895c = zzuoVar;
        this.zza.zzl(this, j);
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final void zzm(long j) {
        this.zza.zzm(j);
    }

    public final void zzn(long j, long j2) {
        this.f8894b = j2;
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final boolean zzo(zzko zzkoVar) {
        return this.zza.zzo(zzkoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final boolean zzp() {
        return this.zza.zzp();
    }
}
