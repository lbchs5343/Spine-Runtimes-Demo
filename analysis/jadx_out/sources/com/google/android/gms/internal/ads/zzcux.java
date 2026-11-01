package com.google.android.gms.internal.ads;

import android.content.Context;
import g.akx;
import g.cmo;
import g.edt;
import g.fmk;
import g.ggs;
import g.gil;
import g.ti;

/* loaded from: classes3.dex */
public final class zzcux implements zzczj, zzdex {

    /* renamed from: a, reason: collision with root package name */
    public final akx f5715a;

    /* renamed from: b, reason: collision with root package name */
    public final gil f5716b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdup f5717c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f5718d;

    /* renamed from: e, reason: collision with root package name */
    public final zzffo f5719e;

    /* renamed from: f, reason: collision with root package name */
    public final zzfko f5720f;

    public zzcux(Context context, zzffo zzffoVar, akx akxVar, gil gilVar, zzdup zzdupVar, zzfko zzfkoVar) {
        this.f5718d = context;
        this.f5719e = zzffoVar;
        this.f5715a = akxVar;
        this.f5716b = gilVar;
        this.f5717c = zzdupVar;
        this.f5720f = zzfkoVar;
    }

    public final void g() {
        String str;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzea)).booleanValue()) {
            String str2 = this.f5719e.zzf;
            zzbzt av = ((cmo) this.f5716b).av();
            fmk fmkVar = ti.f20033a.f20037d;
            if (av != null) {
                fmkVar.getClass();
                str = av.zzb();
            } else {
                str = null;
            }
            fmkVar.j(this.f5718d, this.f5715a, false, av, str, str2, null, this.f5720f, null, null);
        }
        this.f5717c.zzr();
    }

    @Override // com.google.android.gms.internal.ads.zzczj
    public final void zzdn(zzbvx zzbvxVar) {
        g();
    }

    @Override // com.google.android.gms.internal.ads.zzczj
    public final void zzdo(zzfff zzfffVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdex
    public final void zze(ggs ggsVar) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzeb)).booleanValue()) {
            g();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdex
    public final void zzf(String str) {
    }
}
