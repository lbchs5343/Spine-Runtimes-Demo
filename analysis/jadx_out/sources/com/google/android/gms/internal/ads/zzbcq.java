package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import g.ada;
import g.edt;
import g.esy;
import g.ti;
import java.util.LinkedHashMap;
import java.util.concurrent.Future;

/* loaded from: classes3.dex */
public final class zzbcq {

    /* renamed from: a, reason: collision with root package name */
    public final String f4733a;

    /* renamed from: b, reason: collision with root package name */
    public final String f4734b = (String) zzbeh.zza.zze();

    /* renamed from: c, reason: collision with root package name */
    public final LinkedHashMap f4735c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f4736d;

    public zzbcq(Context context, String str) {
        this.f4736d = context;
        this.f4733a = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f4735c = linkedHashMap;
        linkedHashMap.put("s", "gmob_sdk");
        linkedHashMap.put(ada.COLUMN_VALUE, "3");
        linkedHashMap.put("os", Build.VERSION.RELEASE);
        linkedHashMap.put("api_v", Build.VERSION.SDK);
        ti tiVar = ti.f20033a;
        esy esyVar = tiVar.z;
        linkedHashMap.put("device", esy.al());
        linkedHashMap.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        linkedHashMap.put("is_lite_sdk", true != esy.s(context) ? "0" : "1");
        Future zzb = tiVar.f20038e.zzb(context);
        try {
            linkedHashMap.put("network_coarse", Integer.toString(((zzbwb) zzb.get()).zzj));
            linkedHashMap.put("network_fine", Integer.toString(((zzbwb) zzb.get()).zzk));
        } catch (Exception e2) {
            ti.f20033a.f20034ab.zzw(e2, "CsiConfiguration.CsiConfiguration");
        }
        zzbce zzbceVar = zzbcn.zzkX;
        edt edtVar = edt.f15376a;
        zzbcl zzbclVar = edtVar.f15379d;
        zzbcl zzbclVar2 = edtVar.f15379d;
        if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
            LinkedHashMap linkedHashMap2 = this.f4735c;
            esy esyVar2 = ti.f20033a.z;
            linkedHashMap2.put("is_bstar", true != esy.ag(context) ? "0" : "1");
        }
        if (((Boolean) zzbclVar2.zza(zzbcn.zziZ)).booleanValue() && ((Boolean) zzbclVar2.zza(zzbcn.zzcs)).booleanValue()) {
            ti tiVar2 = ti.f20033a;
            if (zzfxf.zzd(tiVar2.f20034ab.zzn())) {
                return;
            }
            this.f4735c.put("plugin", tiVar2.f20034ab.zzn());
        }
    }
}
