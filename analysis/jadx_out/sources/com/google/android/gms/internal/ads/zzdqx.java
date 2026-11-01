package com.google.android.gms.internal.ads;

import g.edt;
import java.util.Collections;
import java.util.Set;

/* loaded from: classes3.dex */
public final class zzdqx implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6398a;

    public zzdqx(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f6398a = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        zzges zzc = zzfin.zzc();
        Set singleton = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzeV)).booleanValue() ? Collections.singleton(new zzded(((zzdrq) this.f6398a).zzb(), zzc)) : Collections.EMPTY_SET;
        zzhgf.zzb(singleton);
        return singleton;
    }
}
