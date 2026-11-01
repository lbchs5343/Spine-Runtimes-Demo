package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import g.agd;
import g.akx;
import g.bjq;
import g.bpp;
import g.ckd;
import g.cmo;
import g.djd;
import g.dri;
import g.edt;
import g.esy;
import g.gfk;
import g.pw;
import g.ti;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzckp extends djd {

    /* renamed from: a, reason: collision with root package name */
    public final zzdqi f5310a;

    /* renamed from: b, reason: collision with root package name */
    public final Long f5311b;

    /* renamed from: c, reason: collision with root package name */
    public final zzbyv f5312c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f5313d = false;

    /* renamed from: e, reason: collision with root package name */
    public final zzbfg f5314e;

    /* renamed from: f, reason: collision with root package name */
    public final zzdqd f5315f;

    /* renamed from: g, reason: collision with root package name */
    public final zzfgk f5316g;
    public final zzfko h;
    public final zzefd i;
    public final zzelo j;
    public final Context k;
    public final zzdvk m;
    public final akx n;
    public final zzdsm o;
    public final zzcue p;
    public final zzdup q;

    public zzckp(Context context, akx akxVar, zzdqd zzdqdVar, zzefd zzefdVar, zzelo zzeloVar, zzdup zzdupVar, zzbyv zzbyvVar, zzdqi zzdqiVar, zzdvk zzdvkVar, zzbfg zzbfgVar, zzfko zzfkoVar, zzfgk zzfgkVar, zzcue zzcueVar, zzdsm zzdsmVar) {
        this.k = context;
        this.n = akxVar;
        this.f5315f = zzdqdVar;
        this.i = zzefdVar;
        this.j = zzeloVar;
        this.q = zzdupVar;
        this.f5312c = zzbyvVar;
        this.f5310a = zzdqiVar;
        this.m = zzdvkVar;
        this.f5314e = zzbfgVar;
        this.h = zzfkoVar;
        this.f5316g = zzfgkVar;
        this.p = zzcueVar;
        this.o = zzdsmVar;
        ti.f20033a.v.getClass();
        this.f5311b = Long.valueOf(SystemClock.elapsedRealtime());
    }

    @Override // g.apq
    public final synchronized float zze() {
        return ti.f20033a.f20036c.e();
    }

    @Override // g.apq
    public final String zzf() {
        return this.n.afmaVersion;
    }

    @Override // g.apq
    public final List zzg() throws RemoteException {
        return this.q.zzg();
    }

    @Override // g.apq
    public final void zzh(String str) {
        this.j.zzg(str);
    }

    @Override // g.apq
    public final void zzi() {
        this.q.zzl();
    }

    @Override // g.apq
    public final void zzj(boolean z) throws RemoteException {
        try {
            zzfti.zza(this.k).zzc(z);
        } catch (IOException e2) {
            throw new RemoteException(e2.getMessage());
        }
    }

    @Override // g.apq
    public final synchronized void zzk() {
        if (this.f5313d) {
            agd.b("Mobile ads is initialized already.");
            return;
        }
        zzbcn.zza(this.k);
        Context context = this.k;
        akx akxVar = this.n;
        ti tiVar = ti.f20033a;
        tiVar.f20034ab.zzu(context, akxVar);
        this.p.zzd();
        tiVar.t.zzi(this.k);
        this.f5313d = true;
        this.q.zzr();
        this.j.zze();
        zzbce zzbceVar = zzbcn.zzec;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            this.f5310a.zzd();
        }
        this.m.zzg();
        if (((Boolean) edtVar.f15379d.zza(zzbcn.zziO)).booleanValue()) {
            zzcaj.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckj
                @Override // java.lang.Runnable
                public final void run() {
                    String str;
                    zzckp zzckpVar = zzckp.this;
                    zzckpVar.getClass();
                    ti tiVar2 = ti.f20033a;
                    if (((cmo) tiVar2.f20034ab.zzi()).am()) {
                        cmo cmoVar = (cmo) tiVar2.f20034ab.zzi();
                        cmoVar.aj();
                        synchronized (cmoVar.k) {
                            str = cmoVar.f13127a;
                        }
                        if (tiVar2.f20040g.n(zzckpVar.k, str, zzckpVar.n.afmaVersion)) {
                            return;
                        }
                        ((cmo) tiVar2.f20034ab.zzi()).al(false);
                        ((cmo) tiVar2.f20034ab.zzi()).bc("");
                    }
                }
            });
        }
        if (((Boolean) edtVar.f15379d.zza(zzbcn.zzkD)).booleanValue()) {
            zzcaj.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckn
                @Override // java.lang.Runnable
                public final void run() {
                    zzckp zzckpVar = zzckp.this;
                    zzckpVar.getClass();
                    zzckpVar.f5314e.zza(new zzbuo());
                }
            });
        }
        if (((Boolean) edtVar.f15379d.zza(zzbcn.zzda)).booleanValue()) {
            zzcaj.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckk
                @Override // java.lang.Runnable
                public final void run() {
                    zzfgt.zzb(zzckp.this.k, true);
                }
            });
        }
        if (((Boolean) edtVar.f15379d.zza(zzbcn.zzeF)).booleanValue()) {
            if (((Boolean) edtVar.f15379d.zza(zzbcn.zzeG)).booleanValue()) {
                zzcaj.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckl
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzckp zzckpVar = zzckp.this;
                        zzckpVar.getClass();
                        ti.f20033a.s.zzb(zzckpVar.k, zzckpVar.o);
                    }
                });
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003f  */
    @Override // g.apq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzl(String str, bjq bjqVar) {
        String y;
        String str2;
        Runnable runnable;
        Context context = this.k;
        zzbcn.zza(context);
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzeh)).booleanValue()) {
            try {
                esy esyVar = ti.f20033a.z;
                y = esy.y(context);
            } catch (RemoteException | RuntimeException e2) {
                ti.f20033a.f20034ab.zzw(e2, "NonagonMobileAdsSettingManager_AppId");
            }
            boolean z = true;
            str2 = true != TextUtils.isEmpty(y) ? str : y;
            if (TextUtils.isEmpty(str2)) {
                zzbce zzbceVar = zzbcn.zzea;
                edt edtVar = edt.f15376a;
                zzbcl zzbclVar = edtVar.f15379d;
                zzbcl zzbclVar2 = edtVar.f15379d;
                boolean booleanValue = ((Boolean) zzbclVar.zza(zzbceVar)).booleanValue();
                zzbce zzbceVar2 = zzbcn.zzaX;
                boolean booleanValue2 = booleanValue | ((Boolean) zzbclVar2.zza(zzbceVar2)).booleanValue();
                if (((Boolean) zzbclVar2.zza(zzbceVar2)).booleanValue()) {
                    final Runnable runnable2 = (Runnable) bpp.b(bjqVar);
                    runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzcko
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzges zzgesVar = zzcaj.zze;
                            final zzckp zzckpVar = zzckp.this;
                            final Runnable runnable3 = runnable2;
                            zzgesVar.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckm
                                @Override // java.lang.Runnable
                                public final void run() {
                                    zzckp zzckpVar2 = zzckp.this;
                                    Runnable runnable4 = runnable3;
                                    zzckpVar2.getClass();
                                    ckd.aj("Adapters must be initialized on the main thread.");
                                    Map zze = ((cmo) ti.f20033a.f20034ab.zzi()).av().zze();
                                    if (zze.isEmpty()) {
                                        return;
                                    }
                                    if (runnable4 != null) {
                                        try {
                                            runnable4.run();
                                        } catch (Throwable unused) {
                                            zzfxd zzfxdVar = agd.f10175a;
                                            return;
                                        }
                                    }
                                    if (zzckpVar2.f5315f.zzd()) {
                                        HashMap hashMap = new HashMap();
                                        Iterator it = zze.values().iterator();
                                        while (it.hasNext()) {
                                            for (zzboz zzbozVar : ((zzbpa) it.next()).zza) {
                                                String str3 = zzbozVar.zzb;
                                                for (String str4 : zzbozVar.zza) {
                                                    if (!hashMap.containsKey(str4)) {
                                                        hashMap.put(str4, new ArrayList());
                                                    }
                                                    if (str3 != null) {
                                                        ((List) hashMap.get(str4)).add(str3);
                                                    }
                                                }
                                            }
                                        }
                                        JSONObject jSONObject = new JSONObject();
                                        for (Map.Entry entry : hashMap.entrySet()) {
                                            String str5 = (String) entry.getKey();
                                            try {
                                                zzefe zza = zzckpVar2.i.zza(str5, jSONObject);
                                                if (zza != null) {
                                                    zzfgm zzfgmVar = (zzfgm) zza.zzb;
                                                    if (!zzfgmVar.zzC() && zzfgmVar.zzB()) {
                                                        zzfgmVar.zzj(zzckpVar2.k, (zzegy) zza.zzc, (List) entry.getValue());
                                                        agd.c("Initialized rewarded video mediation adapter " + str5);
                                                    }
                                                }
                                            } catch (zzffv unused2) {
                                                zzfxd zzfxdVar2 = agd.f10175a;
                                            }
                                        }
                                    }
                                }
                            });
                        }
                    };
                } else {
                    runnable = null;
                    z = booleanValue2;
                }
                Runnable runnable3 = runnable;
                if (z) {
                    ti.f20033a.f20037d.j(this.k, this.n, true, null, str2, null, runnable3, this.h, this.o, this.f5311b);
                    return;
                }
                return;
            }
            return;
        }
        y = "";
        boolean z2 = true;
        if (true != TextUtils.isEmpty(y)) {
        }
        if (TextUtils.isEmpty(str2)) {
        }
    }

    @Override // g.apq
    public final void zzm(dri driVar) throws RemoteException {
        this.m.zzh(driVar, zzdvj.zzb);
    }

    @Override // g.apq
    public final void zzn(bjq bjqVar, String str) {
        if (bjqVar == null) {
            agd.d("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) bpp.b(bjqVar);
        if (context == null) {
            agd.d("Context is null. Failed to open debug menu.");
            return;
        }
        gfk gfkVar = new gfk(context);
        gfkVar.f18034c = str;
        gfkVar.f18036e = this.n.afmaVersion;
        gfkVar.p();
    }

    @Override // g.apq
    public final void zzo(zzbpg zzbpgVar) throws RemoteException {
        this.f5316g.zzf(zzbpgVar);
    }

    @Override // g.apq
    public final synchronized void zzp(boolean z) {
        ti.f20033a.f20036c.f(z);
    }

    @Override // g.apq
    public final synchronized void zzq(float f2) {
        ti.f20033a.f20036c.g(f2);
    }

    @Override // g.apq
    public final synchronized void zzr(String str) {
        zzbcn.zza(this.k);
        if (!TextUtils.isEmpty(str)) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzea)).booleanValue()) {
                ti.f20033a.f20037d.j(this.k, this.n, true, null, str, null, null, this.h, null, null);
            }
        }
    }

    @Override // g.apq
    public final void zzs(zzblw zzblwVar) throws RemoteException {
        this.q.zzs(zzblwVar);
    }

    @Override // g.apq
    public final void zzt(String str) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziZ)).booleanValue()) {
            ti.f20033a.f20034ab.zzz(str);
        }
    }

    @Override // g.apq
    public final void zzu(pw pwVar) throws RemoteException {
        this.f5312c.zzn(this.k, pwVar);
    }

    @Override // g.apq
    public final synchronized boolean zzv() {
        return ti.f20033a.f20036c.c();
    }
}
