package com.google.android.gms.internal.ads;

import android.content.Context;
import g.edt;
import g.esy;
import g.ti;

/* loaded from: classes3.dex */
public final class zzesc implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7477a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7478b;

    public zzesc(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f7477a = zzhgpVar;
        this.f7478b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        zzfzt zzn;
        zzesz zzb = ((zzetb) this.f7477a).zzb();
        Context zza = ((zzchq) this.f7478b).zza();
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkZ)).booleanValue()) {
            esy esyVar = ti.f20033a.z;
            if (esy.ag(zza)) {
                zzn = zzfzt.zzo(zzb);
                zzhgf.zzb(zzn);
                return zzn;
            }
        }
        zzn = zzfzt.zzn();
        zzhgf.zzb(zzn);
        return zzn;
    }
}
