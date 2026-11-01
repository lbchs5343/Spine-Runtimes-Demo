package com.google.android.gms.internal.ads;

import g.gst;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class zzdny {

    /* renamed from: a, reason: collision with root package name */
    public final zzcnb f6267a;

    /* renamed from: b, reason: collision with root package name */
    public final zzcys f6268b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdbi f6269c;

    /* renamed from: d, reason: collision with root package name */
    public final zzcwk f6270d;

    /* renamed from: e, reason: collision with root package name */
    public final zzfet f6271e;

    /* renamed from: f, reason: collision with root package name */
    public final zzcxt f6272f;

    /* renamed from: g, reason: collision with root package name */
    public final zzcyg f6273g;
    public final zzfew h;

    public zzdny(zzcwk zzcwkVar, zzcxt zzcxtVar, zzcyg zzcygVar, zzcys zzcysVar, zzdbi zzdbiVar, zzfet zzfetVar, zzfew zzfewVar, zzcnb zzcnbVar) {
        this.f6270d = zzcwkVar;
        this.f6272f = zzcxtVar;
        this.f6273g = zzcygVar;
        this.f6268b = zzcysVar;
        this.f6269c = zzdbiVar;
        this.f6271e = zzfetVar;
        this.h = zzfewVar;
        this.f6267a = zzcnbVar;
    }

    public final void zza(zzdoc zzdocVar) {
        zzdnp zzdnpVar = zzdocVar.f6286f;
        final zzcxt zzcxtVar = this.f6272f;
        Objects.requireNonNull(zzcxtVar);
        gst gstVar = new gst() { // from class: com.google.android.gms.internal.ads.zzdnx
            @Override // g.gst
            public final void zzg() {
                zzcxt.this.zzb();
            }
        };
        zzdnpVar.f(this.f6270d, this.f6273g, this.f6268b, this.f6269c, gstVar);
        zzdocVar.zzh(this.f6271e, this.h, this.f6267a);
    }
}
