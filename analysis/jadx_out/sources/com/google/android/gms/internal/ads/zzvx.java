package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Looper;
import g.fkd;
import g.flr;

/* loaded from: classes3.dex */
public final class zzvx extends zztq {
    public final zzgc l;
    public zzhd n;
    public boolean o;
    public zzaw q;
    public boolean r;
    public final zzrp s;
    public final int t;
    public final zzvu u;
    public boolean m = true;
    public long p = -9223372036854775807L;

    public /* synthetic */ zzvx(zzaw zzawVar, zzgc zzgcVar, zzvu zzvuVar, zzrp zzrpVar, zzyw zzywVar, int i) {
        this.q = zzawVar;
        this.l = zzgcVar;
        this.u = zzvuVar;
        this.s = zzrpVar;
        this.t = i;
    }

    @Override // com.google.android.gms.internal.ads.zztq
    public final void k(zzhd zzhdVar) {
        this.n = zzhdVar;
        Looper.myLooper().getClass();
        zzdb.zzb(this.f8889g);
        v();
    }

    public final void v() {
        long j = this.p;
        boolean z = this.r;
        boolean z2 = this.o;
        zzaw zzJ = zzJ();
        zzbv zzwkVar = new zzwk(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j, j, 0L, 0L, z, false, false, null, zzJ, z2 ? zzJ.zzc : null);
        if (this.m) {
            zzwkVar = new flr(zzwkVar);
        }
        h(zzwkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zzG(zzup zzupVar) {
        fkd fkdVar = (fkd) zzupVar;
        if (fkdVar.f16913e) {
            for (zzwf zzwfVar : fkdVar.ak) {
                zzwfVar.zzn();
            }
        }
        fkdVar.ae.zzj(fkdVar);
        fkdVar.ag.removeCallbacksAndMessages(null);
        fkdVar.j = null;
        fkdVar.k = true;
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final zzup zzI(zzur zzurVar, zzys zzysVar, long j) {
        zzgd zza = this.l.zza();
        zzhd zzhdVar = this.n;
        if (zzhdVar != null) {
            zza.zzf(zzhdVar);
        }
        zzar zzarVar = zzJ().zzb;
        zzarVar.getClass();
        Uri uri = zzarVar.zza;
        zzdb.zzb(this.f8889g);
        return new fkd(uri, zza, new zztt(this.u.zza), this.s, this.f8883a.zza(0, zzurVar), this.f8888f.zza(0, zzurVar), this, zzysVar, this.t, zzen.zzs(-9223372036854775807L));
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final synchronized zzaw zzJ() {
        return this.q;
    }

    public final void zza(long j, boolean z, boolean z2) {
        if (j == -9223372036854775807L) {
            j = this.p;
        }
        if (!this.m && this.p == j && this.r == z && this.o == z2) {
            return;
        }
        this.p = j;
        this.r = z;
        this.o = z2;
        this.m = false;
        v();
    }

    @Override // com.google.android.gms.internal.ads.zztq
    public final void zzq() {
    }

    @Override // com.google.android.gms.internal.ads.zztq, com.google.android.gms.internal.ads.zzut
    public final synchronized void zzt(zzaw zzawVar) {
        this.q = zzawVar;
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zzz() {
    }
}
