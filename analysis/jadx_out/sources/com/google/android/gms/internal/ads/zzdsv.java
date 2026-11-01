package com.google.android.gms.internal.ads;

import android.content.Context;
import g.akx;
import g.dfu;
import g.edu;
import g.fhh;
import g.frd;
import g.fvv;

/* loaded from: classes3.dex */
public final class zzdsv implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6474a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f6475b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f6476c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f6477d;

    public zzdsv(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4, zzhgp zzhgpVar5) {
        this.f6475b = zzhgpVar2;
        this.f6476c = zzhgpVar3;
        this.f6477d = zzhgpVar4;
        this.f6474a = zzhgpVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        zzges zzc = zzfin.zzc();
        dfu dfuVar = (dfu) this.f6475b.zzb();
        frd frdVar = (frd) this.f6476c;
        edu eduVar = new edu((Context) frdVar.f17275a.zzb(), (akx) frdVar.f17276b.zzb());
        ((fhh) this.f6477d).getClass();
        return new zzdsr(zzc, dfuVar, eduVar, new fvv(), ((zzchq) this.f6474a).zza());
    }
}
