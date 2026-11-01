package com.google.android.gms.internal.ads;

import g.dcy;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzfbl implements zzfck {

    /* renamed from: a, reason: collision with root package name */
    public zzcvt f7773a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f7774b = zzgey.zzb();

    public final zzcvt zza() {
        return this.f7773a;
    }

    public final dcy zzb(zzfcl zzfclVar, zzfcj zzfcjVar, zzcvt zzcvtVar) {
        zzcvs zza = zzfcjVar.zza(zzfclVar.zzb);
        zza.zzb(new zzfco(true));
        zzcvt zzcvtVar2 = (zzcvt) zza.zzh();
        this.f7773a = zzcvtVar2;
        final zzcsy zzb = zzcvtVar2.zzb();
        final zzfhl zzfhlVar = new zzfhl();
        zzgdz zzu = zzgdz.zzu(zzb.zzj());
        zzgdp zzgdpVar = new zzgdp(this) { // from class: com.google.android.gms.internal.ads.zzfbj
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                zzfff zzfffVar = (zzfff) obj;
                zzfhlVar.zzb = zzfffVar;
                Iterator it = zzfffVar.zzb.zza.iterator();
                boolean z = false;
                loop0: while (true) {
                    if (it.hasNext()) {
                        Iterator it2 = ((zzfet) it.next()).zza.iterator();
                        while (it2.hasNext()) {
                            if (!((String) it2.next()).contains("FirstPartyRenderer")) {
                                break loop0;
                            }
                            z = true;
                        }
                    } else if (z) {
                        return zzb.zzi(zzgei.zzh(zzfffVar));
                    }
                }
                return zzgei.zzh(null);
            }
        };
        Executor executor = this.f7774b;
        return (zzgdz) zzgei.zzm((zzgdz) zzgei.zzn(zzu, zzgdpVar, executor), new zzfwh() { // from class: com.google.android.gms.internal.ads.zzfbk
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                zzfhl zzfhlVar2 = zzfhl.this;
                zzfhlVar2.zzc = (zzcrq) obj;
                return zzfhlVar2;
            }
        }, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzfck
    public final /* bridge */ /* synthetic */ dcy zzc(zzfcl zzfclVar, zzfcj zzfcjVar, Object obj) {
        return zzb(zzfclVar, zzfcjVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzfck
    public final /* synthetic */ Object zzd() {
        return this.f7773a;
    }
}
