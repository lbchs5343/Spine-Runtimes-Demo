package com.google.android.gms.internal.ads;

import g.edt;
import java.util.Collections;
import java.util.Set;

/* loaded from: classes3.dex */
public final class zzchx implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5289a;

    public zzchx(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f5289a = zzhgpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        Set singleton = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbJ)).booleanValue() ? Collections.singleton(new zzded((zzdur) this.f5289a.zzb(), zzfin.zzc())) : Collections.EMPTY_SET;
        zzhgf.zzb(singleton);
        return singleton;
    }
}
