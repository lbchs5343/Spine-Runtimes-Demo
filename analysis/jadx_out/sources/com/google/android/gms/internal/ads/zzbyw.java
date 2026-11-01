package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import g.cmo;
import g.cvb;
import g.czz;
import g.edt;
import g.epq;
import g.esy;
import g.fff;
import g.gil;
import g.ti;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes3.dex */
public abstract class zzbyw {

    /* renamed from: a, reason: collision with root package name */
    public static fff f5088a;

    public static synchronized zzbyw zzd(Context context) {
        synchronized (zzbyw.class) {
            try {
                fff fffVar = f5088a;
                if (fffVar != null) {
                    return fffVar;
                }
                Context applicationContext = context.getApplicationContext();
                zzbcn.zza(applicationContext);
                ti tiVar = ti.f20033a;
                cmo cmoVar = (cmo) tiVar.f20034ab.zzi();
                cmoVar.bf(applicationContext);
                applicationContext.getClass();
                czz czzVar = tiVar.v;
                czzVar.getClass();
                zzbyv zzbyvVar = tiVar.f20039f;
                zzhgf.zzc(applicationContext, Context.class);
                zzhgf.zzc(czzVar, cvb.class);
                zzhgf.zzc(cmoVar, gil.class);
                zzhgf.zzc(zzbyvVar, zzbyv.class);
                fff fffVar2 = new fff(applicationContext, czzVar, cmoVar, zzbyvVar);
                f5088a = fffVar2;
                zzbyi zzbyiVar = (zzbyi) fffVar2.f16698e.zzb();
                SharedPreferences sharedPreferences = zzbyiVar.f5066d;
                sharedPreferences.registerOnSharedPreferenceChangeListener(zzbyiVar);
                zzbyiVar.onSharedPreferenceChanged(sharedPreferences, "gad_has_consent_for_cookies");
                zzbce zzbceVar = zzbcn.zzaI;
                edt edtVar = edt.f15376a;
                if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                    zzbyiVar.onSharedPreferenceChanged(sharedPreferences, "IABTCF_TCString");
                } else {
                    zzbyiVar.onSharedPreferenceChanged(sharedPreferences, "IABTCF_PurposeConsents");
                }
                epq epqVar = (epq) f5088a.f16700g.zzb();
                if (((Boolean) edtVar.f15379d.zza(zzbcn.zzaB)).booleanValue()) {
                    HashMap q = esy.q((String) edtVar.f15379d.zza(zzbcn.zzaC));
                    Iterator it = q.keySet().iterator();
                    while (it.hasNext()) {
                        epqVar.e((String) it.next());
                    }
                    epqVar.f(new zzbyy(epqVar, q));
                }
                return f5088a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract zzbym b();
}
