package com.google.android.gms.internal.ads;

import android.content.Context;
import g.cui;
import g.dcy;
import g.edt;
import g.eno;
import g.ti;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzdmy {

    /* renamed from: a, reason: collision with root package name */
    public final zzedp f6206a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdoi f6207b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f6208c;

    /* renamed from: d, reason: collision with root package name */
    public final zzffo f6209d;

    /* renamed from: e, reason: collision with root package name */
    public final zzdsm f6210e;

    /* renamed from: f, reason: collision with root package name */
    public final Executor f6211f;

    /* renamed from: g, reason: collision with root package name */
    public final zzdpn f6212g;
    public final zzflr h;

    public zzdmy(zzffo zzffoVar, Executor executor, zzdpn zzdpnVar, Context context, zzdsm zzdsmVar, zzflr zzflrVar, zzedp zzedpVar, zzdoi zzdoiVar) {
        this.f6209d = zzffoVar;
        this.f6211f = executor;
        this.f6212g = zzdpnVar;
        this.f6208c = context;
        this.f6210e = zzdsmVar;
        this.h = zzflrVar;
        this.f6206a = zzedpVar;
        this.f6207b = zzdoiVar;
    }

    public static final void i(zzcfk zzcfkVar) {
        zzcfkVar.zzag("/videoClicked", zzbjq.zzh);
        zzcfkVar.zzN().zzH(true);
        zzcfkVar.zzag("/getNativeAdViewSignals", zzbjq.zzs);
        zzcfkVar.zzag("/getNativeClickMeta", zzbjq.zzt);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void j(zzcfk zzcfkVar) {
        i(zzcfkVar);
        zzcfkVar.zzag("/video", zzbjq.zzl);
        zzcfkVar.zzag("/videoMeta", zzbjq.zzm);
        zzcfkVar.zzag("/precache", new zzcds());
        zzcfkVar.zzag("/delayPageLoaded", zzbjq.zzp);
        zzcfkVar.zzag("/instrument", zzbjq.zzn);
        zzcfkVar.zzag("/log", zzbjq.zzg);
        zzcfkVar.zzag("/click", new zzbip(null, 0 == true ? 1 : 0));
        if (this.f6209d.zzb != null) {
            zzcfkVar.zzN().zzF(true);
            zzcfkVar.zzag("/open", new zzbkd(null, null, null, null, null));
        } else {
            zzcfkVar.zzN().zzF(false);
        }
        if (ti.f20033a.f20039f.zzp(zzcfkVar.getContext())) {
            Map hashMap = new HashMap();
            if (zzcfkVar.zzD() != null) {
                hashMap = zzcfkVar.zzD().zzaw;
            }
            zzcfkVar.zzag("/logScionEvent", new zzbjx(zzcfkVar.getContext(), hashMap));
        }
    }

    public final dcy zza(final JSONObject jSONObject) {
        dcy zzh = zzgei.zzh(null);
        zzgdp zzgdpVar = new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdmp
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                zzdmy zzdmyVar = zzdmy.this;
                zzcfk zza = zzdmyVar.f6212g.zza(eno.zzc(), null, null);
                final zzcan zza2 = zzcan.zza((Object) zza);
                zzdmyVar.j(zza);
                zza.zzN().zzI(new zzchb() { // from class: com.google.android.gms.internal.ads.zzdms
                    @Override // com.google.android.gms.internal.ads.zzchb
                    public final void zza() {
                        zzcan.this.zzb();
                    }
                });
                zza.loadUrl((String) edt.f15376a.f15379d.zza(zzbcn.zzdQ));
                return zza2;
            }
        };
        Executor executor = this.f6211f;
        return zzgei.zzn(zzgei.zzn(zzh, zzgdpVar, executor), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdmo
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                final zzdmy zzdmyVar = zzdmy.this;
                JSONObject jSONObject2 = jSONObject;
                final zzcfk zzcfkVar = (zzcfk) obj;
                zzbmb zzbmbVar = zzdmyVar.f6209d.zzb;
                final zzcan zza = zzcan.zza((Object) zzcfkVar);
                if (zzbmbVar != null) {
                    zzcfkVar.zzaj(zzche.zzd());
                } else {
                    zzcfkVar.zzaj(zzche.zze());
                }
                zzcfkVar.zzN().zzB(new zzcha() { // from class: com.google.android.gms.internal.ads.zzdmq
                    @Override // com.google.android.gms.internal.ads.zzcha
                    public final void zza(boolean z, int i, String str, String str2) {
                        zzdmy zzdmyVar2 = zzdmy.this;
                        zzcfk zzcfkVar2 = zzcfkVar;
                        zzcan zzcanVar = zza;
                        zzdmyVar2.getClass();
                        zzffo zzffoVar = zzdmyVar2.f6209d;
                        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdY)).booleanValue()) {
                            if (zzffoVar.zza != null && zzcfkVar2.zzq() != null) {
                                zzcfkVar2.zzq().zzs(zzffoVar.zza);
                            }
                            zzcanVar.zzb();
                            return;
                        }
                        if (z) {
                            if (zzffoVar.zza != null && zzcfkVar2.zzq() != null) {
                                zzcfkVar2.zzq().zzs(zzffoVar.zza);
                            }
                            zzcanVar.zzb();
                            return;
                        }
                        zzcanVar.zzd(new zzeiz(1, "Native Video WebView failed to load. Error code: " + i + ", Description: " + str + ", Failing URL: " + str2));
                    }
                });
                zzcfkVar.zzl("google.afma.nativeAds.renderVideo", jSONObject2);
                return zza;
            }
        }, executor);
    }

    public final dcy zzb(final String str, final String str2, final zzfet zzfetVar, final zzfew zzfewVar, final eno enoVar) {
        return zzgei.zzn(zzgei.zzh(null), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdmn
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                final zzdmy zzdmyVar = zzdmy.this;
                eno enoVar2 = enoVar;
                zzfet zzfetVar2 = zzfetVar;
                zzfew zzfewVar2 = zzfewVar;
                String str3 = str;
                String str4 = str2;
                final zzcfk zza = zzdmyVar.f6212g.zza(enoVar2, zzfetVar2, zzfewVar2);
                final zzcan zza2 = zzcan.zza((Object) zza);
                if (zzdmyVar.f6209d.zzb != null) {
                    zzdmyVar.j(zza);
                    zza.zzaj(zzche.zzd());
                } else {
                    zzdof zzb = zzdmyVar.f6207b.zzb();
                    zza.zzN().zzU(zzb, zzb, zzb, zzb, zzb, false, null, new cui(zzdmyVar.f6208c, null), null, null, zzdmyVar.f6206a, zzdmyVar.h, zzdmyVar.f6210e, null, zzb, null, null, null, null);
                    zzdmy.i(zza);
                }
                zza.zzN().zzB(new zzcha() { // from class: com.google.android.gms.internal.ads.zzdmr
                    @Override // com.google.android.gms.internal.ads.zzcha
                    public final void zza(boolean z, int i, String str5, String str6) {
                        zzdmy zzdmyVar2 = zzdmy.this;
                        zzcfk zzcfkVar = zza;
                        zzcan zzcanVar = zza2;
                        zzffo zzffoVar = zzdmyVar2.f6209d;
                        if (z) {
                            if (zzffoVar.zza != null && zzcfkVar.zzq() != null) {
                                zzcfkVar.zzq().zzs(zzffoVar.zza);
                            }
                            zzcanVar.zzb();
                            return;
                        }
                        zzcanVar.zzd(new zzeiz(1, "Html video Web View failed to load. Error code: " + i + ", Description: " + str5 + ", Failing URL: " + str6));
                    }
                });
                zza.zzae(str3, str4, null);
                return zza2;
            }
        }, this.f6211f);
    }
}
