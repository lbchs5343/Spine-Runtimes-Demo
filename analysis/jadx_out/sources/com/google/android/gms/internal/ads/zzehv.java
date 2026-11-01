package com.google.android.gms.internal.ads;

import g.dcy;
import g.dub;
import g.dyd;
import g.edt;
import g.ti;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzehv implements zzehp {

    /* renamed from: a, reason: collision with root package name */
    public final zzfgn f6985a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdoi f6986b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdhj f6987c;

    /* renamed from: d, reason: collision with root package name */
    public final zzdsh f6988d;

    /* renamed from: e, reason: collision with root package name */
    public final zzges f6989e;

    /* renamed from: f, reason: collision with root package name */
    public final zzdlr f6990f;

    public zzehv(zzdhj zzdhjVar, zzges zzgesVar, zzdlr zzdlrVar, zzfgn zzfgnVar, zzdoi zzdoiVar, zzdsh zzdshVar) {
        this.f6987c = zzdhjVar;
        this.f6989e = zzgesVar;
        this.f6990f = zzdlrVar;
        this.f6985a = zzfgnVar;
        this.f6986b = zzdoiVar;
        this.f6988d = zzdshVar;
    }

    public final dcy g(final zzfff zzfffVar, final zzfet zzfetVar, final JSONObject jSONObject) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzck)).booleanValue()) {
            dub.m(ti.f20033a.v, this.f6988d.zza(), zzdrv.RENDERING_WEBVIEW_CREATION_START.zza());
        }
        final dcy zza = this.f6985a.zza();
        final dcy zza2 = this.f6990f.zza(zzfffVar, zzfetVar, jSONObject);
        return zzgei.zzc(zza, zza2).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzehq
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzehv zzehvVar = zzehv.this;
                dcy dcyVar = zza2;
                dcy dcyVar2 = zza;
                zzfff zzfffVar2 = zzfffVar;
                zzfet zzfetVar2 = zzfetVar;
                JSONObject jSONObject2 = jSONObject;
                zzdsh zzdshVar = zzehvVar.f6988d;
                zzdiy zzdiyVar = (zzdiy) dcyVar.get();
                zzdoc zzdocVar = (zzdoc) dcyVar2.get();
                zzbce zzbceVar = zzbcn.zzck;
                zzbcl zzbclVar = edt.f15376a.f15379d;
                if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
                    dub.m(ti.f20033a.v, zzdshVar.zza(), zzdrv.RENDERING_WEBVIEW_CREATION_END.zza());
                }
                zzdiz zzd = zzehvVar.f6987c.zzd(new zzcsg(zzfffVar2, zzfetVar2, null), new zzdjk(zzdiyVar), new zzdhw(jSONObject2, zzdocVar));
                if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
                    ti.f20033a.v.getClass();
                    long currentTimeMillis = System.currentTimeMillis();
                    zzdshVar.zza().putLong(zzdrv.RENDERING_AD_COMPONENT_CREATION_END.zza(), currentTimeMillis);
                    zzdshVar.zza().putLong(zzdrv.RENDERING_CONFIGURE_WEBVIEW_START.zza(), currentTimeMillis);
                }
                zzd.zzh().zzb();
                zzd.zzi().zza(zzdocVar);
                zzd.zzg().zza(zzdiyVar.zzs());
                zzd.zzl().zza(zzehvVar.f6986b, zzdiyVar.zzq());
                if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
                    dub.m(ti.f20033a.v, zzdshVar.zza(), zzdrv.RENDERING_CONFIGURE_WEBVIEW_END.zza());
                }
                return zzd.zza();
            }
        }, this.f6989e);
    }

    @Override // com.google.android.gms.internal.ads.zzefb
    public final dcy zza(final zzfff zzfffVar, final zzfet zzfetVar) {
        dcy zza = this.f6985a.zza();
        zzgdp zzgdpVar = new zzgdp() { // from class: com.google.android.gms.internal.ads.zzehs
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                final zzehv zzehvVar = zzehv.this;
                zzfet zzfetVar2 = zzfetVar;
                final zzdoc zzdocVar = (zzdoc) obj;
                zzehvVar.getClass();
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("isNonagon", true);
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzim)).booleanValue() && dyd.aq()) {
                    jSONObject.put("skipDeepLinkValidation", true);
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("response", zzfetVar2.zzs.zzc);
                jSONObject2.put("sdk_params", jSONObject);
                return zzgei.zzn(zzdocVar.zzg("google.afma.nativeAds.preProcessJson", jSONObject2), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzehr
                    @Override // com.google.android.gms.internal.ads.zzgdp
                    public final dcy zza(Object obj2) {
                        JSONObject jSONObject3 = (JSONObject) obj2;
                        zzehv.this.f6985a.zzb(zzgei.zzh(zzdocVar));
                        if (jSONObject3.optBoolean("success")) {
                            return zzgei.zzh(jSONObject3.getJSONObject("json").getJSONArray("ads"));
                        }
                        throw new zzbnx("process json failed");
                    }
                }, zzehvVar.f6989e);
            }
        };
        zzges zzgesVar = this.f6989e;
        return zzgei.zzn(zzgei.zzn(zza, zzgdpVar, zzgesVar), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzeht
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                zzehv zzehvVar = zzehv.this;
                zzfff zzfffVar2 = zzfffVar;
                zzfet zzfetVar2 = zzfetVar;
                JSONArray jSONArray = (JSONArray) obj;
                zzehvVar.getClass();
                if (jSONArray.length() == 0) {
                    return zzgei.zzg(new zzdwn(3));
                }
                if (zzfffVar2.zza.zza.zzk <= 1) {
                    return zzgei.zzm(zzehvVar.g(zzfffVar2, zzfetVar2, jSONArray.getJSONObject(0)), new zzfwh() { // from class: com.google.android.gms.internal.ads.zzehu
                        @Override // com.google.android.gms.internal.ads.zzfwh
                        public final Object apply(Object obj2) {
                            return Collections.singletonList(zzgei.zzh((zzdit) obj2));
                        }
                    }, zzehvVar.f6989e);
                }
                int length = jSONArray.length();
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcl)).booleanValue()) {
                    zzehvVar.f6988d.zzc("nsl", String.valueOf(length));
                }
                zzehvVar.f6985a.zzc(Math.min(length, zzfffVar2.zza.zza.zzk));
                ArrayList arrayList = new ArrayList(zzfffVar2.zza.zza.zzk);
                for (int i = 0; i < zzfffVar2.zza.zza.zzk; i++) {
                    if (i < length) {
                        arrayList.add(zzehvVar.g(zzfffVar2, zzfetVar2, jSONArray.getJSONObject(i)));
                    } else {
                        arrayList.add(zzgei.zzg(new zzdwn(3)));
                    }
                }
                return zzgei.zzh(arrayList);
            }
        }, zzgesVar);
    }

    @Override // com.google.android.gms.internal.ads.zzefb
    public final boolean zzb(zzfff zzfffVar, zzfet zzfetVar) {
        zzfey zzfeyVar = zzfetVar.zzs;
        return (zzfeyVar == null || zzfeyVar.zzc == null) ? false : true;
    }
}
