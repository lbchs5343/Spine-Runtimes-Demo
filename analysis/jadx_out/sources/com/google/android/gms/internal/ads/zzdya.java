package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import g.acl;
import g.agd;
import g.akx;
import g.bgq;
import g.dcy;
import g.edt;
import g.ti;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzdya {

    /* renamed from: a, reason: collision with root package name */
    public final zzdsh f6661a;

    /* renamed from: b, reason: collision with root package name */
    public final zzffo f6662b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f6663c;

    /* renamed from: d, reason: collision with root package name */
    public final zzchk f6664d;

    /* renamed from: e, reason: collision with root package name */
    public final String f6665e;

    /* renamed from: f, reason: collision with root package name */
    public final Object f6666f = new Object();

    /* renamed from: g, reason: collision with root package name */
    public final Context f6667g;
    public final akx h;
    public final zzfkl i;

    public zzdya(zzchk zzchkVar, Context context, akx akxVar, zzffo zzffoVar, Executor executor, String str, zzfkl zzfklVar, zzdsh zzdshVar) {
        this.f6664d = zzchkVar;
        this.f6667g = context;
        this.h = akxVar;
        this.f6662b = zzffoVar;
        this.f6663c = executor;
        this.f6665e = str;
        this.i = zzfklVar;
        zzchkVar.zzx();
        this.f6661a = zzdshVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final String j(String str, String str2, String str3, zzdsh zzdshVar) {
        Boolean bool;
        if (!TextUtils.isEmpty(str3)) {
            if (new JSONObject(str3).optString("is_gbid").equals("true")) {
                bool = Boolean.TRUE;
                if (bool.booleanValue()) {
                    int lastIndexOf = str.lastIndexOf("&");
                    String str4 = null;
                    String substring = lastIndexOf != -1 ? str.substring(0, lastIndexOf) : null;
                    if (!TextUtils.isEmpty(substring)) {
                        try {
                            byte[] decode = Base64.decode(substring, 11);
                            byte[] bytes = str2.getBytes("UTF-8");
                            try {
                                str4 = new JSONObject(str3).getString("arek");
                            } catch (JSONException e2) {
                                agd.e("Failed to get key from QueryJSONMap".concat(e2.toString()));
                                ti.f20033a.f20034ab.zzw(e2, "CryptoUtils.getKeyFromQueryJsonMap");
                            }
                            return zzfgd.zzb(decode, bytes, str4, zzdshVar);
                        } catch (UnsupportedEncodingException e3) {
                            agd.e("Failed to decode the adResponse. ".concat(e3.toString()));
                            ti.f20033a.f20034ab.zzw(e3, "PreloadedLoader.decryptAdResponseIfNecessary");
                        }
                    }
                }
            }
            bool = Boolean.FALSE;
            if (bool.booleanValue()) {
            }
        }
        return str;
    }

    public final dcy k(final String str, final String str2) {
        Context context = this.f6667g;
        zzfka zza = zzfjz.zza(context, 11);
        zza.zzi();
        zzboi zza2 = ti.f20033a.w.zza(context, this.h, this.f6664d.zzz());
        zzboc zzbocVar = zzbof.zza;
        final zzbny zza3 = zza2.zza("google.afma.response.normalize", zzbocVar, zzbocVar);
        dcy zzh = zzgei.zzh("");
        zzgdp zzgdpVar = new zzgdp(this) { // from class: com.google.android.gms.internal.ads.zzdxx
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                String str3 = str;
                String str4 = str2;
                try {
                    jSONObject3.put(TTDownloadField.TT_HEADERS, new JSONObject());
                    jSONObject3.put("body", str3);
                    jSONObject2.put("base_url", "");
                    jSONObject2.put("signals", new JSONObject(str4));
                    jSONObject.put("request", jSONObject2);
                    jSONObject.put("response", jSONObject3);
                    jSONObject.put("flags", new JSONObject());
                    return zzgei.zzh(jSONObject);
                } catch (JSONException e2) {
                    throw new JSONException("Preloaded loader: ".concat(String.valueOf(e2.getCause())));
                }
            }
        };
        Executor executor = this.f6663c;
        dcy zzn = zzgei.zzn(zzgei.zzn(zzgei.zzn(zzh, zzgdpVar, executor), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdxy
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                return zzbny.this.zzb((JSONObject) obj);
            }
        }, executor), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdxz
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                return zzgei.zzh(new zzfff(new zzffc(zzdya.this.f6662b), zzffe.zza(new StringReader(((JSONObject) obj).toString()), null)));
            }
        }, executor);
        zzfkk.zza(zzn, this.i, zza);
        return zzn;
    }

    public final String l(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray jSONArray = jSONObject.getJSONArray("ad_types");
            if (jSONArray != null && MediationConfigUserInfoForSegment.GENDER_UNKNOWN.equals(jSONArray.getString(0))) {
                jSONObject.put("ad_types", new JSONArray().put(this.f6665e));
            }
            return jSONObject.toString();
        } catch (JSONException e2) {
            agd.b("Failed to update the ad types for rendering. ".concat(e2.toString()));
            return str;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x0139, code lost:
    
        if (r5.o(r2, r1, r3) == false) goto L54;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final dcy zza() {
        String l;
        String str;
        String str2 = this.f6662b.zzd.zzx;
        if (!TextUtils.isEmpty(str2)) {
            String str3 = "";
            try {
                str3 = new JSONObject(str2).optString("request_id", "");
            } catch (JSONException unused) {
            }
            zzbce zzbceVar = zzbcn.zzgT;
            edt edtVar = edt.f15376a;
            if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() && str3.isEmpty()) {
                int lastIndexOf = str2.lastIndexOf("&request_id=");
                str3 = lastIndexOf != -1 ? str2.substring(lastIndexOf + 12) : "";
            }
            if (TextUtils.isEmpty(str3)) {
                return zzgei.zzg(new zzeiz(15, "Invalid ad string."));
            }
            if (((Boolean) edtVar.f15379d.zza(zzbcn.zzhj)).booleanValue()) {
                synchronized (this.f6666f) {
                    bgq zzo = this.f6664d.zzo();
                    l = zzo.l(str3, this.f6661a);
                    if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                        str2 = j(str2, str3, l, this.f6661a);
                    }
                    try {
                        str = new JSONObject(str2).optString("render_id", "");
                    } catch (JSONException unused2) {
                        str = "";
                    }
                    String str4 = null;
                    int i = 0;
                    if (!TextUtils.isEmpty(str)) {
                        String str5 = "";
                        try {
                            str5 = new String(Base64.decode(str, 0), StandardCharsets.UTF_8);
                        } catch (IllegalArgumentException e2) {
                            agd.e("Ad grouping: Has render_id, but not base64 encoded: ".concat(String.valueOf(str)));
                            ti.f20033a.f20034ab.zzw(e2, "PreloadedLoader.decodeRenderId");
                        }
                        List zze = zzfxd.zzb(zzfwf.zzc(':')).zze(str5);
                        if (zze.size() == 2) {
                            str4 = (String) zze.get(0);
                            i = Integer.parseInt((String) zze.get(1));
                        } else {
                            agd.e("Ad grouping: Has render_id, but invalid format: ".concat(String.valueOf(str)));
                        }
                    }
                    Pair pair = new Pair(str4, Integer.valueOf(i));
                    String str6 = (String) pair.first;
                    int intValue = ((Integer) pair.second).intValue();
                    if (!TextUtils.isEmpty(str6) && intValue > 0) {
                        if (zzo.j(str3, str6)) {
                            return zzgei.zzg(new zzeiz(10, "The ad has already been shown."));
                        }
                    }
                    zzo.n(str3);
                }
            } else {
                l = this.f6664d.zzo().l(str3, this.f6661a);
                if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                    str2 = j(str2, str3, l, this.f6661a);
                }
            }
            if (!TextUtils.isEmpty(l)) {
                return k(str2, l(l));
            }
        }
        acl aclVar = this.f6662b.zzd.zzs;
        if (aclVar != null) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgL)).booleanValue()) {
                String str7 = aclVar.zza;
                String str8 = aclVar.zzb;
                String str9 = "";
                try {
                    str9 = new JSONObject(str7).optString("request_id", "");
                } catch (JSONException unused3) {
                }
                String str10 = "";
                try {
                    str10 = new JSONObject(str8).optString("request_id", "");
                } catch (JSONException unused4) {
                }
                if (TextUtils.isEmpty(str10) || !str9.equals(str10)) {
                    this.f6661a.zzb().put("ridmm", "true");
                } else {
                    this.f6664d.zzo().n(str9);
                    this.f6661a.zzb().put("request_id", str9);
                }
            }
            return k(aclVar.zza, l(aclVar.zzb));
        }
        return zzgei.zzg(new zzeiz(14, "Mismatch request IDs."));
    }
}
