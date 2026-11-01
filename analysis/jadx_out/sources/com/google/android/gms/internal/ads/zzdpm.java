package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import g.aoy;
import g.cui;
import g.dcy;
import g.dub;
import g.edt;
import g.evo;
import g.gst;
import g.ti;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzdpm {

    /* renamed from: a, reason: collision with root package name */
    public final zzdef f6343a;

    /* renamed from: b, reason: collision with root package name */
    public final zzbyh f6344b;

    /* renamed from: c, reason: collision with root package name */
    public final zzflr f6345c;

    /* renamed from: d, reason: collision with root package name */
    public final zzedp f6346d;

    /* renamed from: e, reason: collision with root package name */
    public final zzcyg f6347e;

    /* renamed from: f, reason: collision with root package name */
    public final zzavc f6348f;

    /* renamed from: g, reason: collision with root package name */
    public final zzcys f6349g;
    public final zzcwk h;
    public final zzdbi i;
    public final zzdsm j;
    public final zzdaz k;
    public final zzcny l;
    public final zzdej m;
    public final cui n;
    public final zzcnb o;
    public final zzcxt p;
    public final Executor q;
    public final zzdps r;

    public zzdpm(zzcwk zzcwkVar, zzcxt zzcxtVar, zzcyg zzcygVar, zzcys zzcysVar, zzdbi zzdbiVar, Executor executor, zzdef zzdefVar, zzcny zzcnyVar, cui cuiVar, zzbyh zzbyhVar, zzavc zzavcVar, zzdaz zzdazVar, zzedp zzedpVar, zzflr zzflrVar, zzdsm zzdsmVar, zzdej zzdejVar, zzcnb zzcnbVar, zzdps zzdpsVar) {
        this.h = zzcwkVar;
        this.p = zzcxtVar;
        this.f6347e = zzcygVar;
        this.f6349g = zzcysVar;
        this.i = zzdbiVar;
        this.q = executor;
        this.f6343a = zzdefVar;
        this.l = zzcnyVar;
        this.n = cuiVar;
        this.f6344b = zzbyhVar;
        this.f6348f = zzavcVar;
        this.k = zzdazVar;
        this.f6346d = zzedpVar;
        this.f6345c = zzflrVar;
        this.j = zzdsmVar;
        this.m = zzdejVar;
        this.o = zzcnbVar;
        this.r = zzdpsVar;
    }

    public static final dcy zzj(zzcfk zzcfkVar, String str, String str2, final Bundle bundle) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzck)).booleanValue()) {
            dub.m(ti.f20033a.v, bundle, zzdrv.RENDERING_WEBVIEW_LOAD_HTML_START.zza());
        }
        final zzcao zzcaoVar = new zzcao();
        zzcfkVar.zzN().zzB(new zzcha() { // from class: com.google.android.gms.internal.ads.zzdpd
            @Override // com.google.android.gms.internal.ads.zzcha
            public final void zza(boolean z, int i, String str3, String str4) {
                zzcao zzcaoVar2 = zzcaoVar;
                if (z) {
                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzck)).booleanValue()) {
                        dub.m(ti.f20033a.v, bundle, zzdrv.RENDERING_WEBVIEW_LOAD_HTML_END.zza());
                    }
                    zzcaoVar2.zzc(null);
                    return;
                }
                zzcaoVar2.zzd(new Exception("Ad Web View failed to load. Error code: " + i + ", Description: " + str3 + ", Failing URL: " + str4));
            }
        });
        zzcfkVar.zzae(str, str2, null);
        return zzcaoVar;
    }

    public final void zzi(final zzcfk zzcfkVar, boolean z, zzbju zzbjuVar, Bundle bundle) {
        zzaux zzc;
        zzbce zzbceVar = zzbcn.zzck;
        edt edtVar = edt.f15376a;
        zzbcl zzbclVar = edtVar.f15379d;
        zzbcl zzbclVar2 = edtVar.f15379d;
        if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
            dub.m(ti.f20033a.v, bundle, zzdrv.RENDERING_CONFIGURE_WEBVIEW_START.zza());
        }
        zzcfkVar.zzN().zzU(new evo() { // from class: com.google.android.gms.internal.ads.zzdpe
            @Override // g.evo
            public final void onAdClicked() {
                zzdpm.this.h.onAdClicked();
            }
        }, this.f6347e, this.f6349g, new zzbij() { // from class: com.google.android.gms.internal.ads.zzdpf
            @Override // com.google.android.gms.internal.ads.zzbij
            public final void zzb(String str, String str2) {
                zzdpm.this.i.zzb(str, str2);
            }
        }, new gst() { // from class: com.google.android.gms.internal.ads.zzdpg
            @Override // g.gst
            public final void zzg() {
                zzdpm.this.p.zzb();
            }
        }, z, zzbjuVar, this.n, new aoy(this), this.f6344b, this.f6346d, this.f6345c, this.j, null, this.m, null, null, null, this.o);
        zzcfkVar.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.gms.internal.ads.zzdph
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                zzdpm zzdpmVar = zzdpm.this;
                zzdpmVar.getClass();
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzjI)).booleanValue() && motionEvent != null && motionEvent.getAction() == 0) {
                    zzdpmVar.r.zzb(motionEvent);
                }
                zzdpmVar.n.f13530c = true;
                if (view == null) {
                    return false;
                }
                view.performClick();
                return false;
            }
        });
        zzcfkVar.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzdpi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                zzdpm.this.n.f13530c = true;
            }
        });
        if (((Boolean) zzbclVar2.zza(zzbcn.zzcJ)).booleanValue() && (zzc = this.f6348f.zzc()) != null) {
            zzc.zzo(zzcfkVar.zzF());
        }
        zzdef zzdefVar = this.f6343a;
        Executor executor = this.q;
        zzdefVar.zzo(zzcfkVar, executor);
        zzdefVar.zzo(new zzaym() { // from class: com.google.android.gms.internal.ads.zzdpj
            @Override // com.google.android.gms.internal.ads.zzaym
            public final void zzdp(zzayl zzaylVar) {
                zzchc zzN = zzcfk.this.zzN();
                Rect rect = zzaylVar.zzd;
                zzN.zzq(rect.left, rect.top, false);
            }
        }, executor);
        zzdefVar.zza(zzcfkVar.zzF());
        zzcfkVar.zzag("/trackActiveViewUnit", new zzbjr() { // from class: com.google.android.gms.internal.ads.zzdpk
            @Override // com.google.android.gms.internal.ads.zzbjr
            public final void zza(Object obj, Map map) {
                zzdpm zzdpmVar = zzdpm.this;
                zzdpmVar.l.zzh(zzcfkVar);
            }
        });
        this.l.zzi(zzcfkVar);
        if (((Boolean) zzbclVar2.zza(zzbceVar)).booleanValue()) {
            dub.m(ti.f20033a.v, bundle, zzdrv.RENDERING_CONFIGURE_WEBVIEW_END.zza());
        }
    }
}
