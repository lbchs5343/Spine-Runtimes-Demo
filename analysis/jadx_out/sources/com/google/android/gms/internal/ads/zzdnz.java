package com.google.android.gms.internal.ads;

import android.content.Context;
import g.akx;
import g.gfo;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzdnz implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final zzflr f6274a;

    /* renamed from: b, reason: collision with root package name */
    public final zzedp f6275b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f6276c;

    /* renamed from: d, reason: collision with root package name */
    public final gfo f6277d;

    /* renamed from: e, reason: collision with root package name */
    public final zzavc f6278e;

    /* renamed from: f, reason: collision with root package name */
    public final zzeea f6279f;

    /* renamed from: g, reason: collision with root package name */
    public final Context f6280g;
    public final zzffs h;
    public final zzdsm i;
    public final akx j;

    public zzdnz(Context context, Executor executor, zzavc zzavcVar, akx akxVar, gfo gfoVar, zzcfx zzcfxVar, zzedp zzedpVar, zzflr zzflrVar, zzdsm zzdsmVar, zzeea zzeeaVar, zzffs zzffsVar) {
        this.f6280g = context;
        this.f6276c = executor;
        this.f6278e = zzavcVar;
        this.j = akxVar;
        this.f6277d = gfoVar;
        this.f6275b = zzedpVar;
        this.f6274a = zzflrVar;
        this.i = zzdsmVar;
        this.f6279f = zzeeaVar;
        this.h = zzffsVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        zzdoc zzdocVar = new zzdoc(this);
        zzdocVar.zzk();
        return zzdocVar;
    }
}
