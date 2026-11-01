package com.google.android.gms.internal.ads;

import g.edt;
import g.gst;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class zzdoh {

    /* renamed from: a, reason: collision with root package name */
    public final zzflr f6303a;

    /* renamed from: b, reason: collision with root package name */
    public final zzcys f6304b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdbi f6305c;

    /* renamed from: d, reason: collision with root package name */
    public final zzcwk f6306d;

    /* renamed from: e, reason: collision with root package name */
    public final zzdej f6307e;

    /* renamed from: f, reason: collision with root package name */
    public final zzedp f6308f;

    /* renamed from: g, reason: collision with root package name */
    public final zzcxt f6309g;
    public final zzcnb h;
    public final zzcyg i;
    public final zzdsm j;

    public zzdoh(zzcwk zzcwkVar, zzcxt zzcxtVar, zzcyg zzcygVar, zzcys zzcysVar, zzdbi zzdbiVar, zzdej zzdejVar, zzdsm zzdsmVar, zzflr zzflrVar, zzedp zzedpVar, zzcnb zzcnbVar) {
        this.f6306d = zzcwkVar;
        this.f6309g = zzcxtVar;
        this.i = zzcygVar;
        this.f6304b = zzcysVar;
        this.f6305c = zzdbiVar;
        this.f6307e = zzdejVar;
        this.j = zzdsmVar;
        this.f6303a = zzflrVar;
        this.f6308f = zzedpVar;
        this.h = zzcnbVar;
    }

    public final void zza(zzdoi zzdoiVar, zzcfk zzcfkVar) {
        zzdof zzdofVar = zzdoiVar.f6310a;
        final zzcxt zzcxtVar = this.f6309g;
        Objects.requireNonNull(zzcxtVar);
        gst gstVar = new gst() { // from class: com.google.android.gms.internal.ads.zzdog
            @Override // g.gst
            public final void zzg() {
                zzcxt.this.zzb();
            }
        };
        zzcwk zzcwkVar = this.f6306d;
        zzcyg zzcygVar = this.i;
        zzcys zzcysVar = this.f6304b;
        zzdbi zzdbiVar = this.f6305c;
        zzdej zzdejVar = this.f6307e;
        synchronized (zzdofVar) {
            zzdofVar.f(zzcwkVar, zzcygVar, zzcysVar, zzdbiVar, gstVar);
            zzdofVar.f6302g = zzdejVar;
        }
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzjO)).booleanValue() || zzcfkVar == null || zzcfkVar.zzN() == null) {
            return;
        }
        zzchc zzN = zzcfkVar.zzN();
        zzN.zzJ(this.h, this.f6308f, this.f6303a);
        zzN.zzL(this.h, this.f6308f, this.j);
    }
}
