package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import g.agd;
import g.cmo;
import g.edt;
import g.gil;
import g.ti;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzelo {

    /* renamed from: d, reason: collision with root package name */
    public final Executor f7215d;

    /* renamed from: g, reason: collision with root package name */
    public JSONObject f7218g;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f7214c = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f7216e = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    public final HashMap f7217f = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f7212a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f7213b = new HashMap();

    public zzelo(zzges zzgesVar) {
        this.f7215d = zzgesVar;
    }

    public static final Bundle h(JSONObject jSONObject) {
        Bundle bundle = new Bundle();
        if (jSONObject != null) {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                bundle.putString(next, jSONObject.optString(next, ""));
            }
        }
        return bundle;
    }

    public static void zzd(zzelo zzeloVar) {
        synchronized (zzeloVar) {
            zzeloVar.f7216e.clear();
            zzeloVar.f7214c.clear();
            zzeloVar.f7213b.clear();
            zzeloVar.f7212a.clear();
            zzeloVar.j();
            zzeloVar.l();
            zzeloVar.n();
        }
    }

    public final synchronized void i(String str, String str2, ArrayList arrayList) {
        try {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                return;
            }
            Map map = (Map) this.f7217f.get(str);
            if (map == null) {
                map = new HashMap();
            }
            this.f7217f.put(str, map);
            List list = (List) map.get(str2);
            if (list == null) {
                list = new ArrayList();
            }
            list.addAll(arrayList);
            map.put(str2, list);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void j() {
        JSONArray optJSONArray;
        try {
            JSONObject zzf = ((cmo) ti.f20033a.f20034ab.zzi()).av().zzf();
            if (zzf != null) {
                try {
                    JSONArray optJSONArray2 = zzf.optJSONArray("ad_unit_id_settings");
                    this.f7218g = zzf.optJSONObject("ad_unit_patterns");
                    if (optJSONArray2 != null) {
                        for (int i = 0; i < optJSONArray2.length(); i++) {
                            JSONObject jSONObject = optJSONArray2.getJSONObject(i);
                            String lowerCase = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkB)).booleanValue() ? jSONObject.optString("ad_unit_id", "").toLowerCase(Locale.ROOT) : jSONObject.optString("ad_unit_id", "");
                            String optString = jSONObject.optString("format", "");
                            ArrayList arrayList = new ArrayList();
                            JSONObject optJSONObject = jSONObject.optJSONObject("mediation_config");
                            if (optJSONObject != null && (optJSONArray = optJSONObject.optJSONArray("ad_networks")) != null) {
                                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                    arrayList.addAll(m(optString, optJSONArray.getJSONObject(i2)));
                                }
                            }
                            i(optString, lowerCase, arrayList);
                        }
                    }
                } catch (JSONException unused) {
                    agd.h();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized zzfzr k(String str) {
        HashMap hashMap;
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(((cmo) ti.f20033a.f20034ab.zzi()).av().zzc())) {
                zzbce zzbceVar = zzbcn.zzdm;
                edt edtVar = edt.f15376a;
                boolean matches = Pattern.matches((String) edtVar.f15379d.zza(zzbceVar), str);
                boolean matches2 = Pattern.matches((String) edtVar.f15379d.zza(zzbcn.zzdn), str);
                if (matches) {
                    hashMap = new HashMap(this.f7213b);
                } else if (matches2) {
                    hashMap = new HashMap(this.f7212a);
                }
                return zzfzr.zzc(hashMap);
            }
            return zzfzr.zzd();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void l() {
        JSONObject zzf;
        if (!((Boolean) zzbet.zzf.zze()).booleanValue()) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbR)).booleanValue() && (zzf = ((cmo) ti.f20033a.f20034ab.zzi()).av().zzf()) != null) {
                try {
                    JSONArray jSONArray = zzf.getJSONArray("signal_adapters");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i);
                        Bundle h = h(jSONObject.optJSONObject("data"));
                        String optString = jSONObject.optString("adapter_class_name");
                        boolean optBoolean = jSONObject.optBoolean("render", false);
                        boolean optBoolean2 = jSONObject.optBoolean("collect_signals", false);
                        if (!TextUtils.isEmpty(optString)) {
                            this.f7216e.put(optString, new zzels(optString, optBoolean2, optBoolean, true, h));
                        }
                    }
                } catch (JSONException unused) {
                    agd.h();
                }
            }
        }
    }

    public final synchronized ArrayList m(String str, JSONObject jSONObject) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            if (jSONObject != null) {
                Bundle h = h(jSONObject.optJSONObject("data"));
                JSONArray optJSONArray = jSONObject.optJSONArray("rtb_adapters");
                if (optJSONArray != null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        String optString = optJSONArray.optString(i, "");
                        if (!TextUtils.isEmpty(optString)) {
                            arrayList2.add(optString);
                        }
                    }
                    int size = arrayList2.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        String str2 = (String) arrayList2.get(i2);
                        zzg(str2);
                        if (((zzelq) this.f7214c.get(str2)) != null) {
                            arrayList.add(new zzelq(str2, str, h));
                        }
                    }
                }
            }
        } finally {
        }
        return arrayList;
    }

    public final synchronized void n() {
        JSONObject zzf;
        try {
            if (!((Boolean) zzbet.zzb.zze()).booleanValue()) {
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbS)).booleanValue() && (zzf = ((cmo) ti.f20033a.f20034ab.zzi()).av().zzf()) != null) {
                    try {
                        JSONArray jSONArray = zzf.getJSONArray("adapter_settings");
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject = jSONArray.getJSONObject(i);
                            String optString = jSONObject.optString("adapter_class_name");
                            JSONArray optJSONArray = jSONObject.optJSONArray("permission_set");
                            if (!TextUtils.isEmpty(optString)) {
                                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                    JSONObject jSONObject2 = optJSONArray.getJSONObject(i2);
                                    boolean optBoolean = jSONObject2.optBoolean("enable_rendering", false);
                                    boolean optBoolean2 = jSONObject2.optBoolean("collect_secure_signals", false);
                                    boolean optBoolean3 = jSONObject2.optBoolean("collect_secure_signals_on_full_app", false);
                                    String optString2 = jSONObject2.optString("platform");
                                    zzels zzelsVar = new zzels(optString, optBoolean2, optBoolean, optBoolean3, new Bundle());
                                    if (optString2.equals("ADMOB")) {
                                        this.f7212a.put(optString, zzelsVar);
                                    } else if (optString2.equals("AD_MANAGER")) {
                                        this.f7213b.put(optString, zzelsVar);
                                    }
                                }
                            }
                        }
                    } catch (JSONException unused) {
                        agd.h();
                    }
                }
            }
        } finally {
        }
    }

    public final synchronized Map zza(String str, String str2) {
        HashMap hashMap;
        try {
            Map zzb = zzb(str, str2);
            zzfzr k = k(str2);
            hashMap = new HashMap();
            for (Map.Entry entry : ((zzfzr) zzb).entrySet()) {
                String str3 = (String) entry.getKey();
                if (k.containsKey(str3)) {
                    zzels zzelsVar = (zzels) k.get(str3);
                    List list = (List) entry.getValue();
                    hashMap.put(str3, new zzels(str3, zzelsVar.zzb, zzelsVar.zzc, zzelsVar.zzd, (list == null || list.isEmpty()) ? new Bundle() : (Bundle) list.get(0)));
                }
            }
            zzgbu it = k.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry2 = (Map.Entry) it.next();
                String str4 = (String) entry2.getKey();
                if (!hashMap.containsKey(str4) && ((zzels) entry2.getValue()).zzd) {
                    hashMap.put(str4, (zzels) entry2.getValue());
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return hashMap;
    }

    public final synchronized Map zzb(String str, String str2) {
        Map map;
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(((cmo) ti.f20033a.f20034ab.zzi()).av().zzc()) && (map = (Map) this.f7217f.get(str)) != null) {
                List<zzelq> list = (List) map.get(str2);
                if (list == null) {
                    String zza = zzdqk.zza(this.f7218g, str2, str);
                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkB)).booleanValue()) {
                        zza = zza.toLowerCase(Locale.ROOT);
                    }
                    list = (List) map.get(zza);
                }
                if (list != null) {
                    HashMap hashMap = new HashMap();
                    for (zzelq zzelqVar : list) {
                        String str3 = zzelqVar.zza;
                        if (!hashMap.containsKey(str3)) {
                            hashMap.put(str3, new ArrayList());
                        }
                        ((List) hashMap.get(str3)).add(zzelqVar.zzb);
                    }
                    return zzfzr.zzc(hashMap);
                }
            }
            return zzfzr.zzd();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized Map zzc() {
        if (TextUtils.isEmpty(((cmo) ti.f20033a.f20034ab.zzi()).av().zzc())) {
            return zzfzr.zzd();
        }
        return zzfzr.zzc(this.f7216e);
    }

    public final void zze() {
        gil zzi = ti.f20033a.f20034ab.zzi();
        ((cmo) zzi).aa.add(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeln
            @Override // java.lang.Runnable
            public final void run() {
                zzelo zzeloVar = zzelo.this;
                zzeloVar.getClass();
                zzeloVar.f7215d.execute(new zzelm(zzeloVar));
            }
        });
        this.f7215d.execute(new zzelm(this));
    }

    public final synchronized void zzg(String str) {
        if (!TextUtils.isEmpty(str) && !this.f7214c.containsKey(str)) {
            this.f7214c.put(str, new zzelq(str, "", new Bundle()));
        }
    }
}
