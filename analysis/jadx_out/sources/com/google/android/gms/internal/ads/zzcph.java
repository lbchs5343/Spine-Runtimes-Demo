package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import g.ezx;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzcph implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5477a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5478b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f5479c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f5480d;

    /* renamed from: e, reason: collision with root package name */
    public final zzhgp f5481e;

    /* renamed from: f, reason: collision with root package name */
    public final zzhgp f5482f;

    /* renamed from: g, reason: collision with root package name */
    public final zzhgp f5483g;
    public final zzhgp h;
    public final zzhgp i;
    public final zzhgp j;

    public zzcph(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4, zzhgp zzhgpVar5, zzhgp zzhgpVar6, zzhgp zzhgpVar7, zzhgp zzhgpVar8, zzhgp zzhgpVar9, zzhgp zzhgpVar10) {
        this.f5480d = zzhgpVar;
        this.f5483g = zzhgpVar2;
        this.i = zzhgpVar3;
        this.f5478b = zzhgpVar4;
        this.f5479c = zzhgpVar5;
        this.f5481e = zzhgpVar6;
        this.j = zzhgpVar7;
        this.f5477a = zzhgpVar8;
        this.f5482f = zzhgpVar9;
        this.h = zzhgpVar10;
    }

    public static ezx zzc(zzcrp zzcrpVar, Context context, zzfeu zzfeuVar, View view, zzcfk zzcfkVar, zzcro zzcroVar, zzdjj zzdjjVar, zzden zzdenVar, zzhfr zzhfrVar, Executor executor) {
        return new ezx(zzcrpVar, context, zzfeuVar, view, zzcfkVar, zzcroVar, zzdjjVar, zzdenVar, zzhfrVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final ezx zzb() {
        return new ezx(((zzcua) this.f5480d).zzb(), (Context) this.f5483g.zzb(), ((zzcpn) this.i).zza(), ((zzcpm) this.f5478b).zza(), ((zzcqa) this.f5479c).zza(), ((zzcpo) this.f5481e).zza(), ((zzdhh) this.j).zza(), (zzden) this.f5477a.zzb(), zzhfw.zza(zzhgi.zza(this.f5482f)), (Executor) this.h.zzb());
    }
}
