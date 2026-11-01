package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import g.agd;
import g.akj;
import g.akx;
import g.bjq;
import g.bpp;
import g.bzv;
import g.dcy;
import g.dg;
import g.edt;
import g.esy;
import g.gfc;
import g.gga;
import g.gwt;
import g.ti;
import g.tl;
import j$.util.Objects;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzdit extends zzcrq {
    public static final /* synthetic */ int zzc = 0;

    /* renamed from: a, reason: collision with root package name */
    public final zzavc f6038a;
    public final akx aa;

    /* renamed from: ab, reason: collision with root package name */
    public final zzhfr f6039ab;
    public final ArrayList ac;
    public final HashMap ad;
    public boolean ae;
    public final zzhfr af;

    /* renamed from: b, reason: collision with root package name */
    public final zzdiy f6040b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdjj f6041c;

    /* renamed from: d, reason: collision with root package name */
    public final zzbyr f6042d;

    /* renamed from: e, reason: collision with root package name */
    public final zzdjd f6043e;

    /* renamed from: f, reason: collision with root package name */
    public final Context f6044f;

    /* renamed from: g, reason: collision with root package name */
    public final zzdjg f6045g;
    public zzdku h;
    public final zzemv i;
    public final zzdiv j;
    public boolean t;
    public boolean u;
    public final zzhfr v;
    public final zzhfr w;
    public final zzdjy x;
    public final Executor y;
    public final zzhfr z;

    static {
        zzfzo.zzs("3010", "3008", "1005", "1009", "2011", "2007");
    }

    public zzdit(zzcrp zzcrpVar, Executor executor, zzdiy zzdiyVar, zzdjg zzdjgVar, zzdjy zzdjyVar, zzdjd zzdjdVar, zzdjj zzdjjVar, zzhfr zzhfrVar, zzhfr zzhfrVar2, zzhfr zzhfrVar3, zzhfr zzhfrVar4, zzhfr zzhfrVar5, zzbyr zzbyrVar, zzavc zzavcVar, akx akxVar, Context context, zzdiv zzdivVar, zzemv zzemvVar, zzayo zzayoVar) {
        super(zzcrpVar);
        this.y = executor;
        this.f6040b = zzdiyVar;
        this.f6045g = zzdjgVar;
        this.x = zzdjyVar;
        this.f6043e = zzdjdVar;
        this.f6041c = zzdjjVar;
        this.w = zzhfrVar;
        this.z = zzhfrVar2;
        this.af = zzhfrVar3;
        this.v = zzhfrVar4;
        this.f6039ab = zzhfrVar5;
        this.f6042d = zzbyrVar;
        this.f6038a = zzavcVar;
        this.aa = akxVar;
        this.f6044f = context;
        this.j = zzdivVar;
        this.i = zzemvVar;
        this.ad = new HashMap();
        this.ac = new ArrayList();
    }

    public static boolean zzY(View view) {
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkl)).booleanValue()) {
            return view.isShown() && view.getGlobalVisibleRect(new Rect(), null);
        }
        esy esyVar = ti.f20033a.z;
        long o = esy.o(view);
        if (view.isShown() && view.getGlobalVisibleRect(new Rect(), null)) {
            if (o >= ((Integer) r1.f15379d.zza(zzbcn.zzkm)).intValue()) {
                return true;
            }
        }
        return false;
    }

    public static /* synthetic */ void zzl(zzdit zzditVar) {
        try {
            zzdiy zzdiyVar = zzditVar.f6040b;
            zzdjj zzdjjVar = zzditVar.f6041c;
            int zzc2 = zzdiyVar.zzc();
            if (zzc2 == 1) {
                if (zzdjjVar.zzb() != null) {
                    zzditVar.ak();
                    zzdjjVar.zzb().zze((zzbgp) zzditVar.w.zzb());
                    return;
                }
                return;
            }
            if (zzc2 == 2) {
                if (zzdjjVar.zza() != null) {
                    zzditVar.ak();
                    zzdjjVar.zza().zze((zzbgn) zzditVar.z.zzb());
                    return;
                }
                return;
            }
            if (zzc2 == 3) {
                if (zzdjjVar.zzd(zzdiyVar.zzA()) != null) {
                    if (zzdiyVar.zzs() != null) {
                        zzditVar.zzf("Google", true);
                    }
                    zzdjjVar.zzd(zzdiyVar.zzA()).zze((zzbgs) zzditVar.f6039ab.zzb());
                    return;
                }
                return;
            }
            if (zzc2 == 6) {
                if (zzdjjVar.zzf() != null) {
                    zzditVar.ak();
                    zzdjjVar.zzf().zze((zzbhv) zzditVar.af.zzb());
                    return;
                }
                return;
            }
            if (zzc2 != 7) {
                agd.d("Wrong native template id!");
            } else if (zzdjjVar.zzg() != null) {
                zzdjjVar.zzg().zzg((zzbme) zzditVar.v.zzb());
            }
        } catch (RemoteException e2) {
            agd.f("RemoteException when notifyAdLoad is called", e2);
        }
    }

    public final void ag(View view, zzeew zzeewVar) {
        zzcfk zzr = this.f6040b.zzr();
        if (!this.f6043e.zzd() || zzeewVar == null || zzr == null || view == null) {
            return;
        }
        ti.f20033a.aa.zzj(zzeewVar.zza(), view);
    }

    public final synchronized void ah(zzdku zzdkuVar) {
        Iterator<String> keys;
        View view;
        zzaux zzc2;
        try {
            if (!this.t) {
                this.h = zzdkuVar;
                this.x.zze(zzdkuVar);
                this.f6045g.zzy(zzdkuVar.zzf(), zzdkuVar.zzm(), zzdkuVar.zzn(), zzdkuVar, zzdkuVar);
                zzbce zzbceVar = zzbcn.zzcJ;
                edt edtVar = edt.f15376a;
                if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() && (zzc2 = this.f6038a.zzc()) != null) {
                    zzc2.zzo(zzdkuVar.zzf());
                }
                if (((Boolean) edtVar.f15379d.zza(zzbcn.zzbQ)).booleanValue()) {
                    zzfet zzfetVar = this.q;
                    if (zzfetVar.zzak && (keys = zzfetVar.zzaj.keys()) != null) {
                        while (keys.hasNext()) {
                            String next = keys.next();
                            WeakReference weakReference = (WeakReference) this.h.zzl().get(next);
                            this.ad.put(next, Boolean.FALSE);
                            if (weakReference != null && (view = (View) weakReference.get()) != null) {
                                zzayn zzaynVar = new zzayn(this.f6044f, view);
                                this.ac.add(zzaynVar);
                                zzaynVar.zzc(new dg(this, next));
                            }
                        }
                    }
                }
                if (zzdkuVar.zzi() != null) {
                    zzdkuVar.zzi().zzc(this.f6042d);
                }
            }
        } finally {
        }
    }

    public final synchronized ImageView.ScaleType ai() {
        zzdku zzdkuVar = this.h;
        if (zzdkuVar == null) {
            agd.c("Ad should be associated with an ad view before calling getMediaviewScaleType()");
            return null;
        }
        bjq zzj = zzdkuVar.zzj();
        if (zzj != null) {
            return (ImageView.ScaleType) bpp.b(zzj);
        }
        return zzdjy.f6107a;
    }

    public final void aj(zzdku zzdkuVar) {
        this.f6045g.zzz(zzdkuVar.zzf(), zzdkuVar.zzl());
        if (zzdkuVar.zzh() != null) {
            zzdkuVar.zzh().setClickable(false);
            zzdkuVar.zzh().removeAllViews();
        }
        if (zzdkuVar.zzi() != null) {
            zzdkuVar.zzi().zze(this.f6042d);
        }
        this.h = null;
    }

    public final void ak() {
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfk)).booleanValue()) {
            zzf("Google", true);
            return;
        }
        dcy zzw = this.f6040b.zzw();
        if (zzw == null) {
            return;
        }
        zzgei.zzr(zzw, new bzv(0, this), this.y);
    }

    public final synchronized void al(View view, Map map, Map map2) {
        this.x.zzd(this.h);
        this.f6045g.zzq(view, map, map2, ai());
        this.u = true;
    }

    public final synchronized void zzB(View view, Map map, Map map2, boolean z) {
        try {
            if (!this.u) {
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbQ)).booleanValue() && this.q.zzak) {
                    Iterator it = this.ad.keySet().iterator();
                    while (it.hasNext()) {
                        if (!((Boolean) this.ad.get((String) it.next())).booleanValue()) {
                            break;
                        }
                    }
                }
                if (z) {
                    al(view, map, map2);
                    return;
                }
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdW)).booleanValue() && map != null) {
                    Iterator it2 = map.entrySet().iterator();
                    while (it2.hasNext()) {
                        View view2 = (View) ((WeakReference) ((Map.Entry) it2.next()).getValue()).get();
                        if (view2 != null && zzY(view2)) {
                            al(view, map, map2);
                            return;
                        }
                    }
                }
            }
        } finally {
        }
    }

    public final synchronized void zzC(gga ggaVar) {
        this.f6045g.zzj(ggaVar);
    }

    public final synchronized void zzD(View view, View view2, Map map, Map map2, boolean z) {
        this.x.zzc(this.h);
        this.f6045g.zzk(view, view2, map, map2, z, ai());
        if (this.ae) {
            zzdiy zzdiyVar = this.f6040b;
            if (zzdiyVar.zzs() != null) {
                zzdiyVar.zzs().zzd("onSdkAdUserInteractionClick", new tl(0));
            }
        }
    }

    public final synchronized void zzE(final View view, final int i) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlh)).booleanValue()) {
            zzdku zzdkuVar = this.h;
            if (zzdkuVar == null) {
                agd.c("Ad should be associated with an ad view before calling performClickForCustomGesture()");
            } else {
                final boolean z = zzdkuVar instanceof zzdjs;
                this.y.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdin
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzdit zzditVar = zzdit.this;
                        View view2 = view;
                        boolean z2 = z;
                        int i2 = i;
                        zzditVar.f6045g.zzo(view2, zzditVar.h.zzf(), zzditVar.h.zzl(), zzditVar.h.zzm(), z2, zzditVar.ai(), i2);
                    }
                });
            }
        }
    }

    public final synchronized void zzF(String str) {
        this.f6045g.zzl(str);
    }

    public final synchronized void zzG(Bundle bundle) {
        this.f6045g.zzm(bundle);
    }

    public final synchronized void zzH() {
        zzdku zzdkuVar = this.h;
        if (zzdkuVar == null) {
            agd.c("Ad should be associated with an ad view before calling recordCustomClickGesture()");
        } else {
            final boolean z = zzdkuVar instanceof zzdjs;
            this.y.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdip
                @Override // java.lang.Runnable
                public final void run() {
                    zzdit zzditVar = zzdit.this;
                    boolean z2 = z;
                    zzditVar.f6045g.zzo(null, zzditVar.h.zzf(), zzditVar.h.zzl(), zzditVar.h.zzm(), z2, zzditVar.ai(), 0);
                }
            });
        }
    }

    public final void zzI(Bundle bundle) {
        final zzcfk zzs = this.f6040b.zzs();
        if (zzs == null) {
            agd.d("Video webview is null");
            return;
        }
        try {
            final JSONObject jSONObject = new JSONObject();
            for (String str : bundle.keySet()) {
                jSONObject.put(str, bundle.get(str));
            }
            this.y.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdim
                @Override // java.lang.Runnable
                public final void run() {
                    int i = zzdit.zzc;
                    zzcfk.this.zze("onVideoEvent", jSONObject);
                }
            });
        } catch (JSONException e2) {
            agd.f("Error reading event signals", e2);
        }
    }

    public final synchronized void zzJ() {
        if (this.u) {
            return;
        }
        this.f6045g.zzr();
    }

    public final void zzK(View view) {
        boolean booleanValue = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfk)).booleanValue();
        zzdiy zzdiyVar = this.f6040b;
        if (!booleanValue) {
            ag(view, zzdiyVar.zzu());
            return;
        }
        zzcao zzp = zzdiyVar.zzp();
        if (zzp == null) {
            return;
        }
        zzgei.zzr(zzp, new akj(28, this, view, false), this.y);
    }

    public final synchronized void zzL(View view, MotionEvent motionEvent, View view2) {
        this.f6045g.zzs(view, motionEvent, view2);
    }

    public final synchronized void zzM(Bundle bundle) {
        this.f6045g.zzt(bundle);
    }

    public final synchronized void zzN(View view) {
        this.f6045g.zzu(view);
    }

    public final synchronized void zzO() {
        this.f6045g.zzv();
    }

    public final synchronized void zzP(gfc gfcVar) {
        this.f6045g.zzw(gfcVar);
    }

    public final synchronized void zzQ(gwt gwtVar) {
        this.i.zza(gwtVar);
    }

    public final synchronized void zzR(zzbhs zzbhsVar) {
        this.f6045g.zzx(zzbhsVar);
    }

    public final synchronized void zzS(final zzdku zzdkuVar) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbO)).booleanValue()) {
            esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdii
                @Override // java.lang.Runnable
                public final void run() {
                    zzdit.this.ah(zzdkuVar);
                }
            });
        } else {
            ah(zzdkuVar);
        }
    }

    public final synchronized void zzT(final zzdku zzdkuVar) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbO)).booleanValue()) {
            esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdij
                @Override // java.lang.Runnable
                public final void run() {
                    zzdit.this.aj(zzdkuVar);
                }
            });
        } else {
            aj(zzdkuVar);
        }
    }

    public final boolean zzU() {
        return this.f6043e.zze();
    }

    public final synchronized boolean zzV() {
        return this.f6045g.zzA();
    }

    public final synchronized boolean zzW() {
        return this.f6045g.zzB();
    }

    public final boolean zzX() {
        return this.f6043e.zzd();
    }

    public final synchronized boolean zzZ(Bundle bundle) {
        if (this.u) {
            return true;
        }
        boolean zzC = this.f6045g.zzC(bundle);
        this.u = zzC;
        return zzC;
    }

    public final synchronized int zza() {
        return this.f6045g.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcrq
    public final synchronized void zzb() {
        this.t = true;
        this.y.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdio
            @Override // java.lang.Runnable
            public final void run() {
                zzdit zzditVar = zzdit.this;
                zzditVar.f6045g.zzi();
                zzditVar.f6040b.zzI();
            }
        });
        super.zzb();
    }

    public final zzdiv zzc() {
        return this.j;
    }

    public final zzeew zzf(String str, boolean z) {
        String str2;
        zzees zzeesVar;
        zzeet zzeetVar;
        zzdjd zzdjdVar = this.f6043e;
        if (!zzdjdVar.zzd() || TextUtils.isEmpty(str)) {
            return null;
        }
        zzdiy zzdiyVar = this.f6040b;
        zzcfk zzr = zzdiyVar.zzr();
        zzcfk zzs = zzdiyVar.zzs();
        if (zzr == null && zzs == null) {
            agd.b("Omid display and video webview are null. Skipping initialization.");
            return null;
        }
        boolean z2 = zzr != null;
        boolean z3 = zzs != null;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfi)).booleanValue()) {
            zzdjdVar.zza();
            int zzc2 = zzdjdVar.zza().zzc();
            int i = zzc2 - 1;
            if (i != 0) {
                if (i != 1) {
                    agd.b("Unknown omid media type: " + (zzc2 != 1 ? zzc2 != 2 ? "UNKNOWN" : "DISPLAY" : "VIDEO") + ". Not initializing Omid.");
                    return null;
                }
                if (zzr == null) {
                    agd.b("Omid media type was display but there was no display webview.");
                    return null;
                }
                z2 = true;
                z3 = false;
            } else {
                if (zzs == null) {
                    agd.b("Omid media type was video but there was no video webview.");
                    return null;
                }
                z2 = false;
                z3 = true;
            }
        }
        if (z2) {
            str2 = null;
        } else {
            str2 = "javascript";
            zzr = zzs;
        }
        zzr.zzG();
        ti tiVar = ti.f20033a;
        zzeeq zzeeqVar = tiVar.aa;
        zzeeq zzeeqVar2 = tiVar.aa;
        if (!zzeeqVar.zzl(this.f6044f)) {
            agd.b("Failed to initialize omid in InternalNativeAd");
            return null;
        }
        akx akxVar = this.aa;
        String str3 = akxVar.buddyApkVersion + "." + akxVar.clientJarVersion;
        if (z3) {
            zzeesVar = zzees.VIDEO;
            zzeetVar = zzeet.DEFINED_BY_JAVASCRIPT;
        } else {
            zzeesVar = zzees.NATIVE_DISPLAY;
            zzeetVar = zzdiyVar.zzc() == 3 ? zzeet.UNSPECIFIED : zzeet.ONE_PIXEL;
        }
        zzeew zzb = tiVar.aa.zzb(str3, zzr.zzG(), "", "javascript", str2, str, zzeetVar, zzeesVar, this.q.zzal);
        if (zzb == null) {
            agd.b("Failed to create omid session in InternalNativeAd");
            return null;
        }
        zzdiyVar.zzW(zzb);
        zzr.zzat(zzb);
        if (z3) {
            zzeeqVar2.zzj(zzb.zza(), zzs.zzF());
            this.ae = true;
        }
        if (z) {
            zzeeqVar2.zzk(zzb.zza());
            zzr.zzd("onSdkLoaded", new tl(0));
        }
        return zzb;
    }

    public final String zzg() {
        return this.f6043e.zzb();
    }

    public final synchronized JSONObject zzi(View view, Map map, Map map2) {
        return this.f6045g.zze(view, map, map2, ai());
    }

    public final synchronized JSONObject zzj(View view, Map map, Map map2) {
        return this.f6045g.zzf(view, map, map2, ai());
    }

    @Override // com.google.android.gms.internal.ads.zzcrq
    public final void zzk() {
        Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzdik
            @Override // java.lang.Runnable
            public final void run() {
                zzdit.zzl(zzdit.this);
            }
        };
        Executor executor = this.y;
        executor.execute(runnable);
        if (this.f6040b.zzc() != 7) {
            final zzdjg zzdjgVar = this.f6045g;
            Objects.requireNonNull(zzdjgVar);
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdil
                @Override // java.lang.Runnable
                public final void run() {
                    zzdjg.this.zzp();
                }
            });
        }
        super.zzk();
    }

    public final void zzu(View view) {
        zzeew zzu = this.f6040b.zzu();
        if (!this.f6043e.zzd() || zzu == null || view == null) {
            return;
        }
        ti.f20033a.aa.zzg(zzu.zza(), view);
    }

    public final synchronized void zzv() {
        this.f6045g.zzh();
    }
}
