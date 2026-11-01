package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.io.IOException;

/* loaded from: classes3.dex */
public abstract class zzhw implements zzln, zzlq {
    public int bw;
    public zzdc by;
    public boolean bz;
    public zzad[] ca;
    public long cc;
    public long cd;
    public zzlr ce;
    public int cf;
    public zzwg ch;
    public final int ci;
    public boolean cj;
    public zzlp ck;
    public zzoj cm;
    public final Object cg = new Object();
    public final zzkj cb = new zzkj();
    public long cl = Long.MIN_VALUE;
    public zzbv bx = zzbv.zza;

    public zzhw(int i) {
        this.ci = i;
    }

    public void an(long j, boolean z) {
        throw null;
    }

    public void aw() {
    }

    public void ay(zzad[] zzadVarArr, long j, long j2, zzur zzurVar) {
    }

    public void ba() {
    }

    public void bm() {
        throw null;
    }

    public void bn() {
    }

    public void bo(boolean z, boolean z2) {
    }

    public void bs() {
    }

    public final void cn() {
        this.ce.getClass();
    }

    public final int co(zzkj zzkjVar, zzhm zzhmVar, int i) {
        zzwg zzwgVar = this.ch;
        zzwgVar.getClass();
        int zza = zzwgVar.zza(zzkjVar, zzhmVar, i);
        if (zza == -4) {
            if (zzhmVar.zzf()) {
                this.cl = Long.MIN_VALUE;
                return this.cj ? -4 : -3;
            }
            long j = zzhmVar.zze + this.cd;
            zzhmVar.zze = j;
            this.cl = Math.max(this.cl, j);
            return zza;
        }
        if (zza == -5) {
            zzad zzadVar = zzkjVar.zza;
            zzadVar.getClass();
            long j2 = zzadVar.zzt;
            if (j2 != Long.MAX_VALUE) {
                zzab zzb = zzadVar.zzb();
                zzb.zzad(j2 + this.cd);
                zzkjVar.zza = zzb.zzaf();
                return -5;
            }
        }
        return zza;
    }

    public final zzig cp(Exception exc, zzad zzadVar, boolean z, int i) {
        int i2;
        if (zzadVar != null && !this.bz) {
            this.bz = true;
            try {
                int zzY = zzY(zzadVar) & 7;
                this.bz = false;
                i2 = zzY;
            } catch (zzig unused) {
                this.bz = false;
            } catch (Throwable th) {
                this.bz = false;
                throw th;
            }
            return zzig.zzb(exc, zzU(), this.cf, zzadVar, i2, z, i);
        }
        i2 = 4;
        return zzig.zzb(exc, zzU(), this.cf, zzadVar, i2, z, i);
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public final void zzG() {
        zzdb.zzf(this.bw == 0);
        ba();
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public final void zzH(zzad[] zzadVarArr, zzwg zzwgVar, long j, long j2, zzur zzurVar) throws zzig {
        zzdb.zzf(!this.cj);
        this.ch = zzwgVar;
        if (this.cl == Long.MIN_VALUE) {
            this.cl = j;
        }
        this.ca = zzadVarArr;
        this.cd = j2;
        ay(zzadVarArr, j, j2, zzurVar);
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public final void zzI() {
        zzdb.zzf(this.bw == 0);
        zzkj zzkjVar = this.cb;
        zzkjVar.zzb = null;
        zzkjVar.zza = null;
        bn();
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public final void zzJ(long j) throws zzig {
        this.cj = false;
        this.cc = j;
        this.cl = j;
        an(j, false);
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public final void zzK() {
        this.cj = true;
    }

    @Override // com.google.android.gms.internal.ads.zzlq
    public final void zzL(zzlp zzlpVar) {
        synchronized (this.cg) {
            this.ck = zzlpVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public /* synthetic */ void zzM(float f2, float f3) {
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public final void zzN(zzbv zzbvVar) {
        if (Objects.equals(this.bx, zzbvVar)) {
            return;
        }
        this.bx = zzbvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public final void zzO() throws zzig {
        zzdb.zzf(this.bw == 1);
        this.bw = 2;
        bs();
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public final void zzP() {
        zzdb.zzf(this.bw == 2);
        this.bw = 1;
        aw();
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public final boolean zzQ() {
        return this.cl == Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public final boolean zzR() {
        return this.cj;
    }

    @Override // com.google.android.gms.internal.ads.zzln, com.google.android.gms.internal.ads.zzlq
    public final int zzb() {
        return this.ci;
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public final int zzcV() {
        return this.bw;
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public final long zzcX() {
        return this.cl;
    }

    @Override // com.google.android.gms.internal.ads.zzlq
    public int zze() throws zzig {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public zzkp zzl() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public final zzlq zzm() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public final zzwg zzp() {
        return this.ch;
    }

    @Override // com.google.android.gms.internal.ads.zzlq
    public final void zzq() {
        synchronized (this.cg) {
            this.ck = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public final void zzr() {
        zzdb.zzf(this.bw == 1);
        zzkj zzkjVar = this.cb;
        zzkjVar.zzb = null;
        zzkjVar.zza = null;
        this.bw = 0;
        this.ch = null;
        this.ca = null;
        this.cj = false;
        bm();
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public final void zzs(zzlr zzlrVar, zzad[] zzadVarArr, zzwg zzwgVar, long j, boolean z, boolean z2, long j2, long j3, zzur zzurVar) throws zzig {
        zzdb.zzf(this.bw == 0);
        this.ce = zzlrVar;
        this.bw = 1;
        bo(z, z2);
        zzH(zzadVarArr, zzwgVar, j2, j3, zzurVar);
        this.cj = false;
        this.cc = j2;
        this.cl = j2;
        an(j2, z);
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public /* synthetic */ void zzt() {
    }

    @Override // com.google.android.gms.internal.ads.zzli
    public void zzu(int i, Object obj) throws zzig {
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public final void zzv(int i, zzoj zzojVar, zzdc zzdcVar) {
        this.cf = i;
        this.cm = zzojVar;
        this.by = zzdcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public final void zzw() throws IOException {
        zzwg zzwgVar = this.ch;
        zzwgVar.getClass();
        zzwgVar.zzd();
    }
}
