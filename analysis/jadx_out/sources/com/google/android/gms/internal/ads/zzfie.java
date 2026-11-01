package com.google.android.gms.internal.ads;

import g.dcy;

/* loaded from: classes3.dex */
public final class zzfie {

    /* renamed from: b, reason: collision with root package name */
    public final zzfhx f7905b;

    /* renamed from: c, reason: collision with root package name */
    public final dcy f7906c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f7907d = false;

    /* renamed from: a, reason: collision with root package name */
    public boolean f7904a = false;

    public zzfie(final zzfhc zzfhcVar, final zzfhw zzfhwVar, final zzfhx zzfhxVar) {
        this.f7905b = zzfhxVar;
        this.f7906c = zzgei.zzf(zzgei.zzn(zzfhwVar.zza(zzfhxVar), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzfic
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                zzfie zzfieVar = zzfie.this;
                zzfhw zzfhwVar2 = zzfhwVar;
                zzfhc zzfhcVar2 = zzfhcVar;
                zzfhx zzfhxVar2 = zzfhxVar;
                zzfhl zzfhlVar = (zzfhl) obj;
                synchronized (zzfieVar) {
                    try {
                        zzfieVar.f7904a = true;
                        zzfhwVar2.zzb(zzfhlVar);
                        if (zzfieVar.f7907d) {
                            return zzgei.zzh(new zzfhv(zzfhlVar, zzfhxVar2));
                        }
                        zzfhcVar2.zzd(zzfhxVar2.zza(), zzfhlVar);
                        return zzgei.zzh(null);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }, zzfhxVar.zzb()), Exception.class, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzfid
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                zzfie zzfieVar = zzfie.this;
                Exception exc = (Exception) obj;
                synchronized (zzfieVar) {
                    zzfieVar.f7904a = true;
                    throw exc;
                }
            }
        }, zzfhxVar.zzb());
    }

    public final synchronized dcy zza(zzfhx zzfhxVar) {
        if (!this.f7904a && !this.f7907d && this.f7905b.zza() != null && zzfhxVar.zza() != null && this.f7905b.zza().equals(zzfhxVar.zza())) {
            this.f7907d = true;
            return this.f7906c;
        }
        return null;
    }

    public final synchronized void zzd(zzgee zzgeeVar) {
        zzgei.zzr(zzgei.zzn(this.f7906c, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzfib
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                return zzgei.zzi();
            }
        }, this.f7905b.zzb()), zzgeeVar, this.f7905b.zzb());
    }
}
