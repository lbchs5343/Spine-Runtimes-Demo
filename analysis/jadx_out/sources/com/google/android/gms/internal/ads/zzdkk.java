package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.view.View;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.agd;
import g.eno;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzdkk {

    /* renamed from: a, reason: collision with root package name */
    public final zzdjg f6132a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdpn f6133b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdoc f6134c;

    /* renamed from: d, reason: collision with root package name */
    public final zzcoi f6135d;

    public zzdkk(zzdpn zzdpnVar, zzdoc zzdocVar, zzcoi zzcoiVar, zzdjg zzdjgVar) {
        this.f6133b = zzdpnVar;
        this.f6134c = zzdocVar;
        this.f6135d = zzcoiVar;
        this.f6132a = zzdjgVar;
    }

    public final View zza() throws zzcfw {
        zzcfk zza = this.f6133b.zza(eno.zzc(), null, null);
        zza.zzF().setVisibility(8);
        zza.zzag("/sendMessageToSdk", new zzbjr() { // from class: com.google.android.gms.internal.ads.zzdkf
            @Override // com.google.android.gms.internal.ads.zzbjr
            public final void zza(Object obj, Map map) {
                zzdkk.this.f6134c.zzj("sendMessageToNativeJs", map);
            }
        });
        zza.zzag("/adMuted", new zzbjr() { // from class: com.google.android.gms.internal.ads.zzdkg
            @Override // com.google.android.gms.internal.ads.zzbjr
            public final void zza(Object obj, Map map) {
                zzdkk.this.f6132a.zzg();
            }
        });
        WeakReference weakReference = new WeakReference(zza);
        zzbjr zzbjrVar = new zzbjr() { // from class: com.google.android.gms.internal.ads.zzdkh
            @Override // com.google.android.gms.internal.ads.zzbjr
            public final void zza(Object obj, final Map map) {
                zzcfk zzcfkVar = (zzcfk) obj;
                zzchc zzN = zzcfkVar.zzN();
                final zzdkk zzdkkVar = zzdkk.this;
                zzN.zzB(new zzcha() { // from class: com.google.android.gms.internal.ads.zzdke
                    @Override // com.google.android.gms.internal.ads.zzcha
                    public final void zza(boolean z, int i, String str, String str2) {
                        zzdkk zzdkkVar2 = zzdkk.this;
                        Map map2 = map;
                        zzdkkVar2.getClass();
                        HashMap hashMap = new HashMap();
                        hashMap.put("messageType", "htmlLoaded");
                        hashMap.put(TTDownloadField.TT_ID, (String) map2.get(TTDownloadField.TT_ID));
                        zzdkkVar2.f6134c.zzj("sendMessageToNativeJs", hashMap);
                    }
                });
                String str = (String) map.get("overlayHtml");
                String str2 = (String) map.get("baseUrl");
                if (TextUtils.isEmpty(str2)) {
                    zzcfkVar.loadData(str, "text/html", "UTF-8");
                } else {
                    zzcfkVar.loadDataWithBaseURL(str2, str, "text/html", "UTF-8", null);
                }
            }
        };
        zzdoc zzdocVar = this.f6134c;
        zzdocVar.zzm(weakReference, "/loadHtml", zzbjrVar);
        zzdocVar.zzm(new WeakReference(zza), "/showOverlay", new zzbjr() { // from class: com.google.android.gms.internal.ads.zzdki
            @Override // com.google.android.gms.internal.ads.zzbjr
            public final void zza(Object obj, Map map) {
                zzdkk zzdkkVar = zzdkk.this;
                zzdkkVar.getClass();
                agd.k("Showing native ads overlay.");
                ((zzcfk) obj).zzF().setVisibility(0);
                zzdkkVar.f6135d.zze(true);
            }
        });
        zzdocVar.zzm(new WeakReference(zza), "/hideOverlay", new zzbjr() { // from class: com.google.android.gms.internal.ads.zzdkj
            @Override // com.google.android.gms.internal.ads.zzbjr
            public final void zza(Object obj, Map map) {
                zzdkk zzdkkVar = zzdkk.this;
                zzdkkVar.getClass();
                agd.k("Hiding native ads overlay.");
                ((zzcfk) obj).zzF().setVisibility(8);
                zzdkkVar.f6135d.zze(false);
            }
        });
        return zza.zzF();
    }
}
