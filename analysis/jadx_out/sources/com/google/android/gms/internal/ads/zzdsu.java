package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import g.afo;
import g.agd;
import g.dfu;
import g.edt;
import g.fvv;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public class zzdsu {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f6467a;

    /* renamed from: b, reason: collision with root package name */
    public final dfu f6468b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f6469c;

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f6470d;

    /* renamed from: e, reason: collision with root package name */
    public final fvv f6471e;

    /* renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f6472f;

    /* renamed from: g, reason: collision with root package name */
    public final Context f6473g;
    public final AtomicReference h;
    public final Executor i;
    public final boolean j;

    public zzdsu(Executor executor, dfu dfuVar, fvv fvvVar, Context context) {
        this.f6470d = new HashMap();
        this.f6472f = new AtomicBoolean();
        this.h = new AtomicReference(new Bundle());
        this.i = executor;
        this.f6468b = dfuVar;
        zzbce zzbceVar = zzbcn.zzcd;
        edt edtVar = edt.f15376a;
        this.f6469c = ((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue();
        this.f6471e = fvvVar;
        zzbce zzbceVar2 = zzbcn.zzcg;
        zzbcl zzbclVar = edtVar.f15379d;
        this.j = ((Boolean) zzbclVar.zza(zzbceVar2)).booleanValue();
        this.f6467a = ((Boolean) zzbclVar.zza(zzbcn.zzgP)).booleanValue();
        this.f6473g = context;
    }

    public final void k(Map map, boolean z) {
        Bundle ae;
        if (map.isEmpty()) {
            agd.c("Empty paramMap.");
            return;
        }
        if (map.isEmpty()) {
            agd.c("Empty or null paramMap.");
        } else {
            boolean andSet = this.f6472f.getAndSet(true);
            AtomicReference atomicReference = this.h;
            if (!andSet) {
                final String str = (String) edt.f15376a.f15379d.zza(zzbcn.zzkh);
                SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.internal.ads.zzdst
                    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str2) {
                        zzdsu zzdsuVar = zzdsu.this;
                        String str3 = str;
                        zzdsuVar.h.set(afo.ae(zzdsuVar.f6473g, str3));
                    }
                };
                if (TextUtils.isEmpty(str)) {
                    ae = Bundle.EMPTY;
                } else {
                    Context context = this.f6473g;
                    PreferenceManager.getDefaultSharedPreferences(context).registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
                    ae = afo.ae(context, str);
                }
                atomicReference.set(ae);
            }
            Bundle bundle = (Bundle) atomicReference.get();
            for (String str2 : bundle.keySet()) {
                map.put(str2, String.valueOf(bundle.get(str2)));
            }
        }
        final String b2 = this.f6471e.b(map);
        agd.e(b2);
        boolean parseBoolean = Boolean.parseBoolean((String) map.get("scar"));
        if (this.f6469c) {
            if (!z || this.j) {
                if (!parseBoolean || this.f6467a) {
                    this.i.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdss
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzdsu.this.f6468b.zza(b2);
                        }
                    });
                }
            }
        }
    }

    public final ConcurrentHashMap zzc() {
        return new ConcurrentHashMap(this.f6470d);
    }

    public final void zze(Map map) {
        k(map, true);
    }

    public final void zzf(Map map) {
        k(map, false);
    }
}
