package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import g.akx;
import g.dcy;
import g.dxw;
import g.edt;
import g.ti;
import org.json.JSONException;
import org.json.JSONObject;
import pkg.a.ModuleDescriptor;

/* loaded from: classes3.dex */
public final class zzbvt extends zzbvr {

    /* renamed from: a, reason: collision with root package name */
    public final zzbny f5008a;

    /* renamed from: b, reason: collision with root package name */
    public final akx f5009b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f5010c = new Object();

    /* renamed from: d, reason: collision with root package name */
    public final Context f5011d;

    /* renamed from: e, reason: collision with root package name */
    public SharedPreferences f5012e;

    public zzbvt(Context context, zzbny zzbnyVar, akx akxVar) {
        this.f5011d = context.getApplicationContext();
        this.f5009b = akxVar;
        this.f5008a = zzbnyVar;
    }

    public static JSONObject zzc(Context context, akx akxVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (((Boolean) zzben.zzb.zze()).booleanValue()) {
                jSONObject.put("package_name", context.getPackageName());
            }
            jSONObject.put("js", akxVar.afmaVersion);
            jSONObject.put("mf", zzben.zzc.zze());
            jSONObject.put("cl", "685849915");
            jSONObject.put("rapid_rc", "dev");
            jSONObject.put("rapid_rollup", "HEAD");
            jSONObject.put("admob_module_version", 12451000);
            jSONObject.put("dynamite_local_version", ModuleDescriptor.MODULE_VERSION);
            jSONObject.put("dynamite_version", dxw.p(context, ModuleDescriptor.MODULE_ID, false));
            jSONObject.put("container_version", 12451000);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzbvr
    public final dcy zza() {
        synchronized (this.f5010c) {
            try {
                if (this.f5012e == null) {
                    this.f5012e = this.f5011d.getSharedPreferences("google_ads_flags_meta", 0);
                }
            } finally {
            }
        }
        SharedPreferences sharedPreferences = this.f5012e;
        long j = sharedPreferences != null ? sharedPreferences.getLong("js_last_update", 0L) : 0L;
        ti.f20033a.v.getClass();
        if (System.currentTimeMillis() - j < ((Long) zzben.zzd.zze()).longValue()) {
            return zzgei.zzh(null);
        }
        return zzgei.zzm(this.f5008a.zzb(zzc(this.f5011d, this.f5009b)), new zzfwh() { // from class: com.google.android.gms.internal.ads.zzbvs
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                zzbvt zzbvtVar = zzbvt.this;
                JSONObject jSONObject = (JSONObject) obj;
                zzbvtVar.getClass();
                zzbce zzbceVar = zzbcn.zza;
                edt edtVar = edt.f15376a;
                zzbcg zzbcgVar = edtVar.f15378c;
                SharedPreferences zza = zzbcg.zza(zzbvtVar.f5011d);
                if (zza == null) {
                    return null;
                }
                SharedPreferences.Editor edit = zza.edit();
                zzbcf zzbcfVar = edtVar.f15377b;
                int i = zzbed.zza;
                zzbcfVar.zze(edit, 1, jSONObject);
                edit.commit();
                SharedPreferences sharedPreferences2 = zzbvtVar.f5012e;
                if (sharedPreferences2 == null) {
                    return null;
                }
                SharedPreferences.Editor edit2 = sharedPreferences2.edit();
                ti.f20033a.v.getClass();
                edit2.putLong("js_last_update", System.currentTimeMillis()).apply();
                return null;
            }
        }, zzcaj.zzf);
    }
}
