package com.google.android.gms.internal.ads;

import g.bs;
import g.cjf;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzcnt {

    /* renamed from: a, reason: collision with root package name */
    public zzcny f5395a;

    /* renamed from: c, reason: collision with root package name */
    public final String f5397c;

    /* renamed from: e, reason: collision with root package name */
    public final zzbor f5399e;

    /* renamed from: f, reason: collision with root package name */
    public final Executor f5400f;

    /* renamed from: b, reason: collision with root package name */
    public final bs f5396b = new bs(this);

    /* renamed from: d, reason: collision with root package name */
    public final cjf f5398d = new cjf(this);

    public zzcnt(String str, zzbor zzborVar, Executor executor) {
        this.f5397c = str;
        this.f5399e = zzborVar;
        this.f5400f = executor;
    }

    public final void zzc(zzcny zzcnyVar) {
        bs bsVar = this.f5396b;
        zzbor zzborVar = this.f5399e;
        zzborVar.zzb("/updateActiveView", bsVar);
        zzborVar.zzb("/untrackActiveViewUnit", this.f5398d);
        this.f5395a = zzcnyVar;
    }

    public final void zzd(zzcfk zzcfkVar) {
        zzcfkVar.zzag("/updateActiveView", this.f5396b);
        zzcfkVar.zzag("/untrackActiveViewUnit", this.f5398d);
    }

    public final void zze() {
        bs bsVar = this.f5396b;
        zzbor zzborVar = this.f5399e;
        zzborVar.zzc("/updateActiveView", bsVar);
        zzborVar.zzc("/untrackActiveViewUnit", this.f5398d);
    }

    public final void zzf(zzcfk zzcfkVar) {
        zzcfkVar.zzaz("/updateActiveView", this.f5396b);
        zzcfkVar.zzaz("/untrackActiveViewUnit", this.f5398d);
    }
}
