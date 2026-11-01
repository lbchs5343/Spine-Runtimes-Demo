package com.google.android.gms.internal.ads;

import android.content.Context;
import g.akx;
import g.eno;
import g.fnq;
import g.gfo;

/* loaded from: classes3.dex */
public final class zzdpn {

    /* renamed from: a, reason: collision with root package name */
    public final zzeea f6350a;

    /* renamed from: b, reason: collision with root package name */
    public final akx f6351b;

    /* renamed from: c, reason: collision with root package name */
    public final gfo f6352c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f6353d;

    /* renamed from: e, reason: collision with root package name */
    public final zzbbl f6354e;

    /* renamed from: f, reason: collision with root package name */
    public final zzffs f6355f;

    /* renamed from: g, reason: collision with root package name */
    public final zzavc f6356g;
    public final zzbdu h;
    public final zzcze i;

    public zzdpn(zzcfx zzcfxVar, Context context, zzavc zzavcVar, zzbdu zzbduVar, akx akxVar, gfo gfoVar, zzbbl zzbblVar, zzcze zzczeVar, zzeea zzeeaVar, zzffs zzffsVar) {
        this.f6353d = context;
        this.f6356g = zzavcVar;
        this.h = zzbduVar;
        this.f6351b = akxVar;
        this.f6352c = gfoVar;
        this.f6354e = zzbblVar;
        this.i = zzczeVar;
        this.f6350a = zzeeaVar;
        this.f6355f = zzffsVar;
    }

    public final zzcfk zza(eno enoVar, zzfet zzfetVar, zzfew zzfewVar) throws zzcfw {
        return zzcfx.zza(this.f6353d, zzche.zzc(enoVar), enoVar.zza, false, false, this.f6356g, this.h, this.f6351b, null, new fnq(26, this), this.f6352c, this.f6354e, zzfetVar, zzfewVar, this.f6350a, this.f6355f);
    }
}
