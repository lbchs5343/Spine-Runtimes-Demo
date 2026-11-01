package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.RemoteException;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.agd;
import g.akx;
import g.cbv;
import g.cmo;
import g.dcy;
import g.dri;
import g.edt;
import g.gil;
import g.mx;
import g.ti;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzdvk implements zzdwl, zzduv {

    /* renamed from: a, reason: collision with root package name */
    public final zzdvr f6570a;

    /* renamed from: b, reason: collision with root package name */
    public final String f6571b;

    /* renamed from: e, reason: collision with root package name */
    public final zzdvf f6574e;

    /* renamed from: g, reason: collision with root package name */
    public final zzduu f6576g;
    public final zzdvv h;
    public boolean i;
    public final zzdwh l;
    public boolean m;
    public JSONObject n;
    public final String p;
    public final zzdwm q;
    public final Context r;
    public int t;
    public final zzduw u;
    public final zzdvr w;

    /* renamed from: f, reason: collision with root package name */
    public final HashMap f6575f = new HashMap();
    public final HashMap o = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f6573d = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public String f6572c = "{}";
    public long s = Long.MAX_VALUE;
    public zzdvg x = zzdvg.zza;
    public zzdvj j = zzdvj.zza;
    public long k = 0;
    public String v = "";

    public zzdvk(zzdvv zzdvvVar, zzdwm zzdwmVar, zzduw zzduwVar, Context context, akx akxVar, zzdvf zzdvfVar, zzdwh zzdwhVar, zzdvr zzdvrVar, zzdvr zzdvrVar2, String str) {
        this.h = zzdvvVar;
        this.q = zzdwmVar;
        this.u = zzduwVar;
        this.f6576g = new zzduu(context);
        this.p = akxVar.afmaVersion;
        this.f6571b = str;
        this.f6574e = zzdvfVar;
        this.l = zzdwhVar;
        this.w = zzdvrVar;
        this.f6570a = zzdvrVar2;
        this.r = context;
        ti.f20033a.f20040g.f11743g = this;
    }

    public final synchronized JSONObject aa() {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject();
            for (Map.Entry entry : this.f6575f.entrySet()) {
                JSONArray jSONArray = new JSONArray();
                for (zzduy zzduyVar : (List) entry.getValue()) {
                    if (zzduyVar.zzg()) {
                        jSONArray.put(zzduyVar.zzd());
                    }
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put((String) entry.getKey(), jSONArray);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return jSONObject;
    }

    public final synchronized void ab() {
        int ordinal = this.x.ordinal();
        if (ordinal == 1) {
            this.q.zzb();
        } else {
            if (ordinal != 2) {
                return;
            }
            this.u.zzb();
        }
    }

    public final void ac() {
        this.i = true;
        this.f6574e.zzc();
        this.h.zzh(this);
        this.q.zzd(this);
        this.u.zzd(this);
        this.l.zzf(this);
        zzbce zzbceVar = zzbcn.zzjc;
        edt edtVar = edt.f15376a;
        if (!TextUtils.isEmpty((CharSequence) edtVar.f15379d.zza(zzbceVar))) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.r);
            List asList = Arrays.asList(((String) edtVar.f15379d.zza(zzbceVar)).split(","));
            zzdvr zzdvrVar = this.w;
            zzdvrVar.f6594b = asList;
            defaultSharedPreferences.registerOnSharedPreferenceChangeListener(zzdvrVar);
            Iterator it = asList.iterator();
            while (it.hasNext()) {
                zzdvrVar.onSharedPreferenceChanged(defaultSharedPreferences, (String) it.next());
            }
        }
        zzbce zzbceVar2 = zzbcn.zzjd;
        if (!TextUtils.isEmpty((CharSequence) edtVar.f15379d.zza(zzbceVar2))) {
            SharedPreferences sharedPreferences = this.r.getSharedPreferences(MediationConstant.ADN_ADMOB, 0);
            List asList2 = Arrays.asList(((String) edtVar.f15379d.zza(zzbceVar2)).split(","));
            zzdvr zzdvrVar2 = this.f6570a;
            zzdvrVar2.f6594b = asList2;
            sharedPreferences.registerOnSharedPreferenceChangeListener(zzdvrVar2);
            Iterator it2 = asList2.iterator();
            while (it2.hasNext()) {
                zzdvrVar2.onSharedPreferenceChanged(sharedPreferences, (String) it2.next());
            }
        }
        String ap = ((cmo) ti.f20033a.f20034ab.zzi()).ap();
        synchronized (this) {
            if (!TextUtils.isEmpty(ap)) {
                try {
                    JSONObject jSONObject = new JSONObject(ap);
                    z(jSONObject.optBoolean("isTestMode", false), false);
                    y((zzdvg) Enum.valueOf(zzdvg.class, jSONObject.optString("gesture", "NONE")), false);
                    this.f6572c = jSONObject.optString("networkExtras", "{}");
                    this.s = jSONObject.optLong("networkExtrasExpirationSecs", Long.MAX_VALUE);
                } catch (JSONException unused) {
                }
            }
        }
        this.v = ((cmo) ti.f20033a.f20034ab.zzi()).as();
    }

    public final void ad() {
        gil zzi = ti.f20033a.f20034ab.zzi();
        String zzd = zzd();
        cmo cmoVar = (cmo) zzi;
        cmoVar.getClass();
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziz)).booleanValue()) {
            cmoVar.aj();
            synchronized (cmoVar.k) {
                try {
                    if (cmoVar.f13128ab.equals(zzd)) {
                        return;
                    }
                    cmoVar.f13128ab = zzd;
                    SharedPreferences.Editor editor = cmoVar.ac;
                    if (editor != null) {
                        editor.putString("inspector_info", zzd);
                        cmoVar.ac.apply();
                    }
                    cmoVar.ah();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final synchronized void ae() {
        int ordinal = this.x.ordinal();
        if (ordinal == 1) {
            this.q.zzc();
        } else {
            if (ordinal != 2) {
                return;
            }
            this.u.zzc();
        }
    }

    public final synchronized void y(zzdvg zzdvgVar, boolean z) {
        try {
            if (this.x != zzdvgVar) {
                if (zzq()) {
                    ab();
                }
                this.x = zzdvgVar;
                if (zzq()) {
                    ae();
                }
                if (z) {
                    ad();
                }
            }
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0038 A[Catch: all -> 0x0027, TRY_LEAVE, TryCatch #0 {all -> 0x0027, blocks: (B:3:0x0001, B:9:0x0006, B:11:0x000a, B:13:0x001c, B:16:0x0029, B:18:0x0038, B:22:0x002d, B:24:0x0033), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void z(boolean z, boolean z2) {
        try {
            if (this.m != z) {
                this.m = z;
                if (z) {
                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziO)).booleanValue()) {
                        if (!ti.f20033a.f20040g.r()) {
                        }
                    }
                    ae();
                    if (z2) {
                        ad();
                        return;
                    }
                }
                if (!zzq()) {
                    ab();
                }
                if (z2) {
                }
            }
        } finally {
        }
    }

    public final zzdvg zza() {
        return this.x;
    }

    public final synchronized dcy zzb(String str) {
        zzcao zzcaoVar;
        try {
            zzcaoVar = new zzcao();
            if (this.o.containsKey(str)) {
                zzcaoVar.zzc((zzduy) this.o.get(str));
            } else {
                if (!this.f6573d.containsKey(str)) {
                    this.f6573d.put(str, new ArrayList());
                }
                ((List) this.f6573d.get(str)).add(zzcaoVar);
            }
        } catch (Throwable th) {
            throw th;
        }
        return zzcaoVar;
    }

    public final synchronized String zzc() {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziz)).booleanValue() && zzq()) {
            long j = this.s;
            ti.f20033a.v.getClass();
            if (j < System.currentTimeMillis() / 1000) {
                this.f6572c = "{}";
                this.s = Long.MAX_VALUE;
                return "";
            }
            if (!this.f6572c.equals("{}")) {
                return this.f6572c;
            }
        }
        return "";
    }

    public final synchronized String zzd() {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        try {
            jSONObject.put("isTestMode", this.m);
            jSONObject.put("gesture", this.x);
            long j = this.s;
            ti.f20033a.v.getClass();
            if (j > System.currentTimeMillis() / 1000) {
                jSONObject.put("networkExtras", this.f6572c);
                jSONObject.put("networkExtrasExpirationSecs", this.s);
            }
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    public final synchronized JSONObject zze() {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        try {
            jSONObject = new JSONObject();
            try {
                jSONObject.put("platform", "ANDROID");
                if (!TextUtils.isEmpty(this.f6571b)) {
                    jSONObject.put("sdkVersion", "afma-sdk-a-v" + this.f6571b);
                }
                jSONObject.put("internalSdkVersion", this.p);
                jSONObject.put("osVersion", Build.VERSION.RELEASE);
                jSONObject.put("adapters", this.f6574e.zza());
                zzbce zzbceVar = zzbcn.zziZ;
                edt edtVar = edt.f15376a;
                if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                    String zzn = ti.f20033a.f20034ab.zzn();
                    if (!TextUtils.isEmpty(zzn)) {
                        jSONObject.put("plugin", zzn);
                    }
                }
                long j = this.s;
                ti tiVar = ti.f20033a;
                tiVar.v.getClass();
                if (j < System.currentTimeMillis() / 1000) {
                    this.f6572c = "{}";
                }
                jSONObject.put("networkExtras", this.f6572c);
                jSONObject.put("adSlots", aa());
                jSONObject.put("appInfo", this.f6576g.zza());
                String zzc = ((cmo) tiVar.f20034ab.zzi()).av().zzc();
                if (!TextUtils.isEmpty(zzc)) {
                    jSONObject.put("cld", new JSONObject(zzc));
                }
                if (((Boolean) edtVar.f15379d.zza(zzbcn.zziP)).booleanValue() && (jSONObject2 = this.n) != null) {
                    agd.c("Server data: " + jSONObject2.toString());
                    jSONObject.put("serverData", this.n);
                }
                if (((Boolean) edtVar.f15379d.zza(zzbcn.zziO)).booleanValue()) {
                    jSONObject.put("openAction", this.j);
                    jSONObject.put("gesture", this.x);
                }
                jSONObject.put("isGamRegisteredTestDevice", tiVar.f20040g.r());
                mx mxVar = cbv.f12612a.f12615d;
                jSONObject.put("isSimulator", mx.l());
                if (((Boolean) edtVar.f15379d.zza(zzbcn.zzjb)).booleanValue()) {
                    jSONObject.put("uiStorage", new JSONObject(this.v));
                }
                if (!TextUtils.isEmpty((CharSequence) edtVar.f15379d.zza(zzbcn.zzjd))) {
                    jSONObject.put("gmaDisk", this.f6570a.zza());
                }
                if (!TextUtils.isEmpty((CharSequence) edtVar.f15379d.zza(zzbcn.zzjc))) {
                    jSONObject.put("userDisk", this.w.zza());
                }
            } catch (JSONException e2) {
                ti.f20033a.f20034ab.zzv(e2, "Inspector.toJson");
                zzfxd zzfxdVar = agd.f10175a;
            }
        } catch (Throwable th) {
            throw th;
        }
        return jSONObject;
    }

    public final synchronized void zzf(String str, zzduy zzduyVar) {
        zzbce zzbceVar = zzbcn.zziz;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() && zzq()) {
            if (this.t >= ((Integer) edtVar.f15379d.zza(zzbcn.zziB)).intValue()) {
                agd.b("Maximum number of ad requests stored reached. Dropping the current request.");
                return;
            }
            if (!this.f6575f.containsKey(str)) {
                this.f6575f.put(str, new ArrayList());
            }
            this.t++;
            ((List) this.f6575f.get(str)).add(zzduyVar);
            if (((Boolean) edtVar.f15379d.zza(zzbcn.zziX)).booleanValue()) {
                String zzc = zzduyVar.zzc();
                this.o.put(zzc, zzduyVar);
                if (this.f6573d.containsKey(zzc)) {
                    List list = (List) this.f6573d.get(zzc);
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((zzcao) it.next()).zzc(zzduyVar);
                    }
                    list.clear();
                }
            }
        }
    }

    public final void zzg() {
        zzbce zzbceVar = zzbcn.zziz;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            if (((Boolean) edtVar.f15379d.zza(zzbcn.zziO)).booleanValue() && ((cmo) ti.f20033a.f20034ab.zzi()).am()) {
                ac();
                return;
            }
            String ap = ((cmo) ti.f20033a.f20034ab.zzi()).ap();
            if (TextUtils.isEmpty(ap)) {
                return;
            }
            try {
                if (new JSONObject(ap).optBoolean("isTestMode", false)) {
                    ac();
                }
            } catch (JSONException unused) {
            }
        }
    }

    public final synchronized void zzh(dri driVar, zzdvj zzdvjVar) {
        if (!zzq()) {
            try {
                driVar.b(zzfgq.zzd(18, null, null));
                return;
            } catch (RemoteException unused) {
                agd.b("Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information.");
                return;
            }
        }
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziz)).booleanValue()) {
            this.j = zzdvjVar;
            this.h.zzj(driVar, new zzbkl(this), new zzbke(this.l), new zzbjs(this));
            return;
        } else {
            try {
                driVar.b(zzfgq.zzd(1, null, null));
                return;
            } catch (RemoteException unused2) {
                agd.b("Ad inspector had an internal error.");
                return;
            }
        }
    }

    public final synchronized void zzi(String str, long j) {
        this.f6572c = str;
        this.s = j;
        ad();
    }

    public final synchronized void zzj(String str) {
        this.v = str;
        ((cmo) ti.f20033a.f20034ab.zzi()).az(this.v);
    }

    public final synchronized void zzk(long j) {
        this.k += j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x000a, code lost:
    
        if (r2 != false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzl(boolean z) {
        if (!this.i) {
            if (z) {
                ac();
                if (!this.m) {
                    ae();
                    return;
                }
            }
            if (zzq()) {
                return;
            }
            ab();
        }
    }

    public final void zzm(zzdvg zzdvgVar) {
        y(zzdvgVar, true);
    }

    public final synchronized void zzn(JSONObject jSONObject) {
        this.n = jSONObject;
    }

    public final void zzo(boolean z) {
        if (!this.i && z) {
            ac();
        }
        z(z, true);
    }

    public final boolean zzp() {
        return this.n != null;
    }

    public final synchronized boolean zzq() {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziO)).booleanValue()) {
            return this.m || ti.f20033a.f20040g.r();
        }
        return this.m;
    }

    public final synchronized boolean zzr() {
        return this.m;
    }

    public final boolean zzs() {
        return this.k < ((Long) edt.f15376a.f15379d.zza(zzbcn.zziU)).longValue();
    }
}
