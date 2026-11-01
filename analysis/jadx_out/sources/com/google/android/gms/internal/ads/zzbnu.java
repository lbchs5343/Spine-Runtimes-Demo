package com.google.android.gms.internal.ads;

import android.content.Context;
import g.agd;
import g.akx;
import g.ano;
import g.dzh;
import g.edt;
import g.esy;
import g.fc;
import g.fpd;
import g.qf;
import g.ra;
import g.sc;
import g.ti;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class zzbnu {

    /* renamed from: b, reason: collision with root package name */
    public final akx f4888b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfko f4889c;

    /* renamed from: e, reason: collision with root package name */
    public final ano f4891e;

    /* renamed from: f, reason: collision with root package name */
    public final Context f4892f;

    /* renamed from: g, reason: collision with root package name */
    public final String f4893g;
    public zzbnt h;

    /* renamed from: d, reason: collision with root package name */
    public final Object f4890d = new Object();

    /* renamed from: a, reason: collision with root package name */
    public int f4887a = 1;

    public zzbnu(Context context, akx akxVar, String str, ano anoVar, ano anoVar2, zzfko zzfkoVar) {
        this.f4893g = str;
        this.f4892f = context.getApplicationContext();
        this.f4888b = akxVar;
        this.f4889c = zzfkoVar;
        this.f4891e = anoVar2;
    }

    public final zzbnt i() {
        zzfka zza = zzfjz.zza(this.f4892f, 6);
        zza.zzi();
        final zzbnt zzbntVar = new zzbnt(this.f4891e);
        agd.e("loadJavascriptEngine > Before UI_THREAD_EXECUTOR");
        final zzavc zzavcVar = null;
        zzcaj.zze.execute(new Runnable(zzavcVar, zzbntVar) { // from class: com.google.android.gms.internal.ads.zzbne
            public final /* synthetic */ zzbnt zzb;

            {
                this.zzb = zzbntVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbnu zzbnuVar = zzbnu.this;
                zzbnt zzbntVar2 = this.zzb;
                String str = zzbnuVar.f4893g;
                ti.f20033a.v.getClass();
                long currentTimeMillis = System.currentTimeMillis();
                ArrayList arrayList = new ArrayList();
                try {
                    agd.e("loadJavascriptEngine > Before createJavascriptEngine");
                    zzbmx zzbmxVar = new zzbmx(zzbnuVar.f4892f, zzbnuVar.f4888b, null, null);
                    agd.e("loadJavascriptEngine > After createJavascriptEngine");
                    agd.e("loadJavascriptEngine > Before setting new engine loaded listener");
                    zzbmxVar.zzk(new zzbnd(zzbnuVar, arrayList, currentTimeMillis, zzbntVar2, zzbmxVar));
                    agd.e("loadJavascriptEngine > Before registering GmsgHandler for /jsLoaded");
                    zzbmxVar.zzq("/jsLoaded", new qf(zzbnuVar, currentTimeMillis, zzbntVar2, zzbmxVar));
                    fc fcVar = new fc(28, false);
                    ra raVar = new ra(zzbnuVar, zzbmxVar, fcVar);
                    fcVar.f16548e = raVar;
                    agd.e("loadJavascriptEngine > Before registering GmsgHandler for /requestReload");
                    zzbmxVar.zzq("/requestReload", raVar);
                    agd.e("loadJavascriptEngine > javascriptPath: ".concat(String.valueOf(str)));
                    if (str.endsWith(".js")) {
                        agd.e("loadJavascriptEngine > Before newEngine.loadJavascript");
                        zzbmxVar.zzh(str);
                        agd.e("loadJavascriptEngine > After newEngine.loadJavascript");
                    } else if (str.startsWith("<html>")) {
                        agd.e("loadJavascriptEngine > Before newEngine.loadHtml");
                        zzbmxVar.zzf(str);
                        agd.e("loadJavascriptEngine > After newEngine.loadHtml");
                    } else {
                        agd.e("loadJavascriptEngine > Before newEngine.loadHtmlWrapper");
                        zzbmxVar.zzg(str);
                        agd.e("loadJavascriptEngine > After newEngine.loadHtmlWrapper");
                    }
                    agd.e("loadJavascriptEngine > Before calling ADMOB_UI_HANDLER.postDelayed");
                    esy.f16117a.postDelayed(new sc(zzbnuVar, zzbntVar2, zzbmxVar, arrayList, currentTimeMillis, 0), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzc)).intValue());
                } catch (Throwable th) {
                    agd.f("Error creating webview.", th);
                    zzbce zzbceVar = zzbcn.zzhq;
                    edt edtVar = edt.f15376a;
                    if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                        zzbntVar2.zzh(th, "SdkJavascriptFactory.loadJavascriptEngine.createJavascriptEngine");
                        return;
                    }
                    if (((Boolean) edtVar.f15379d.zza(zzbcn.zzhs)).booleanValue()) {
                        ti.f20033a.f20034ab.zzv(th, "SdkJavascriptFactory.loadJavascriptEngine");
                        zzbntVar2.zzg();
                    } else {
                        ti.f20033a.f20034ab.zzw(th, "SdkJavascriptFactory.loadJavascriptEngine");
                        zzbntVar2.zzg();
                    }
                }
            }
        });
        agd.e("loadNewJavascriptEngine: Promise created");
        zzbntVar.zzj(new fpd(this, zzbntVar, zza, 19), new dzh(this, zzbntVar, zza, 20));
        return zzbntVar;
    }

    public final zzbno zzb(zzavc zzavcVar) {
        agd.e("getEngine: Trying to acquire lock");
        synchronized (this.f4890d) {
            try {
                agd.e("getEngine: Lock acquired");
                agd.e("refreshIfDestroyed: Trying to acquire lock");
                synchronized (this.f4890d) {
                    try {
                        agd.e("refreshIfDestroyed: Lock acquired");
                        zzbnt zzbntVar = this.h;
                        if (zzbntVar != null && this.f4887a == 0) {
                            zzbntVar.zzj(new zzcas() { // from class: com.google.android.gms.internal.ads.zzbna
                                @Override // com.google.android.gms.internal.ads.zzcas
                                public final void zza(Object obj) {
                                    zzbnu zzbnuVar = zzbnu.this;
                                    zzbnuVar.getClass();
                                    if (((zzbmp) obj).zzi()) {
                                        zzbnuVar.f4887a = 1;
                                    }
                                }
                            }, new zzcaq() { // from class: com.google.android.gms.internal.ads.zzbnb
                                @Override // com.google.android.gms.internal.ads.zzcaq
                                /* renamed from: zza */
                                public final void mo3zza() {
                                }
                            });
                        }
                    } finally {
                    }
                }
                agd.e("refreshIfDestroyed: Lock released");
                zzbnt zzbntVar2 = this.h;
                if (zzbntVar2 != null && zzbntVar2.zze() != -1) {
                    int i = this.f4887a;
                    if (i == 0) {
                        agd.e("getEngine (NO_UPDATE): Lock released");
                        return this.h.zza();
                    }
                    if (i != 1) {
                        agd.e("getEngine (UPDATING): Lock released");
                        return this.h.zza();
                    }
                    this.f4887a = 2;
                    i();
                    agd.e("getEngine (PENDING_UPDATE): Lock released");
                    return this.h.zza();
                }
                this.f4887a = 2;
                this.h = i();
                agd.e("getEngine (NULL or REJECTED): Lock released");
                return this.h.zza();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
