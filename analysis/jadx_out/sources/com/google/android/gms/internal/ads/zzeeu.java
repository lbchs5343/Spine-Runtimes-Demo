package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import g.agd;
import g.akx;
import g.edt;
import g.ti;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class zzeeu {

    /* renamed from: a, reason: collision with root package name */
    public final zzcfk f6861a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdsm f6862b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f6863c;

    /* renamed from: d, reason: collision with root package name */
    public zzfnh f6864d;

    /* renamed from: e, reason: collision with root package name */
    public final akx f6865e;

    /* renamed from: f, reason: collision with root package name */
    public final zzfet f6866f;

    public zzeeu(Context context, akx akxVar, zzfet zzfetVar, zzcfk zzcfkVar, zzdsm zzdsmVar) {
        this.f6863c = context;
        this.f6865e = akxVar;
        this.f6866f = zzfetVar;
        this.f6861a = zzcfkVar;
        this.f6862b = zzdsmVar;
    }

    public final synchronized void zza(View view) {
        zzfnh zzfnhVar = this.f6864d;
        if (zzfnhVar != null) {
            ti.f20033a.aa.zzh(zzfnhVar, view);
        }
    }

    public final synchronized void zzb() {
        zzcfk zzcfkVar;
        if (this.f6864d == null || (zzcfkVar = this.f6861a) == null) {
            return;
        }
        zzcfkVar.zzd("onSdkImpression", zzfzr.zzd());
    }

    public final synchronized void zzc() {
        zzcfk zzcfkVar;
        try {
            zzfnh zzfnhVar = this.f6864d;
            if (zzfnhVar == null || (zzcfkVar = this.f6861a) == null) {
                return;
            }
            Iterator it = zzcfkVar.zzV().iterator();
            while (it.hasNext()) {
                ti.f20033a.aa.zzh(zzfnhVar, (View) it.next());
            }
            this.f6861a.zzd("onSdkLoaded", zzfzr.zzd());
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean zzd() {
        return this.f6864d != null;
    }

    public final synchronized boolean zze(boolean z) {
        if (this.f6866f.zzT) {
            zzbce zzbceVar = zzbcn.zzfb;
            edt edtVar = edt.f15376a;
            if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                if (((Boolean) edtVar.f15379d.zza(zzbcn.zzfe)).booleanValue() && this.f6861a != null) {
                    if (this.f6864d != null) {
                        agd.b("Omid javascript session service already started for ad.");
                        return false;
                    }
                    Context context = this.f6863c;
                    ti tiVar = ti.f20033a;
                    if (!tiVar.aa.zzl(context)) {
                        agd.b("Unable to initialize omid.");
                        return false;
                    }
                    if (this.f6866f.zzV.zzb()) {
                        zzfnh zze = tiVar.aa.zze(this.f6865e, this.f6861a.zzG(), true);
                        if (((Boolean) edtVar.f15379d.zza(zzbcn.zzff)).booleanValue()) {
                            zzdsm zzdsmVar = this.f6862b;
                            String str = zze != null ? "1" : "0";
                            zzdsl zza = zzdsmVar.zza();
                            zza.zzb("omid_js_session_success", str);
                            zza.zzf();
                        }
                        if (zze == null) {
                            agd.b("Unable to create javascript session service.");
                            return false;
                        }
                        agd.k("Created omid javascript session service.");
                        this.f6864d = zze;
                        this.f6861a.zzas(this);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final synchronized void zzf(zzcfz zzcfzVar) {
        zzfnh zzfnhVar = this.f6864d;
        if (zzfnhVar == null || this.f6861a == null) {
            return;
        }
        ti.f20033a.aa.zzm(zzfnhVar, zzcfzVar);
        this.f6864d = null;
        this.f6861a.zzas(null);
    }
}
