package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.abn;
import g.agd;
import g.akx;
import g.cui;
import g.dcy;
import g.edt;
import g.eno;
import g.fso;
import g.gfo;
import g.gin;
import g.gqh;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzdmg {

    /* renamed from: a, reason: collision with root package name */
    public final zzbfn f6185a;

    /* renamed from: b, reason: collision with root package name */
    public final ScheduledExecutorService f6186b;

    /* renamed from: c, reason: collision with root package name */
    public final zzedp f6187c;

    /* renamed from: d, reason: collision with root package name */
    public final zzflr f6188d;

    /* renamed from: e, reason: collision with root package name */
    public final akx f6189e;

    /* renamed from: f, reason: collision with root package name */
    public final zzdoi f6190f;

    /* renamed from: g, reason: collision with root package name */
    public final gfo f6191g;
    public final Context h;
    public final zzbbl i;
    public final zzeea j;
    public final zzdsm k;
    public final zzdmy l;
    public final zzdlk m;
    public final zzdpn n;
    public final zzffs o;
    public final zzavc p;
    public final Executor q;

    public zzdmg(Context context, zzdlk zzdlkVar, zzavc zzavcVar, akx akxVar, gfo gfoVar, zzbbl zzbblVar, Executor executor, zzffo zzffoVar, zzdmy zzdmyVar, zzdpn zzdpnVar, ScheduledExecutorService scheduledExecutorService, zzdsm zzdsmVar, zzflr zzflrVar, zzedp zzedpVar, zzdoi zzdoiVar, zzeea zzeeaVar, zzffs zzffsVar) {
        this.h = context;
        this.m = zzdlkVar;
        this.p = zzavcVar;
        this.f6189e = akxVar;
        this.f6191g = gfoVar;
        this.i = zzbblVar;
        this.q = executor;
        this.f6185a = zzffoVar.zzi;
        this.l = zzdmyVar;
        this.n = zzdpnVar;
        this.f6186b = scheduledExecutorService;
        this.k = zzdsmVar;
        this.f6188d = zzflrVar;
        this.f6187c = zzedpVar;
        this.f6190f = zzdoiVar;
        this.j = zzeeaVar;
        this.o = zzffsVar;
    }

    public static Integer r(String str, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException unused) {
            return null;
        }
    }

    public static final gqh s(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString(MediationConstant.KEY_REASON);
        String optString2 = jSONObject.optString("ping_url");
        if (TextUtils.isEmpty(optString) || TextUtils.isEmpty(optString2)) {
            return null;
        }
        return new gqh(optString, optString2);
    }

    public static final gqh zzi(JSONObject jSONObject) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2 = jSONObject.optJSONObject("mute");
        if (optJSONObject2 == null || (optJSONObject = optJSONObject2.optJSONObject("default_reason")) == null) {
            return null;
        }
        return s(optJSONObject);
    }

    public static final List zzj(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("mute");
        if (optJSONObject == null) {
            return zzfzo.zzn();
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray("reasons");
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            return zzfzo.zzn();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < optJSONArray.length(); i++) {
            gqh s = s(optJSONArray.optJSONObject(i));
            if (s != null) {
                arrayList.add(s);
            }
        }
        return zzfzo.zzl(arrayList);
    }

    public final dcy t(JSONObject jSONObject, boolean z) {
        if (jSONObject == null) {
            return zzgei.zzh(null);
        }
        final String optString = jSONObject.optString(abn.EXTRA_URL);
        if (TextUtils.isEmpty(optString)) {
            return zzgei.zzh(null);
        }
        final double optDouble = jSONObject.optDouble("scale", 1.0d);
        boolean optBoolean = jSONObject.optBoolean("is_transparent", true);
        final int optInt = jSONObject.optInt(MediaFormat.KEY_WIDTH, -1);
        final int optInt2 = jSONObject.optInt(MediaFormat.KEY_HEIGHT, -1);
        if (z) {
            return zzgei.zzh(new zzbfl(null, Uri.parse(optString), optDouble, optInt, optInt2));
        }
        dcy zzm = zzgei.zzm(this.m.zzb(optString, optDouble, optBoolean), new zzfwh() { // from class: com.google.android.gms.internal.ads.zzdlu
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                return new zzbfl(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(optString), optDouble, optInt, optInt2);
            }
        }, this.q);
        return jSONObject.optBoolean("require") ? zzgei.zzn(zzm, new zzdmd(zzm), zzcaj.zzf) : zzgei.zzf(zzm, Exception.class, new zzdmc(null), zzcaj.zzf);
    }

    public final dcy u(JSONArray jSONArray, boolean z, boolean z2) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return zzgei.zzh(Collections.EMPTY_LIST);
        }
        ArrayList arrayList = new ArrayList();
        int length = z2 ? jSONArray.length() : 1;
        for (int i = 0; i < length; i++) {
            arrayList.add(t(jSONArray.optJSONObject(i), z));
        }
        return zzgei.zzm(zzgei.zzd(arrayList), new zzfwh() { // from class: com.google.android.gms.internal.ads.zzdlz
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                ArrayList arrayList2 = new ArrayList();
                for (zzbfl zzbflVar : (List) obj) {
                    if (zzbflVar != null) {
                        arrayList2.add(zzbflVar);
                    }
                }
                return arrayList2;
            }
        }, this.q);
    }

    public final dcy v(JSONObject jSONObject, zzfet zzfetVar, zzfew zzfewVar) {
        eno enoVar;
        String optString = jSONObject.optString("base_url");
        String optString2 = jSONObject.optString("html");
        int i = 0;
        int optInt = jSONObject.optInt(MediaFormat.KEY_WIDTH, 0);
        int optInt2 = jSONObject.optInt(MediaFormat.KEY_HEIGHT, 0);
        if (optInt != 0) {
            i = optInt;
        } else if (optInt2 == 0) {
            enoVar = eno.zzc();
            final dcy zzb = this.l.zzb(optString, optString2, zzfetVar, zzfewVar, enoVar);
            return zzgei.zzn(zzb, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdlv
                @Override // com.google.android.gms.internal.ads.zzgdp
                public final dcy zza(Object obj) {
                    zzcfk zzcfkVar = (zzcfk) obj;
                    if (zzcfkVar == null || zzcfkVar.zzq() == null) {
                        throw new zzeiz(1, "Retrieve video view in html5 ad response failed.");
                    }
                    return dcy.this;
                }
            }, zzcaj.zzf);
        }
        enoVar = new eno(this.h, new gin(i, optInt2));
        final dcy zzb2 = this.l.zzb(optString, optString2, zzfetVar, zzfewVar, enoVar);
        return zzgei.zzn(zzb2, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdlv
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                zzcfk zzcfkVar = (zzcfk) obj;
                if (zzcfkVar == null || zzcfkVar.zzq() == null) {
                    throw new zzeiz(1, "Retrieve video view in html5 ad response failed.");
                }
                return dcy.this;
            }
        }, zzcaj.zzf);
    }

    public final dcy zzd(JSONObject jSONObject, String str) {
        final JSONObject optJSONObject = jSONObject.optJSONObject("attribution");
        if (optJSONObject == null) {
            return zzgei.zzh(null);
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray("images");
        JSONObject optJSONObject2 = optJSONObject.optJSONObject("image");
        if (optJSONArray == null && optJSONObject2 != null) {
            optJSONArray = new JSONArray();
            optJSONArray.put(optJSONObject2);
        }
        dcy zzm = zzgei.zzm(u(optJSONArray, false, true), new zzfwh() { // from class: com.google.android.gms.internal.ads.zzdmb
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                zzdmg zzdmgVar = zzdmg.this;
                JSONObject jSONObject2 = optJSONObject;
                List list = (List) obj;
                zzdmgVar.getClass();
                if (list == null || list.isEmpty()) {
                    return null;
                }
                String optString = jSONObject2.optString("text");
                Integer r = zzdmg.r("bg_color", jSONObject2);
                Integer r2 = zzdmg.r("text_color", jSONObject2);
                int optInt = jSONObject2.optInt("text_size", -1);
                boolean optBoolean = jSONObject2.optBoolean("allow_pub_rendering");
                int optInt2 = jSONObject2.optInt("animation_ms", 1000);
                return new zzbfi(optString, list, r, r2, optInt > 0 ? Integer.valueOf(optInt) : null, jSONObject2.optInt("presentation_ms", TTAdConstant.INIT_LOCAL_FAIL_CODE) + optInt2, zzdmgVar.f6185a.zze, optBoolean);
            }
        }, this.q);
        return optJSONObject.optBoolean("require") ? zzgei.zzn(zzm, new zzdmd(zzm), zzcaj.zzf) : zzgei.zzf(zzm, Exception.class, new zzdmc(null), zzcaj.zzf);
    }

    public final dcy zze(JSONObject jSONObject, String str) {
        return t(jSONObject.optJSONObject(str), this.f6185a.zzb);
    }

    public final dcy zzf(JSONObject jSONObject, String str) {
        JSONArray optJSONArray = jSONObject.optJSONArray("images");
        zzbfn zzbfnVar = this.f6185a;
        return u(optJSONArray, zzbfnVar.zzb, zzbfnVar.zzd);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final dcy zzg(JSONObject jSONObject, String str, final zzfet zzfetVar, final zzfew zzfewVar) {
        final eno enoVar;
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzjH)).booleanValue()) {
            return zzgei.zzh(null);
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("images");
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            return zzgei.zzh(null);
        }
        int i = 0;
        JSONObject optJSONObject = optJSONArray.optJSONObject(0);
        if (optJSONObject == null) {
            return zzgei.zzh(null);
        }
        final String optString = optJSONObject.optString("base_url");
        final String optString2 = optJSONObject.optString("html");
        int optInt = optJSONObject.optInt(MediaFormat.KEY_WIDTH, 0);
        int optInt2 = optJSONObject.optInt(MediaFormat.KEY_HEIGHT, 0);
        if (optInt != 0) {
            i = optInt;
        } else if (optInt2 == 0) {
            enoVar = eno.zzc();
            if (!TextUtils.isEmpty(optString2)) {
                return zzgei.zzh(null);
            }
            final dcy zzn = zzgei.zzn(zzgei.zzh(null), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdlw
                @Override // com.google.android.gms.internal.ads.zzgdp
                public final dcy zza(Object obj) {
                    zzdmg zzdmgVar = zzdmg.this;
                    eno enoVar2 = enoVar;
                    zzfet zzfetVar2 = zzfetVar;
                    zzfew zzfewVar2 = zzfewVar;
                    String str2 = optString;
                    String str3 = optString2;
                    zzcfk zza = zzdmgVar.n.zza(enoVar2, zzfetVar2, zzfewVar2);
                    final zzcan zza2 = zzcan.zza((Object) zza);
                    zzdof zzb = zzdmgVar.f6190f.zzb();
                    zza.zzN().zzU(zzb, zzb, zzb, zzb, zzb, false, null, new cui(zzdmgVar.h, null), null, null, zzdmgVar.f6187c, zzdmgVar.f6188d, zzdmgVar.k, null, zzb, null, null, null, null);
                    zza.zzag("/getNativeAdViewSignals", zzbjq.zzs);
                    zza.zzag("/getNativeClickMeta", zzbjq.zzt);
                    zza.zzN().zzE(true);
                    zza.zzN().zzB(new zzcha() { // from class: com.google.android.gms.internal.ads.zzdly
                        @Override // com.google.android.gms.internal.ads.zzcha
                        public final void zza(boolean z, int i2, String str4, String str5) {
                            zzcan zzcanVar = zzcan.this;
                            if (z) {
                                zzcanVar.zzb();
                                return;
                            }
                            zzcanVar.zzd(new zzeiz(1, "Image Web View failed to load. Error code: " + i2 + ", Description: " + str4 + ", Failing URL: " + str5));
                        }
                    });
                    zza.zzae(str2, str3, null);
                    return zza2;
                }
            }, zzcaj.zze);
            return zzgei.zzn(zzn, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdlx
                @Override // com.google.android.gms.internal.ads.zzgdp
                public final dcy zza(Object obj) {
                    if (((zzcfk) obj) != null) {
                        return dcy.this;
                    }
                    throw new zzeiz(1, "Retrieve Web View from image ad response failed.");
                }
            }, zzcaj.zzf);
        }
        enoVar = new eno(this.h, new gin(i, optInt2));
        if (!TextUtils.isEmpty(optString2)) {
        }
    }

    public final dcy zzh(JSONObject jSONObject, zzfet zzfetVar, zzfew zzfewVar) {
        dcy zza;
        String[] strArr = {"html_containers", "instream"};
        JSONObject au = fso.au(jSONObject, strArr);
        JSONObject optJSONObject = au == null ? null : au.optJSONObject(strArr[1]);
        if (optJSONObject != null) {
            return v(optJSONObject, zzfetVar, zzfewVar);
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject(MediaFormat.KEY_VIDEO);
        if (optJSONObject2 == null) {
            return zzgei.zzh(null);
        }
        String optString = optJSONObject2.optString("vast_xml");
        zzbce zzbceVar = zzbcn.zzjG;
        boolean z = ((Boolean) edt.f15376a.f15379d.zza(zzbceVar)).booleanValue() && optJSONObject2.has("html");
        if (TextUtils.isEmpty(optString)) {
            if (!z) {
                agd.b("Required field 'vast_xml' or 'html' is missing");
                return zzgei.zzh(null);
            }
        } else if (!z) {
            zza = this.l.zza(optJSONObject2);
            return zzgei.zzf(zzgei.zzo(zza, ((Integer) r4.f15379d.zza(zzbcn.zzdR)).intValue(), TimeUnit.SECONDS, this.f6186b), Exception.class, new zzdmc(null), zzcaj.zzf);
        }
        zza = v(optJSONObject2, zzfetVar, zzfewVar);
        return zzgei.zzf(zzgei.zzo(zza, ((Integer) r4.f15379d.zza(zzbcn.zzdR)).intValue(), TimeUnit.SECONDS, this.f6186b), Exception.class, new zzdmc(null), zzcaj.zzf);
    }
}
