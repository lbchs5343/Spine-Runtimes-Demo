package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.abz;
import g.agd;
import g.cbv;
import g.edt;
import g.uf;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzduy implements zzcwp, zzczj, zzcye {

    /* renamed from: b, reason: collision with root package name */
    public abz f6547b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f6548c;

    /* renamed from: e, reason: collision with root package name */
    public final String f6550e;

    /* renamed from: f, reason: collision with root package name */
    public JSONObject f6551f;

    /* renamed from: g, reason: collision with root package name */
    public JSONObject f6552g;
    public final zzdvk j;
    public final String l;
    public boolean m;
    public boolean n;
    public zzcwf o;

    /* renamed from: a, reason: collision with root package name */
    public String f6546a = "";
    public String k = "";

    /* renamed from: d, reason: collision with root package name */
    public String f6549d = "";
    public int h = 0;
    public zzdux i = zzdux.zza;

    public zzduy(zzdvk zzdvkVar, zzffo zzffoVar, String str) {
        this.j = zzdvkVar;
        this.f6550e = str;
        this.l = zzffoVar.zzf;
    }

    public static JSONObject p(abz abzVar) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("errorDomain", abzVar.zzc);
        jSONObject.put(MediationConstant.KEY_ERROR_CODE, abzVar.zza);
        jSONObject.put("errorDescription", abzVar.zzb);
        abz abzVar2 = abzVar.zzd;
        jSONObject.put("underlyingError", abzVar2 == null ? null : p(abzVar2));
        return jSONObject;
    }

    public final JSONObject q(zzcwf zzcwfVar) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("winningAdapterClassName", zzcwfVar.zzg());
        jSONObject.put("responseSecsSinceEpoch", zzcwfVar.zzc());
        jSONObject.put("responseId", zzcwfVar.zzi());
        zzbce zzbceVar = zzbcn.zziQ;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            String zzd = zzcwfVar.zzd();
            if (!TextUtils.isEmpty(zzd)) {
                agd.c("Bidding data: ".concat(String.valueOf(zzd)));
                jSONObject.put("biddingData", new JSONObject(zzd));
            }
        }
        if (!TextUtils.isEmpty(this.f6546a)) {
            jSONObject.put("adRequestUrl", this.f6546a);
        }
        if (!TextUtils.isEmpty(this.k)) {
            jSONObject.put("postBody", this.k);
        }
        if (!TextUtils.isEmpty(this.f6549d)) {
            jSONObject.put("adResponseBody", this.f6549d);
        }
        Object obj = this.f6552g;
        if (obj != null) {
            jSONObject.put("adResponseHeaders", obj);
        }
        Object obj2 = this.f6551f;
        if (obj2 != null) {
            jSONObject.put("transactionExtras", obj2);
        }
        if (((Boolean) edtVar.f15379d.zza(zzbcn.zziT)).booleanValue()) {
            jSONObject.put("hasExceededMemoryLimit", this.f6548c);
        }
        JSONArray jSONArray = new JSONArray();
        for (uf ufVar : zzcwfVar.zzj()) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("adapterClassName", ufVar.zza);
            jSONObject2.put("latencyMillis", ufVar.zzb);
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziR)).booleanValue()) {
                jSONObject2.put("credentials", cbv.f12612a.f12615d.w(ufVar.zzd));
            }
            abz abzVar = ufVar.zzc;
            jSONObject2.put(AVErrorInfo.ERROR, abzVar == null ? null : p(abzVar));
            jSONArray.put(jSONObject2);
        }
        jSONObject.put("adNetworks", jSONArray);
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzcye
    public final void zza(zzcrq zzcrqVar) {
        zzdvk zzdvkVar = this.j;
        if (zzdvkVar.zzq()) {
            this.o = zzcrqVar.zzm();
            this.i = zzdux.zzb;
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziX)).booleanValue()) {
                zzdvkVar.zzf(this.l, this);
            }
        }
    }

    public final String zzc() {
        return this.f6550e;
    }

    public final JSONObject zzd() throws JSONException {
        JSONObject jSONObject;
        IBinder iBinder;
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("state", this.i);
        jSONObject2.put("format", zzfet.zza(this.h));
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziX)).booleanValue()) {
            jSONObject2.put("isOutOfContext", this.n);
            if (this.n) {
                jSONObject2.put("shown", this.m);
            }
        }
        zzcwf zzcwfVar = this.o;
        if (zzcwfVar != null) {
            jSONObject = q(zzcwfVar);
        } else {
            abz abzVar = this.f6547b;
            JSONObject jSONObject3 = null;
            if (abzVar != null && (iBinder = abzVar.zze) != null) {
                zzcwf zzcwfVar2 = (zzcwf) iBinder;
                jSONObject3 = q(zzcwfVar2);
                if (zzcwfVar2.zzj().isEmpty()) {
                    JSONArray jSONArray = new JSONArray();
                    jSONArray.put(p(this.f6547b));
                    jSONObject3.put("errors", jSONArray);
                }
            }
            jSONObject = jSONObject3;
        }
        jSONObject2.put("responseInfo", jSONObject);
        return jSONObject2;
    }

    @Override // com.google.android.gms.internal.ads.zzcwp
    public final void zzdB(abz abzVar) {
        zzdvk zzdvkVar = this.j;
        if (zzdvkVar.zzq()) {
            this.i = zzdux.zzc;
            this.f6547b = abzVar;
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziX)).booleanValue()) {
                zzdvkVar.zzf(this.l, this);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczj
    public final void zzdn(zzbvx zzbvxVar) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziX)).booleanValue()) {
            return;
        }
        zzdvk zzdvkVar = this.j;
        if (zzdvkVar.zzq()) {
            zzdvkVar.zzf(this.l, this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczj
    public final void zzdo(zzfff zzfffVar) {
        zzdvk zzdvkVar = this.j;
        if (zzdvkVar.zzq()) {
            if (!zzfffVar.zzb.zza.isEmpty()) {
                this.h = ((zzfet) zzfffVar.zzb.zza.get(0)).zzb;
            }
            if (!TextUtils.isEmpty(zzfffVar.zzb.zzb.zzl)) {
                this.f6546a = zzfffVar.zzb.zzb.zzl;
            }
            if (!TextUtils.isEmpty(zzfffVar.zzb.zzb.zzm)) {
                this.k = zzfffVar.zzb.zzb.zzm;
            }
            if (zzfffVar.zzb.zzb.zzp.length() > 0) {
                this.f6551f = zzfffVar.zzb.zzb.zzp;
            }
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziT)).booleanValue()) {
                if (!zzdvkVar.zzs()) {
                    this.f6548c = true;
                    return;
                }
                if (!TextUtils.isEmpty(zzfffVar.zzb.zzb.zzn)) {
                    this.f6549d = zzfffVar.zzb.zzb.zzn;
                }
                if (zzfffVar.zzb.zzb.zzo.length() > 0) {
                    this.f6552g = zzfffVar.zzb.zzb.zzo;
                }
                JSONObject jSONObject = this.f6552g;
                int length = jSONObject != null ? jSONObject.toString().length() : 0;
                if (!TextUtils.isEmpty(this.f6549d)) {
                    length += this.f6549d.length();
                }
                zzdvkVar.zzk(length);
            }
        }
    }

    public final void zze() {
        this.n = true;
    }

    public final void zzf() {
        this.m = true;
    }

    public final boolean zzg() {
        return this.i != zzdux.zza;
    }
}
