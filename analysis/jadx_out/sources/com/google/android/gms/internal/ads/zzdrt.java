package com.google.android.gms.internal.ads;

import android.os.Bundle;
import g.abz;
import g.agd;
import g.bff;
import g.edt;
import g.ggs;
import g.ti;
import java.util.Map;
import org.chromium.support_lib_boundary.util.Features;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzdrt implements zzczj, zzcya, zzcwp, zzdex {

    /* renamed from: a, reason: collision with root package name */
    public final zzdsh f6424a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdsr f6425b;

    public zzdrt(zzdsh zzdshVar, zzdsr zzdsrVar) {
        this.f6424a = zzdshVar;
        this.f6425b = zzdsrVar;
    }

    public final void c(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        for (String str : bundle.keySet()) {
            long j = bundle.getLong(str);
            if (j >= 0) {
                this.f6424a.zzc(str, String.valueOf(j));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void d(Bundle bundle, zzfzo zzfzoVar) {
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzci)).booleanValue() || bundle == null) {
            return;
        }
        String zza = zzdrv.PUBLIC_API_CALLBACK.zza();
        ti.f20033a.v.getClass();
        bundle.putLong(zza, System.currentTimeMillis());
        String str = true != bundle.getBoolean("ls") ? "0" : "1";
        zzdsh zzdshVar = this.f6424a;
        zzdshVar.zzc("ls", str);
        int size = zzfzoVar.size();
        for (int i = 0; i < size; i++) {
            zzdrw zzdrwVar = (zzdrw) zzfzoVar.get(i);
            long j = bundle.getLong(zzdrwVar.zza().zza(), -1L);
            long j2 = bundle.getLong(zzdrwVar.zzb().zza(), -1L);
            if (j > 0 && j2 > 0) {
                zzdshVar.zzc(zzdrwVar.zzc(), String.valueOf(j2 - j));
            }
        }
        c(bundle.getBundle("client_sig_latency_key"));
        c(bundle.getBundle("gms_sig_latency_key"));
    }

    @Override // com.google.android.gms.internal.ads.zzcwp
    public final void zzdB(abz abzVar) {
        zzdsh zzdshVar = this.f6424a;
        zzdshVar.zzb().put("action", "ftl");
        zzdshVar.zzc("ftl", String.valueOf(abzVar.zza));
        zzdshVar.zzc("ed", abzVar.zzc);
        this.f6425b.zzf(zzdshVar.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzczj
    public final void zzdn(zzbvx zzbvxVar) {
        this.f6424a.zze(zzbvxVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzczj
    public final void zzdo(zzfff zzfffVar) {
        this.f6424a.zzd(zzfffVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0089  */
    @Override // com.google.android.gms.internal.ads.zzdex
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zze(ggs ggsVar) {
        String str;
        zzbce zzbceVar = zzbcn.zzgO;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            zzdsr zzdsrVar = this.f6425b;
            zzdsh zzdshVar = this.f6424a;
            if (ggsVar == null) {
                zzdshVar.zzb().put("action", "sgs");
                zzdshVar.zzb().put("request_id", "-1");
                zzdsrVar.zzf(zzdshVar.zzb());
                return;
            }
            zzbvx zzbvxVar = ggsVar.f18124f;
            if (zzbvxVar != null) {
                d(zzbvxVar.zzm, zzdrw.zza);
            }
            try {
                JSONObject jSONObject = new JSONObject(ggsVar.f18123e);
                zzdshVar.zzb().put("action", "sgs");
                Map zzb = zzdshVar.zzb();
                if (((Boolean) edtVar.f15379d.zza(zzbcn.zzjl)).booleanValue()) {
                    try {
                        str = jSONObject.getJSONObject("extras").getBoolean("accept_3p_cookie") ? "1" : "0";
                    } catch (JSONException e2) {
                        agd.f("Error retrieving JSONObject from the requestJson, ", e2);
                    }
                    zzb.put("tpc", str);
                    if (zzbvxVar != null) {
                        zzdshVar.zze(zzbvxVar.zza);
                    }
                    zzdsrVar.zzf(zzdshVar.zzb());
                }
                str = "na";
                zzb.put("tpc", str);
                if (zzbvxVar != null) {
                }
                zzdsrVar.zzf(zzdshVar.zzb());
            } catch (JSONException unused) {
                zzdshVar.zzb().put("action", "sgf");
                zzdshVar.zzb().put("sgf_reason", "request_invalid");
                zzdsrVar.zzf(zzdshVar.zzb());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdex
    public final void zzf(String str) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgO)).booleanValue()) {
            zzdsh zzdshVar = this.f6424a;
            zzdshVar.zzb().put("action", "sgf");
            zzdshVar.zzc("sgf_reason", str);
            this.f6425b.zzf(zzdshVar.zzb());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcya
    public final void zzs() {
        zzdsh zzdshVar = this.f6424a;
        zzdshVar.zzb().put("action", "loaded");
        d(zzdshVar.zza(), zzdrw.zzb);
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzmn)).booleanValue()) {
            zzdshVar.zzb().put("mafe", true != bff.u(Features.MUTE_AUDIO) ? "0" : "1");
        }
        this.f6425b.zzf(zzdshVar.zzb());
    }
}
