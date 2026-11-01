package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import g.agd;
import g.akx;
import g.bli;
import g.dri;
import g.edt;
import g.fim;
import g.ti;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzdvv implements fim, zzcha {

    /* renamed from: a, reason: collision with root package name */
    public dri f6595a;

    /* renamed from: b, reason: collision with root package name */
    public long f6596b;

    /* renamed from: c, reason: collision with root package name */
    public zzdvk f6597c;

    /* renamed from: d, reason: collision with root package name */
    public zzcfk f6598d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f6599e;

    /* renamed from: f, reason: collision with root package name */
    public final Context f6600f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f6601g;
    public final akx h;
    public boolean i;

    public zzdvv(Context context, akx akxVar) {
        this.f6600f = context;
        this.h = akxVar;
    }

    public final synchronized boolean j(dri driVar) {
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziz)).booleanValue()) {
            agd.b("Ad inspector had an internal error.");
            try {
                driVar.b(zzfgq.zzd(16, null, null));
            } catch (RemoteException unused) {
            }
            return false;
        }
        if (this.f6597c == null) {
            agd.b("Ad inspector had an internal error.");
            try {
                ti.f20033a.f20034ab.zzw(new NullPointerException("InspectorManager null"), "InspectorUi.shouldOpenUi");
                driVar.b(zzfgq.zzd(16, null, null));
            } catch (RemoteException unused2) {
            }
            return false;
        }
        if (!this.f6599e && !this.i) {
            ti.f20033a.v.getClass();
            if (System.currentTimeMillis() >= this.f6596b + ((Integer) r1.f15379d.zza(zzbcn.zziC)).intValue()) {
                return true;
            }
        }
        agd.b("Ad inspector cannot be opened because it is already open.");
        try {
            driVar.b(zzfgq.zzd(19, null, null));
        } catch (RemoteException unused3) {
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcha
    public final synchronized void zza(boolean z, int i, String str, String str2) {
        if (z) {
            agd.e("Ad inspector loaded.");
            this.f6599e = true;
            zzk("");
            return;
        }
        agd.b("Ad inspector failed to load.");
        try {
            ti.f20033a.f20034ab.zzw(new Exception("Failed to load UI. Error code: " + i + ", Description: " + str + ", Failing URL: " + str2), "InspectorUi.onAdWebViewFinishedLoading 0");
            dri driVar = this.f6595a;
            if (driVar != null) {
                driVar.b(zzfgq.zzd(17, null, null));
            }
        } catch (RemoteException e2) {
            ti.f20033a.f20034ab.zzw(e2, "InspectorUi.onAdWebViewFinishedLoading 1");
        }
        this.f6601g = true;
        this.f6598d.destroy();
    }

    @Override // g.fim
    public final void zzdH() {
    }

    @Override // g.fim
    public final void zzdk() {
    }

    @Override // g.fim
    public final void zzdq() {
    }

    @Override // g.fim
    public final synchronized void zzdr() {
        this.i = true;
        zzk("");
    }

    @Override // g.fim
    public final void zzdt() {
    }

    @Override // g.fim
    public final synchronized void zzdu(int i) {
        this.f6598d.destroy();
        if (!this.f6601g) {
            agd.e("Inspector closed.");
            dri driVar = this.f6595a;
            if (driVar != null) {
                try {
                    driVar.b(null);
                } catch (RemoteException unused) {
                }
            }
        }
        this.i = false;
        this.f6599e = false;
        this.f6596b = 0L;
        this.f6601g = false;
        this.f6595a = null;
    }

    public final Activity zzg() {
        zzcfk zzcfkVar = this.f6598d;
        if (zzcfkVar == null || zzcfkVar.zzaE()) {
            return null;
        }
        return this.f6598d.zzi();
    }

    public final void zzh(zzdvk zzdvkVar) {
        this.f6597c = zzdvkVar;
    }

    public final synchronized void zzj(dri driVar, zzbkl zzbklVar, zzbke zzbkeVar, zzbjs zzbjsVar) {
        if (j(driVar)) {
            try {
                ti tiVar = ti.f20033a;
                zzcfx zzcfxVar = tiVar.h;
                zzcfk zza = zzcfx.zza(this.f6600f, zzche.zza(), "", false, false, null, null, this.h, null, null, null, zzbbl.zza(), null, null, null, null);
                this.f6598d = zza;
                zzchc zzN = zza.zzN();
                if (zzN == null) {
                    agd.b("Failed to obtain a web view for the ad inspector");
                    try {
                        tiVar.f20034ab.zzw(new NullPointerException("Failed to obtain a web view for the ad inspector"), "InspectorUi.openInspector 2");
                        driVar.b(zzfgq.zzd(17, "Failed to obtain a web view for the ad inspector", null));
                        return;
                    } catch (RemoteException e2) {
                        ti.f20033a.f20034ab.zzw(e2, "InspectorUi.openInspector 3");
                        return;
                    }
                }
                this.f6595a = driVar;
                zzN.zzU(null, null, null, null, null, false, null, null, null, null, null, null, null, zzbklVar, null, new zzbkk(this.f6600f), zzbkeVar, zzbjsVar, null);
                zzN.zzB(this);
                this.f6598d.loadUrl((String) edt.f15376a.f15379d.zza(zzbcn.zziA));
                bli.q(this.f6600f, new AdOverlayInfoParcel(this, this.f6598d, 1, this.h), true);
                tiVar.v.getClass();
                this.f6596b = System.currentTimeMillis();
            } catch (zzcfw e3) {
                zzfxd zzfxdVar = agd.f10175a;
                try {
                    ti.f20033a.f20034ab.zzw(e3, "InspectorUi.openInspector 0");
                    driVar.b(zzfgq.zzd(17, "Failed to obtain a web view for the ad inspector", null));
                } catch (RemoteException e4) {
                    ti.f20033a.f20034ab.zzw(e4, "InspectorUi.openInspector 1");
                }
            }
        }
    }

    public final synchronized void zzk(final String str) {
        if (this.f6599e && this.i) {
            zzcaj.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdvu
                @Override // java.lang.Runnable
                public final void run() {
                    zzdvv zzdvvVar = zzdvv.this;
                    String str2 = str;
                    JSONObject zze = zzdvvVar.f6597c.zze();
                    if (!TextUtils.isEmpty(str2)) {
                        try {
                            zze.put("redirectUrl", str2);
                        } catch (JSONException unused) {
                        }
                    }
                    zzdvvVar.f6598d.zzb("window.inspectorInfo", zze.toString());
                }
            });
        }
    }
}
