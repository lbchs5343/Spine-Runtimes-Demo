package com.google.android.gms.internal.ads;

import android.content.Context;
import g.akx;
import g.bli;
import g.clx;
import g.cui;
import g.dcy;
import g.duw;
import g.ebg;
import g.edt;
import g.emr;
import g.fdy;
import g.gfo;
import g.ti;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzdoc {

    /* renamed from: b, reason: collision with root package name */
    public final zzeea f6282b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdsm f6283c;

    /* renamed from: d, reason: collision with root package name */
    public final zzffs f6284d;

    /* renamed from: e, reason: collision with root package name */
    public final Executor f6285e;

    /* renamed from: g, reason: collision with root package name */
    public final zzavc f6287g;
    public dcy h;
    public final zzedp i;
    public final gfo j;
    public final zzflr k;
    public final Context l;
    public final akx m;

    /* renamed from: f, reason: collision with root package name */
    public final zzdnp f6286f = new zzdnp();

    /* renamed from: a, reason: collision with root package name */
    public final zzbkh f6281a = new zzbkh();

    public zzdoc(zzdnz zzdnzVar) {
        this.l = zzdnzVar.f6280g;
        this.f6285e = zzdnzVar.f6276c;
        this.f6287g = zzdnzVar.f6278e;
        this.m = zzdnzVar.j;
        this.j = zzdnzVar.f6277d;
        this.i = zzdnzVar.f6275b;
        this.k = zzdnzVar.f6274a;
        this.f6283c = zzdnzVar.i;
        this.f6282b = zzdnzVar.f6279f;
        this.f6284d = zzdnzVar.h;
    }

    public final synchronized dcy zzg(final String str, final JSONObject jSONObject) {
        dcy dcyVar = this.h;
        if (dcyVar == null) {
            return zzgei.zzh(null);
        }
        return zzgei.zzn(dcyVar, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdnq
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                zzdoc zzdocVar = zzdoc.this;
                String str2 = str;
                JSONObject jSONObject2 = jSONObject;
                return zzdocVar.f6281a.zzb((zzcfk) obj, str2, jSONObject2);
            }
        }, this.f6285e);
    }

    public final synchronized void zzh(zzfet zzfetVar, zzfew zzfewVar, zzcnb zzcnbVar) {
        try {
            try {
                dcy dcyVar = this.h;
                if (dcyVar == null) {
                    return;
                }
                zzgei.zzr(dcyVar, new duw(this, zzfetVar, zzfewVar, zzcnbVar, 9, false), this.f6285e);
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    public final synchronized void zzi() {
        dcy dcyVar = this.h;
        if (dcyVar == null) {
            return;
        }
        zzgei.zzr(dcyVar, new bli(20), this.f6285e);
        this.h = null;
    }

    public final synchronized void zzj(String str, Map map) {
        dcy dcyVar = this.h;
        if (dcyVar == null) {
            return;
        }
        zzgei.zzr(dcyVar, new emr(27, map), this.f6285e);
    }

    public final synchronized void zzk() {
        final String str = (String) edt.f15376a.f15379d.zza(zzbcn.zzdP);
        final Context context = this.l;
        final zzavc zzavcVar = this.f6287g;
        final akx akxVar = this.m;
        final gfo gfoVar = this.j;
        final zzeea zzeeaVar = this.f6282b;
        final zzffs zzffsVar = this.f6284d;
        dcy zzm = zzgei.zzm(zzgei.zzk(new zzgdo() { // from class: com.google.android.gms.internal.ads.zzcfv
            @Override // com.google.android.gms.internal.ads.zzgdo
            public final dcy zza() {
                zzcfx zzcfxVar = ti.f20033a.h;
                Context context2 = context;
                zzche zza = zzche.zza();
                zzavc zzavcVar2 = zzavcVar;
                zzeea zzeeaVar2 = zzeeaVar;
                gfo gfoVar2 = gfoVar;
                zzcfk zza2 = zzcfx.zza(context2, zza, "", false, false, zzavcVar2, null, akxVar, null, null, gfoVar2, zzbbl.zza(), null, null, zzeeaVar2, zzffsVar);
                final zzcan zza3 = zzcan.zza((Object) zza2);
                zza2.zzN().zzB(new zzcha() { // from class: com.google.android.gms.internal.ads.zzcfu
                    @Override // com.google.android.gms.internal.ads.zzcha
                    public final void zza(boolean z, int i, String str2, String str3) {
                        zzcan.this.zzb();
                    }
                });
                zza2.loadUrl(str);
                return zza3;
            }
        }, zzcaj.zze), new zzfwh() { // from class: com.google.android.gms.internal.ads.zzdnr
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                zzdoc zzdocVar = zzdoc.this;
                zzcfk zzcfkVar = (zzcfk) obj;
                zzcfkVar.zzag("/result", zzdocVar.f6281a);
                zzchc zzN = zzcfkVar.zzN();
                cui cuiVar = new cui(zzdocVar.l, null);
                zzedp zzedpVar = zzdocVar.i;
                zzflr zzflrVar = zzdocVar.k;
                zzdsm zzdsmVar = zzdocVar.f6283c;
                zzdnp zzdnpVar = zzdocVar.f6286f;
                zzN.zzU(null, zzdnpVar, zzdnpVar, zzdnpVar, zzdnpVar, false, null, cuiVar, null, null, zzedpVar, zzflrVar, zzdsmVar, null, null, null, null, null, null);
                return zzcfkVar;
            }
        }, this.f6285e);
        this.h = zzm;
        zzcam.zza(zzm, "NativeJavascriptExecutor.initializeEngine");
    }

    public final synchronized void zzl(String str, zzbjr zzbjrVar) {
        dcy dcyVar = this.h;
        if (dcyVar == null) {
            return;
        }
        zzgei.zzr(dcyVar, new fdy(str, 27, zzbjrVar), this.f6285e);
    }

    public final void zzm(WeakReference weakReference, String str, zzbjr zzbjrVar) {
        zzl(str, new ebg(this, weakReference, str, zzbjrVar));
    }

    public final synchronized void zzn(String str, zzbjr zzbjrVar) {
        dcy dcyVar = this.h;
        if (dcyVar == null) {
            return;
        }
        zzgei.zzr(dcyVar, new clx(19, str, zzbjrVar, false), this.f6285e);
    }
}
