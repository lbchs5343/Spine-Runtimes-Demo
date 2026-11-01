package com.google.android.gms.internal.ads;

import android.util.Pair;

/* loaded from: classes3.dex */
public final class zzum extends zzwt {
    public boolean aa;
    public h t;
    public final zzbt u;
    public final boolean v;
    public boolean w;
    public zzuj x;
    public final zzbu y;
    public boolean z;

    public zzum(zzut zzutVar, boolean z) {
        super(zzutVar);
        boolean z2;
        if (z) {
            zzutVar.zzv();
            z2 = true;
        } else {
            z2 = false;
        }
        this.v = z2;
        this.y = new zzbu();
        this.u = new zzbt();
        zzutVar.zzM();
        this.t = new h(new zzul(zzutVar.zzJ()), zzbu.zza, h.f3962a);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008f  */
    @Override // com.google.android.gms.internal.ads.zzwt
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void ab(zzbv zzbvVar) {
        long j;
        h hVar;
        zzuj zzujVar;
        Object obj;
        h hVar2;
        zzur zzurVar = null;
        if (this.aa) {
            h hVar3 = this.t;
            this.t = new h(zzbvVar, hVar3.f3963b, hVar3.f3964c);
            zzuj zzujVar2 = this.x;
            if (zzujVar2 != null) {
                ac(zzujVar2.zzn());
            }
        } else if (zzbvVar.zzo()) {
            if (this.w) {
                h hVar4 = this.t;
                hVar2 = new h(zzbvVar, hVar4.f3963b, hVar4.f3964c);
            } else {
                hVar2 = new h(zzbvVar, zzbu.zza, h.f3962a);
            }
            this.t = hVar2;
        } else {
            zzbu zzbuVar = this.y;
            zzbvVar.zze(0, zzbuVar, 0L);
            Object obj2 = zzbuVar.zzb;
            zzuj zzujVar3 = this.x;
            if (zzujVar3 != null) {
                long zzq = zzujVar3.zzq();
                this.t.zzn(zzujVar3.zza.zza, this.u);
                this.t.zze(0, zzbuVar, 0L);
                if (zzq != 0) {
                    j = zzq;
                    Pair zzl = zzbvVar.zzl(this.y, this.u, 0, j);
                    Object obj3 = zzl.first;
                    long longValue = ((Long) zzl.second).longValue();
                    if (this.w) {
                        hVar = new h(zzbvVar, obj2, obj3);
                    } else {
                        h hVar5 = this.t;
                        hVar = new h(zzbvVar, hVar5.f3963b, hVar5.f3964c);
                    }
                    this.t = hVar;
                    zzujVar = this.x;
                    if (zzujVar != null && ac(longValue)) {
                        zzur zzurVar2 = zzujVar.zza;
                        obj = zzurVar2.zza;
                        if (this.t.f3964c != null && obj.equals(h.f3962a)) {
                            obj = this.t.f3964c;
                        }
                        zzurVar = zzurVar2.zza(obj);
                    }
                }
            }
            j = 0;
            Pair zzl2 = zzbvVar.zzl(this.y, this.u, 0, j);
            Object obj32 = zzl2.first;
            long longValue2 = ((Long) zzl2.second).longValue();
            if (this.w) {
            }
            this.t = hVar;
            zzujVar = this.x;
            if (zzujVar != null) {
                zzur zzurVar22 = zzujVar.zza;
                obj = zzurVar22.zza;
                if (this.t.f3964c != null) {
                    obj = this.t.f3964c;
                }
                zzurVar = zzurVar22.zza(obj);
            }
        }
        this.w = true;
        this.aa = true;
        h(this.t);
        if (zzurVar != null) {
            zzuj zzujVar4 = this.x;
            zzujVar4.getClass();
            zzujVar4.zzr(zzurVar);
        }
    }

    public final boolean ac(long j) {
        zzuj zzujVar = this.x;
        int zza = this.t.zza(zzujVar.zza.zza);
        if (zza == -1) {
            return false;
        }
        h hVar = this.t;
        zzbt zzbtVar = this.u;
        hVar.zzd(zza, zzbtVar, false);
        long j2 = zzbtVar.zzd;
        if (j2 != -9223372036854775807L && j >= j2) {
            j = Math.max(0L, j2 - 1);
        }
        zzujVar.zzs(j);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzwt
    public final zzur ad(zzur zzurVar) {
        Object obj = this.t.f3964c;
        Object obj2 = zzurVar.zza;
        if (obj != null && obj.equals(obj2)) {
            obj2 = h.f3962a;
        }
        return zzurVar.zza(obj2);
    }

    public final zzbv zzC() {
        return this.t;
    }

    @Override // com.google.android.gms.internal.ads.zzwt
    public final void zzF() {
        if (this.v) {
            return;
        }
        this.z = true;
        q(null, this.ae);
    }

    @Override // com.google.android.gms.internal.ads.zzwt, com.google.android.gms.internal.ads.zzut
    public final void zzG(zzup zzupVar) {
        ((zzuj) zzupVar).zzt();
        if (zzupVar == this.x) {
            this.x = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwt, com.google.android.gms.internal.ads.zzut
    /* renamed from: zzH, reason: merged with bridge method [inline-methods] */
    public final zzuj zzI(zzur zzurVar, zzys zzysVar, long j) {
        zzuj zzujVar = new zzuj(zzurVar, zzysVar, j);
        zzut zzutVar = this.ae;
        zzujVar.zzu(zzutVar);
        if (!this.aa) {
            this.x = zzujVar;
            if (!this.z) {
                this.z = true;
                q(null, zzutVar);
            }
            return zzujVar;
        }
        Object obj = zzurVar.zza;
        if (this.t.f3964c != null && obj.equals(h.f3962a)) {
            obj = this.t.f3964c;
        }
        zzujVar.zzr(zzurVar.zza(obj));
        return zzujVar;
    }

    @Override // com.google.android.gms.internal.ads.zztz, com.google.android.gms.internal.ads.zztq
    public final void zzq() {
        this.aa = false;
        this.z = false;
        super.zzq();
    }

    @Override // com.google.android.gms.internal.ads.zztq, com.google.android.gms.internal.ads.zzut
    public final void zzt(zzaw zzawVar) {
        if (this.w) {
            h hVar = this.t;
            this.t = new h(new zzwp(this.t.f8899d, zzawVar), hVar.f3963b, hVar.f3964c);
        } else {
            this.t = new h(new zzul(zzawVar), zzbu.zza, h.f3962a);
        }
        this.ae.zzt(zzawVar);
    }

    @Override // com.google.android.gms.internal.ads.zztz, com.google.android.gms.internal.ads.zzut
    public final void zzz() {
    }
}
