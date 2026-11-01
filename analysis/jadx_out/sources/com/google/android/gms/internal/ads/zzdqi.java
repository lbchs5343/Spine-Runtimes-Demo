package com.google.android.gms.internal.ads;

import g.cmo;
import g.edt;
import g.gil;
import g.ti;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzdqi {

    /* renamed from: a, reason: collision with root package name */
    public boolean f6381a;

    /* renamed from: b, reason: collision with root package name */
    public JSONObject f6382b;

    /* renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f6383c = new ConcurrentHashMap();

    /* renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f6384d = new AtomicBoolean(false);

    /* renamed from: e, reason: collision with root package name */
    public JSONObject f6385e;

    /* renamed from: f, reason: collision with root package name */
    public final Executor f6386f;

    public zzdqi(Executor executor) {
        this.f6386f = executor;
    }

    public final synchronized void g() {
        JSONObject zzf;
        Map map;
        try {
            this.f6381a = true;
            zzbzt av = ((cmo) ti.f20033a.f20034ab.zzi()).av();
            if (av != null && (zzf = av.zzf()) != null) {
                this.f6385e = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzee)).booleanValue() ? zzf.optJSONObject("common_settings") : null;
                this.f6382b = zzf.optJSONObject("ad_unit_patterns");
                JSONArray optJSONArray = zzf.optJSONArray("ad_unit_id_settings");
                if (optJSONArray != null) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                        if (optJSONObject != null) {
                            String optString = optJSONObject.optString("ad_unit_id");
                            String optString2 = optJSONObject.optString("format");
                            JSONObject optJSONObject2 = optJSONObject.optJSONObject("request_signals");
                            if (optString != null && optJSONObject2 != null && optString2 != null) {
                                if (this.f6383c.containsKey(optString2)) {
                                    map = (Map) this.f6383c.get(optString2);
                                } else {
                                    ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                                    this.f6383c.put(optString2, concurrentHashMap);
                                    map = concurrentHashMap;
                                }
                                map.put(optString, optJSONObject2);
                            }
                        }
                    }
                }
            }
        } finally {
        }
    }

    public final JSONObject zza() {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzee)).booleanValue()) {
            return this.f6385e;
        }
        return null;
    }

    public final JSONObject zzb(String str, String str2) {
        zzbce zzbceVar = zzbcn.zzec;
        edt edtVar = edt.f15376a;
        if (!((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() || str == null || str2 == null) {
            return null;
        }
        if (!this.f6381a) {
            g();
            if (((Boolean) edtVar.f15379d.zza(zzbcn.zzed)).booleanValue() && !this.f6384d.getAndSet(true)) {
                gil zzi = ti.f20033a.f20034ab.zzi();
                ((cmo) zzi).aa.add(new zzdqh(this));
            }
        }
        Map map = (Map) this.f6383c.get(str2);
        if (map == null) {
            return null;
        }
        JSONObject jSONObject = (JSONObject) map.get(str);
        if (jSONObject != null) {
            return jSONObject;
        }
        String zza = zzdqk.zza(this.f6382b, str, str2);
        if (zza != null) {
            return (JSONObject) map.get(zza);
        }
        return null;
    }

    public final void zzd() {
        if (!this.f6384d.getAndSet(true)) {
            gil zzi = ti.f20033a.f20034ab.zzi();
            ((cmo) zzi).aa.add(new zzdqh(this));
        }
        this.f6386f.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdqf
            @Override // java.lang.Runnable
            public final void run() {
                zzdqi.this.g();
            }
        });
    }
}
