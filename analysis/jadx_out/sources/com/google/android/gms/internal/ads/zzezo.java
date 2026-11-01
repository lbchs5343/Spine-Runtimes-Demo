package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzezo implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7717a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7718b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f7719c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f7720d;

    /* renamed from: e, reason: collision with root package name */
    public final zzhgp f7721e;

    public zzezo(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4, zzhgp zzhgpVar5, zzhgp zzhgpVar6, zzhgp zzhgpVar7) {
        this.f7719c = zzhgpVar;
        this.f7720d = zzhgpVar2;
        this.f7721e = zzhgpVar3;
        this.f7717a = zzhgpVar6;
        this.f7718b = zzhgpVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzbzz zzbzzVar = (zzbzz) this.f7719c.zzb();
        boolean booleanValue = ((zzeyz) this.f7720d).zzb().booleanValue();
        boolean booleanValue2 = ((zzeza) this.f7721e).zzb().booleanValue();
        zzclm.zza();
        zzges zzc = zzfin.zzc();
        ((zzeyw) this.f7717a).zza();
        return new zzezm(zzbzzVar, booleanValue, booleanValue2, zzc, (ScheduledExecutorService) this.f7718b.zzb());
    }
}
