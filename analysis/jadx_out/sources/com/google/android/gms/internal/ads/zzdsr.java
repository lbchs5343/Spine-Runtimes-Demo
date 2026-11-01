package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import g.ada;
import g.cmo;
import g.dfu;
import g.edt;
import g.edu;
import g.esy;
import g.fvv;
import g.ti;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzdsr extends zzdsu {
    public zzdsr(Executor executor, dfu dfuVar, edu eduVar, fvv fvvVar, Context context) {
        super(executor, dfuVar, fvvVar, context);
        HashMap hashMap = this.f6470d;
        eduVar.getClass();
        hashMap.put("s", "gmob_sdk");
        hashMap.put(ada.COLUMN_VALUE, "3");
        hashMap.put("os", Build.VERSION.RELEASE);
        hashMap.put("api_v", Build.VERSION.SDK);
        ti tiVar = ti.f20033a;
        esy esyVar = tiVar.z;
        zzbzz zzbzzVar = tiVar.f20034ab;
        hashMap.put("device", esy.al());
        hashMap.put("app", eduVar.f15381b);
        Context context2 = eduVar.f15380a;
        hashMap.put("is_lite_sdk", true != esy.s(context2) ? "0" : "1");
        zzbce zzbceVar = zzbcn.zza;
        edt edtVar = edt.f15376a;
        zzbcf zzbcfVar = edtVar.f15377b;
        zzbcl zzbclVar = edtVar.f15379d;
        List zzb = zzbcfVar.zzb();
        if (((Boolean) zzbclVar.zza(zzbcn.zzgK)).booleanValue()) {
            zzb.addAll(((cmo) zzbzzVar.zzi()).av().zzd());
        }
        hashMap.put("e", TextUtils.join(",", zzb));
        hashMap.put("sdkVersion", eduVar.f15382c);
        if (((Boolean) zzbclVar.zza(zzbcn.zzkX)).booleanValue()) {
            hashMap.put("is_bstar", true != esy.ag(context2) ? "0" : "1");
        }
        if (((Boolean) zzbclVar.zza(zzbcn.zziZ)).booleanValue() && ((Boolean) zzbclVar.zza(zzbcn.zzcs)).booleanValue()) {
            hashMap.put("plugin", zzfxf.zzc(zzbzzVar.zzn()));
        }
    }

    public final Map zza() {
        return new HashMap(this.f6470d);
    }
}
