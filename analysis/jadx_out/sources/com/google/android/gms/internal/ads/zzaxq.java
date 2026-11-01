package com.google.android.gms.internal.ads;

import android.view.View;
import g.edt;

/* loaded from: classes3.dex */
public final class zzaxq extends zzaxt {

    /* renamed from: a, reason: collision with root package name */
    public final View f4593a;

    public zzaxq(zzawf zzawfVar, String str, String str2, zzasf zzasfVar, int i, int i2, View view) {
        super(zzawfVar, "gU8TtHMsoUkPWKRp4pchlMiybbWQk/XZmErfUYdY8xYZMhv+DT5EJrcXuMdR9TAB", "MCymTm++OZPusG19DHbi/CZ9AvqE5ZBPeRnjpDHc8+4=", zzasfVar, i, 57);
        this.f4593a = view;
    }

    @Override // com.google.android.gms.internal.ads.zzaxt
    public final void c() {
        View view = this.f4593a;
        if (view != null) {
            zzbce zzbceVar = zzbcn.zzdx;
            edt edtVar = edt.f15376a;
            Boolean bool = (Boolean) edtVar.f15379d.zza(zzbceVar);
            Boolean bool2 = (Boolean) edtVar.f15379d.zza(zzbcn.zzkE);
            zzawj zzawjVar = new zzawj((String) this.j.invoke(null, view, this.k.zzb().getResources().getDisplayMetrics(), bool, bool2));
            zzasy zza = zzasz.zza();
            zza.zzb(zzawjVar.zza.longValue());
            zza.zzd(zzawjVar.zzb.longValue());
            zza.zze(zzawjVar.zzc.longValue());
            if (bool2.booleanValue()) {
                zza.zzc(zzawjVar.zze.longValue());
            }
            if (bool.booleanValue()) {
                zza.zza(zzawjVar.zzd.longValue());
            }
            this.i.zzY((zzasz) zza.zzbr());
        }
    }
}
