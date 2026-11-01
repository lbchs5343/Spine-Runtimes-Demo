package com.google.android.gms.internal.ads;

import android.content.Context;
import g.cvb;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzdif implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6031a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f6032b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f6033c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f6034d;

    public zzdif(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4) {
        this.f6032b = zzhgpVar;
        this.f6033c = zzhgpVar2;
        this.f6034d = zzhgpVar3;
        this.f6031a = zzhgpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzayi zzayiVar = (zzayi) this.f6032b.zzb();
        Executor executor = (Executor) this.f6033c.zzb();
        Context context = (Context) this.f6034d.zzb();
        return new zzcoi(executor, new zzcnu(context, zzayiVar), (cvb) this.f6031a.zzb());
    }
}
