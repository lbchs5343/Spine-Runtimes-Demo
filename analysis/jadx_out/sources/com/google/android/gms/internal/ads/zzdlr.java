package com.google.android.gms.internal.ads;

import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import g.awf;
import g.cxv;
import g.dcy;
import g.edt;
import g.esy;
import g.ti;
import j$.util.Optional;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.function.Function;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzdlr {

    /* renamed from: a, reason: collision with root package name */
    public final zzges f6180a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdmg f6181b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdml f6182c;

    public zzdlr(zzges zzgesVar, zzdmg zzdmgVar, zzdml zzdmlVar) {
        this.f6180a = zzgesVar;
        this.f6181b = zzdmgVar;
        this.f6182c = zzdmlVar;
    }

    public final dcy zza(final zzfff zzfffVar, final zzfet zzfetVar, final JSONObject jSONObject) {
        dcy dcyVar;
        dcy zzh;
        Callable callable = new Callable(this) { // from class: com.google.android.gms.internal.ads.zzdlm
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzdiy zzdiyVar = new zzdiy();
                JSONObject jSONObject2 = jSONObject;
                zzdiyVar.zzaa(jSONObject2.optInt("template_id", -1));
                zzdiyVar.zzK(jSONObject2.optString("custom_template_id"));
                JSONObject optJSONObject = jSONObject2.optJSONObject("omid_settings");
                String optString = optJSONObject != null ? optJSONObject.optString("omid_partner_name") : null;
                zzfff zzfffVar2 = zzfffVar;
                zzdiyVar.zzV(optString);
                zzffo zzffoVar = zzfffVar2.zza.zza;
                if (!zzffoVar.zzg.contains(Integer.toString(zzdiyVar.zzc()))) {
                    throw new zzeiz(1, awf.ac(zzdiyVar.zzc(), "Invalid template ID: "));
                }
                if (zzdiyVar.zzc() == 3) {
                    if (zzdiyVar.zzA() == null) {
                        throw new zzeiz(1, "No custom template id for custom template ad response.");
                    }
                    if (!zzffoVar.zzh.contains(zzdiyVar.zzA())) {
                        throw new zzeiz(1, "Unexpected custom template id in the response.");
                    }
                }
                zzfet zzfetVar2 = zzfetVar;
                zzdiyVar.zzY(jSONObject2.optDouble("rating", -1.0d));
                String optString2 = jSONObject2.optString("headline", null);
                if (zzfetVar2.zzM) {
                    ti tiVar = ti.f20033a;
                    esy esyVar = tiVar.z;
                    Resources zze = tiVar.f20034ab.zze();
                    optString2 = awf.i(zze != null ? zze.getString(R.string.s7) : "Test Ad", " : ", optString2);
                }
                zzdiyVar.zzZ("headline", optString2);
                zzdiyVar.zzZ("body", jSONObject2.optString("body", null));
                zzdiyVar.zzZ("call_to_action", jSONObject2.optString("call_to_action", null));
                zzdiyVar.zzZ("store", jSONObject2.optString("store", null));
                zzdiyVar.zzZ("price", jSONObject2.optString("price", null));
                zzdiyVar.zzZ("advertiser", jSONObject2.optString("advertiser", null));
                return zzdiyVar;
            }
        };
        zzges zzgesVar = this.f6180a;
        final dcy zzb = zzgesVar.zzb(callable);
        final zzdmg zzdmgVar = this.f6181b;
        final dcy zzf = zzdmgVar.zzf(jSONObject, "images");
        final dcy zzg = zzdmgVar.zzg(jSONObject, "images", zzfetVar, zzfffVar.zzb.zzb);
        final dcy zze = zzdmgVar.zze(jSONObject, "secondary_image");
        final dcy zze2 = zzdmgVar.zze(jSONObject, "app_icon");
        final dcy zzd = zzdmgVar.zzd(jSONObject, "attribution");
        final dcy zzh2 = zzdmgVar.zzh(jSONObject, zzfetVar, zzfffVar.zzb.zzb);
        zzbce zzbceVar = zzbcn.zzmF;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() && ((Integer) Optional.ofNullable(jSONObject.optJSONObject(MediaFormat.KEY_VIDEO)).map(new Function() { // from class: com.google.android.gms.internal.ads.zzdln
            public final /* synthetic */ Function andThen(Function function) {
                return j$.util.function.k.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((JSONObject) obj).optJSONArray("flags");
            }

            public final /* synthetic */ Function compose(Function function) {
                return j$.util.function.k.$default$compose(this, function);
            }
        }).map(new Function() { // from class: com.google.android.gms.internal.ads.zzdlo
            public final /* synthetic */ Function andThen(Function function) {
                return j$.util.function.k.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                JSONArray jSONArray = (JSONArray) obj;
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    if (optJSONObject.optString("key").equals("afma_video_player_type")) {
                        return optJSONObject.optString("value");
                    }
                }
                return null;
            }

            public final /* synthetic */ Function compose(Function function) {
                return j$.util.function.k.$default$compose(this, function);
            }
        }).map(new Function() { // from class: com.google.android.gms.internal.ads.zzdlp
            public final /* synthetic */ Function andThen(Function function) {
                return j$.util.function.k.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(Integer.parseInt((String) obj));
            }

            public final /* synthetic */ Function compose(Function function) {
                return j$.util.function.k.$default$compose(this, function);
            }
        }).orElse(0)).intValue() == 3) {
            zzcao zzcaoVar = new zzcao();
            zzgei.zzr(zzh2, new cxv(zzcaoVar), zzcaj.zze);
            dcyVar = zzcaoVar;
        } else {
            dcyVar = zzgei.zzh(new Bundle());
        }
        final dcy zza = this.f6182c.zza(jSONObject, "custom_assets");
        if (jSONObject.optBoolean("enable_omid")) {
            JSONObject optJSONObject = jSONObject.optJSONObject("omid_settings");
            if (optJSONObject == null) {
                zzh = zzgei.zzh(null);
            } else {
                final String optString = optJSONObject.optString("omid_html");
                zzh = TextUtils.isEmpty(optString) ? zzgei.zzh(null) : zzgei.zzn(zzgei.zzh(null), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdlt
                    @Override // com.google.android.gms.internal.ads.zzgdp
                    public final dcy zza(Object obj) {
                        zzdmg zzdmgVar2 = zzdmg.this;
                        String str = optString;
                        zzdmgVar2.getClass();
                        zzcfx zzcfxVar = ti.f20033a.h;
                        zzcfk zza2 = zzcfx.zza(zzdmgVar2.h, zzche.zza(), "native-omid", false, false, zzdmgVar2.p, null, zzdmgVar2.f6189e, null, null, zzdmgVar2.f6191g, zzdmgVar2.i, null, null, zzdmgVar2.j, zzdmgVar2.o);
                        final zzcan zza3 = zzcan.zza((Object) zza2);
                        zza2.zzN().zzB(new zzcha() { // from class: com.google.android.gms.internal.ads.zzdma
                            @Override // com.google.android.gms.internal.ads.zzcha
                            public final void zza(boolean z, int i, String str2, String str3) {
                                zzcan.this.zzb();
                            }
                        });
                        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfh)).booleanValue()) {
                            zza2.loadData(Base64.encodeToString(str.getBytes(), 1), "text/html", "base64");
                            return zza3;
                        }
                        zza2.loadData(str, "text/html", "UTF-8");
                        return zza3;
                    }
                }, zzcaj.zze);
            }
        } else {
            zzh = zzgei.zzh(null);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(zzb);
        arrayList.add(zzf);
        arrayList.add(zzg);
        arrayList.add(zze);
        arrayList.add(zze2);
        arrayList.add(zzd);
        arrayList.add(zzh2);
        arrayList.add(dcyVar);
        arrayList.add(zza);
        if (!((Boolean) edtVar.f15379d.zza(zzbcn.zzfk)).booleanValue()) {
            arrayList.add(zzh);
        }
        final dcy dcyVar2 = zzh;
        final dcy dcyVar3 = dcyVar;
        return zzgei.zza(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdlq
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzdiy zzdiyVar = (zzdiy) zzb.get();
                zzdiyVar.zzP((List) zzf.get());
                zzdiyVar.zzM((zzbfy) zze2.get());
                zzdiyVar.zzQ((zzbfy) zze.get());
                zzdiyVar.zzJ((zzbfr) zzd.get());
                JSONObject jSONObject2 = jSONObject;
                zzdiyVar.zzS(zzdmg.zzj(jSONObject2));
                zzdiyVar.zzL(zzdmg.zzi(jSONObject2));
                zzcfk zzcfkVar = (zzcfk) zzh2.get();
                if (zzcfkVar != null) {
                    zzdiyVar.zzad(zzcfkVar);
                    zzdiyVar.zzac(zzcfkVar.zzF());
                    zzdiyVar.zzab(zzcfkVar.zzq());
                }
                dcy dcyVar4 = dcyVar3;
                dcy dcyVar5 = zzg;
                zzdiyVar.zzd().putAll((Bundle) dcyVar4.get());
                zzcfk zzcfkVar2 = (zzcfk) dcyVar5.get();
                if (zzcfkVar2 != null) {
                    zzdiyVar.zzO(zzcfkVar2);
                    zzdiyVar.zzae(zzcfkVar2.zzF());
                }
                dcy dcyVar6 = dcyVar2;
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfk)).booleanValue()) {
                    zzdiyVar.zzU(dcyVar6);
                    zzdiyVar.zzX(new zzcao());
                } else {
                    zzcfk zzcfkVar3 = (zzcfk) dcyVar6.get();
                    if (zzcfkVar3 != null) {
                        zzdiyVar.zzT(zzcfkVar3);
                    }
                }
                for (zzdmk zzdmkVar : (List) zza.get()) {
                    if (zzdmkVar.zza != 1) {
                        zzdiyVar.zzN(zzdmkVar.zzb, zzdmkVar.zzd);
                    } else {
                        zzdiyVar.zzZ(zzdmkVar.zzb, zzdmkVar.zzc);
                    }
                }
                return zzdiyVar;
            }
        }, zzgesVar);
    }
}
