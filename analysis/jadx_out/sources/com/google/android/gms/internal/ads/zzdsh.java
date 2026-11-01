package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.agd;
import g.dzm;
import g.edt;
import g.gvq;
import g.mx;
import g.ti;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzdsh {

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f6444a;

    /* renamed from: b, reason: collision with root package name */
    public final zzcad f6445b;

    /* renamed from: c, reason: collision with root package name */
    public final Bundle f6446c = new Bundle();

    public zzdsh(Context context, zzdsr zzdsrVar, zzcad zzcadVar, zzffo zzffoVar, String str, String str2, gvq gvqVar) {
        ActivityManager activityManager;
        ConcurrentHashMap zzc = zzdsrVar.zzc();
        this.f6444a = zzc;
        this.f6445b = zzcadVar;
        zzc.put("ad_format", str2.toUpperCase(Locale.ROOT));
        zzbce zzbceVar = zzbcn.zzje;
        edt edtVar = edt.f15376a;
        zzbcl zzbclVar = edtVar.f15379d;
        zzbcl zzbclVar2 = edtVar.f15379d;
        boolean booleanValue = ((Boolean) zzbclVar.zza(zzbceVar)).booleanValue();
        ActivityManager.MemoryInfo memoryInfo = null;
        if (booleanValue) {
            int i = gvqVar.f18828c;
            int i2 = i - 1;
            if (i == 0) {
                throw null;
            }
            zzc.put("asv", i2 != 0 ? i2 != 1 ? "na" : "2" : "1");
        }
        if (((Boolean) zzbclVar2.zza(zzbcn.zzci)).booleanValue()) {
            Runtime runtime = Runtime.getRuntime();
            zzc("rt_f", String.valueOf(runtime.freeMemory()));
            zzc("rt_m", String.valueOf(runtime.maxMemory()));
            zzc("rt_t", String.valueOf(runtime.totalMemory()));
            zzc("wv_c", String.valueOf(ti.f20033a.f20034ab.zzb()));
            if (((Boolean) zzbclVar2.zza(zzbcn.zzcn)).booleanValue()) {
                zzftd zzftdVar = mx.f19684e;
                if (context != null && (activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)) != null) {
                    memoryInfo = new ActivityManager.MemoryInfo();
                    try {
                        activityManager.getMemoryInfo(memoryInfo);
                    } catch (NullPointerException unused) {
                        agd.b("Error retrieving the memory information.");
                    }
                }
                if (memoryInfo != null) {
                    zzc("mem_avl", String.valueOf(memoryInfo.availMem));
                    zzc("mem_tt", String.valueOf(memoryInfo.totalMem));
                    zzc("low_m", true != memoryInfo.lowMemory ? "0" : "1");
                }
            }
        }
        if (((Boolean) zzbclVar2.zza(zzbcn.zzgO)).booleanValue()) {
            int ax = dzm.ax(zzffoVar) - 1;
            if (ax == 0) {
                zzc.put("request_id", str);
                zzc.put("scar", "false");
                return;
            }
            if (ax == 1) {
                zzc.put("request_id", str);
                zzc.put("se", "query_g");
            } else if (ax == 2) {
                zzc.put("se", "r_adinfo");
            } else if (ax != 3) {
                zzc.put("se", "r_both");
            } else {
                zzc.put("se", "r_adstring");
            }
            zzc.put("scar", "true");
            zzc("ragent", zzffoVar.zzd.zzp);
            zzc("rtype", dzm.az(dzm.w(zzffoVar.zzd)));
        }
    }

    public final Bundle zza() {
        return this.f6446c;
    }

    public final Map zzb() {
        return this.f6444a;
    }

    public final void zzc(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        this.f6444a.put(str, str2);
    }

    public final void zzd(zzfff zzfffVar) {
        if (!zzfffVar.zzb.zza.isEmpty()) {
            zzfet zzfetVar = (zzfet) zzfffVar.zzb.zza.get(0);
            zzc("ad_format", zzfet.zza(zzfetVar.zzb));
            if (zzfetVar.zzb == 6) {
                this.f6444a.put("as", true != this.f6445b.zzm() ? "0" : "1");
            }
        }
        zzc("gqi", zzfffVar.zzb.zzb.zzb);
    }

    public final void zze(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if (bundle.containsKey("cnt")) {
            zzc("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            zzc("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }
}
