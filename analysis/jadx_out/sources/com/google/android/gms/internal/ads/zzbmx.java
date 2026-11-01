package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import g.agd;
import g.akx;
import g.aqj;
import g.bxy;
import g.cbv;
import g.edt;
import g.esy;
import g.gfo;
import g.gfx;
import g.mx;
import g.ti;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.TimeoutException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzbmx implements zzbmp, zzbmo {

    /* renamed from: a, reason: collision with root package name */
    public final zzcfk f4880a;

    public zzbmx(Context context, akx akxVar, zzavc zzavcVar, gfo gfoVar) throws zzcfw {
        zzcfx zzcfxVar = ti.f20033a.h;
        zzcfk zza = zzcfx.zza(context, zzche.zza(), "", false, false, null, null, akxVar, null, null, null, zzbbl.zza(), null, null, null, null);
        this.f4880a = zza;
        zza.zzF().setWillNotDraw(true);
    }

    public static final void b(Runnable runnable) {
        mx mxVar = cbv.f12612a.f12615d;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            agd.e("runOnUiThread > the UI thread is the main thread, the runnable will be run now");
            runnable.run();
        } else {
            agd.e("runOnUiThread > the UI thread is not the main thread, the runnable will be added to the message queue");
            if (esy.f16117a.post(runnable)) {
                return;
            }
            agd.b("runOnUiThread > the runnable could not be placed to the message queue");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final void zza(final String str) {
        agd.e("invokeJavascript on adWebView from js");
        b(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbmt
            @Override // java.lang.Runnable
            public final void run() {
                zzbmx zzbmxVar = zzbmx.this;
                zzbmxVar.f4880a.zza(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final /* synthetic */ void zzb(String str, String str2) {
        zzbmn.zzc(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbmp
    public final void zzc() {
        this.f4880a.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzbmm
    public final /* synthetic */ void zzd(String str, Map map) {
        zzbmn.zza(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzbmm
    public final /* synthetic */ void zze(String str, JSONObject jSONObject) {
        zzbmn.zzb(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbmp
    public final void zzf(final String str) {
        agd.e("loadHtml on adWebView from html");
        b(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbmu
            @Override // java.lang.Runnable
            public final void run() {
                zzbmx zzbmxVar = zzbmx.this;
                zzbmxVar.f4880a.loadData(str, "text/html", "UTF-8");
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbmp
    public final void zzg(final String str) {
        agd.e("loadHtmlWrapper on adWebView from path: ".concat(String.valueOf(str)));
        b(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbmr
            @Override // java.lang.Runnable
            public final void run() {
                zzbmx zzbmxVar = zzbmx.this;
                zzbmxVar.f4880a.loadUrl(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbmp
    public final void zzh(String str) {
        agd.e("loadJavascript on adWebView from path: ".concat(String.valueOf(str)));
        final String str2 = "<!DOCTYPE html><html><head><script src=\"" + str + "\"></script></head><body></body></html>";
        b(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbmv
            @Override // java.lang.Runnable
            public final void run() {
                zzbmx zzbmxVar = zzbmx.this;
                zzbmxVar.f4880a.loadData(str2, "text/html", "UTF-8");
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbmp
    public final boolean zzi() {
        return this.f4880a.zzaE();
    }

    @Override // com.google.android.gms.internal.ads.zzbmp
    public final zzbnw zzj() {
        return new zzbnw(this);
    }

    @Override // com.google.android.gms.internal.ads.zzbmp
    public final void zzk(final zzbnd zzbndVar) {
        zzchc zzN = this.f4880a.zzN();
        Objects.requireNonNull(zzbndVar);
        zzN.zzI(new zzchb() { // from class: com.google.android.gms.internal.ads.zzbms
            @Override // com.google.android.gms.internal.ads.zzchb
            public final void zza() {
                ti.f20033a.v.getClass();
                long currentTimeMillis = System.currentTimeMillis();
                zzbnd zzbndVar2 = zzbnd.this;
                final long j = zzbndVar2.zzc;
                final ArrayList arrayList = zzbndVar2.zzb;
                arrayList.add(Long.valueOf(currentTimeMillis - j));
                agd.e("LoadNewJavascriptEngine(onEngLoaded) latency is " + String.valueOf(arrayList.get(0)) + " ms.");
                gfx gfxVar = esy.f16117a;
                final zzbnu zzbnuVar = zzbndVar2.zza;
                final zzbnt zzbntVar = zzbndVar2.zzd;
                final zzbmp zzbmpVar = zzbndVar2.zze;
                gfxVar.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbmz
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbnu zzbnuVar2 = zzbnu.this;
                        zzbnt zzbntVar2 = zzbntVar;
                        final zzbmp zzbmpVar2 = zzbmpVar;
                        ArrayList arrayList2 = arrayList;
                        long j2 = j;
                        zzbnuVar2.getClass();
                        agd.e("loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Trying to acquire lock");
                        synchronized (zzbnuVar2.f4890d) {
                            try {
                                agd.e("loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Lock acquired");
                                if (zzbntVar2.zze() != -1 && zzbntVar2.zze() != 1) {
                                    zzbce zzbceVar = zzbcn.zzhq;
                                    edt edtVar = edt.f15376a;
                                    if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                                        zzbntVar2.zzh(new TimeoutException("Unable to receive /jsLoaded GMSG."), "SdkJavascriptFactory.loadJavascriptEngine.setLoadedListener");
                                    } else {
                                        zzbntVar2.zzg();
                                    }
                                    zzges zzgesVar = zzcaj.zze;
                                    Objects.requireNonNull(zzbmpVar2);
                                    zzgesVar.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbnc
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            zzbmp.this.zzc();
                                        }
                                    });
                                    String valueOf = String.valueOf(edtVar.f15379d.zza(zzbcn.zzb));
                                    int zze = zzbntVar2.zze();
                                    int i = zzbnuVar2.f4887a;
                                    String valueOf2 = String.valueOf(arrayList2.get(0));
                                    ti.f20033a.v.getClass();
                                    agd.e("Could not receive /jsLoaded in " + valueOf + " ms. JS engine session reference status(onEngLoadedTimeout) is " + zze + ". Update status(onEngLoadedTimeout) is " + i + ". LoadNewJavascriptEngine(onEngLoadedTimeout) latency is " + valueOf2 + " ms. Total latency(onEngLoadedTimeout) is " + (System.currentTimeMillis() - j2) + " ms. Rejecting.");
                                    agd.e("loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Lock released");
                                    return;
                                }
                                agd.e("loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Lock released, the promise is already settled");
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                }, ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzb)).intValue());
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final /* synthetic */ void zzl(String str, JSONObject jSONObject) {
        zzbmn.zzd(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbnv
    public final void zzq(String str, zzbjr zzbjrVar) {
        this.f4880a.zzag(str, new bxy(this, zzbjrVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbnv
    public final void zzr(String str, final zzbjr zzbjrVar) {
        this.f4880a.zzaA(str, new aqj() { // from class: com.google.android.gms.internal.ads.zzbmq
            @Override // g.aqj
            public final boolean apply(Object obj) {
                zzbjr zzbjrVar2 = (zzbjr) obj;
                if (zzbjrVar2 instanceof bxy) {
                    return ((bxy) zzbjrVar2).f12422a.equals(zzbjr.this);
                }
                return false;
            }
        });
    }
}
