package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import g.cmo;
import g.dcy;
import g.edt;
import g.esy;
import g.gil;
import g.ti;

/* loaded from: classes3.dex */
public final class zzeps implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f7362a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final gil f7363b = ti.f20033a.f20034ab.zzi();

    /* renamed from: c, reason: collision with root package name */
    public final long f7364c;

    /* renamed from: d, reason: collision with root package name */
    public final zzctk f7365d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f7366e;

    /* renamed from: f, reason: collision with root package name */
    public final zzfgw f7367f;

    /* renamed from: g, reason: collision with root package name */
    public final zzdsh f7368g;
    public final String h;
    public final zzctx i;
    public final String j;
    public final zzffo k;

    public zzeps(Context context, String str, String str2, zzctk zzctkVar, zzfgw zzfgwVar, zzffo zzffoVar, zzdsh zzdshVar, zzctx zzctxVar, long j) {
        this.f7366e = context;
        this.h = str;
        this.j = str2;
        this.f7365d = zzctkVar;
        this.f7367f = zzfgwVar;
        this.k = zzffoVar;
        this.f7368g = zzdshVar;
        this.i = zzctxVar;
        this.f7364c = j;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 12;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        final Bundle bundle = new Bundle();
        zzdsh zzdshVar = this.f7368g;
        zzdshVar.zzb().put("seq_num", this.h);
        zzbce zzbceVar = zzbcn.zzci;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            ti.f20033a.v.getClass();
            zzdshVar.zzc("tsacc", String.valueOf(System.currentTimeMillis() - this.f7364c));
            zzdshVar.zzc("foreground", true != esy.v(this.f7366e) ? "1" : "0");
        }
        if (((Boolean) edtVar.f15379d.zza(zzbcn.zzfA)).booleanValue()) {
            this.f7365d.zzk(this.k.zzd);
            bundle.putAll(this.f7367f.zzb());
        }
        return zzgei.zzh(new zzevy() { // from class: com.google.android.gms.internal.ads.zzepr
            @Override // com.google.android.gms.internal.ads.zzevy
            public final void zzj(Object obj) {
                zzeps zzepsVar = zzeps.this;
                Bundle bundle2 = bundle;
                Bundle bundle3 = (Bundle) obj;
                zzepsVar.getClass();
                zzbce zzbceVar2 = zzbcn.zzfA;
                edt edtVar2 = edt.f15376a;
                if (((Boolean) edtVar2.f15379d.zza(zzbceVar2)).booleanValue()) {
                    bundle3.putBundle("quality_signals", bundle2);
                } else {
                    if (((Boolean) edtVar2.f15379d.zza(zzbcn.zzfz)).booleanValue()) {
                        synchronized (zzeps.f7362a) {
                            zzepsVar.f7365d.zzk(zzepsVar.k.zzd);
                            bundle3.putBundle("quality_signals", zzepsVar.f7367f.zzb());
                        }
                    } else {
                        zzepsVar.f7365d.zzk(zzepsVar.k.zzd);
                        bundle3.putBundle("quality_signals", zzepsVar.f7367f.zzb());
                    }
                }
                bundle3.putString("seq_num", zzepsVar.h);
                if (!((cmo) zzepsVar.f7363b).ax()) {
                    bundle3.putString("session_id", zzepsVar.j);
                }
                bundle3.putBoolean("client_purpose_one", !((cmo) zzepsVar.f7363b).ax());
                if (((Boolean) edtVar2.f15379d.zza(zzbcn.zzfB)).booleanValue()) {
                    try {
                        esy esyVar = ti.f20033a.z;
                        bundle3.putString("_app_id", esy.y(zzepsVar.f7366e));
                    } catch (RemoteException | RuntimeException e2) {
                        ti.f20033a.f20034ab.zzw(e2, "AppStatsSignal_AppId");
                    }
                }
                if (zzepsVar.k.zzf != null) {
                    Bundle bundle4 = new Bundle();
                    bundle4.putLong("dload", zzepsVar.i.zzb(zzepsVar.k.zzf));
                    bundle4.putInt("pcc", zzepsVar.i.zza(zzepsVar.k.zzf));
                    bundle3.putBundle("ad_unit_quality_signals", bundle4);
                }
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzjp)).booleanValue()) {
                    ti tiVar = ti.f20033a;
                    if (tiVar.f20034ab.zza() > 0) {
                        bundle3.putInt("nrwv", tiVar.f20034ab.zza());
                    }
                }
            }
        });
    }
}
