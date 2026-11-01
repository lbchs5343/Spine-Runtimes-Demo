package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import g.agd;
import g.cmo;
import g.dcy;
import g.edt;
import g.gil;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzeuc implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final gil f7546a;

    /* renamed from: b, reason: collision with root package name */
    public final zzges f7547b;

    /* renamed from: c, reason: collision with root package name */
    public final zzffo f7548c;

    /* renamed from: d, reason: collision with root package name */
    public final PackageInfo f7549d;

    public zzeuc(zzges zzgesVar, zzffo zzffoVar, PackageInfo packageInfo, gil gilVar) {
        this.f7547b = zzgesVar;
        this.f7548c = zzffoVar;
        this.f7549d = packageInfo;
        this.f7546a = gilVar;
    }

    public static /* synthetic */ zzeud zzc(final zzeuc zzeucVar) {
        final ArrayList arrayList = zzeucVar.f7548c.zzg;
        return arrayList == null ? new zzeud() { // from class: com.google.android.gms.internal.ads.zzetz
            @Override // com.google.android.gms.internal.ads.zzevy
            public final void zzj(Object obj) {
            }
        } : arrayList.isEmpty() ? new zzeud() { // from class: com.google.android.gms.internal.ads.zzeua
            @Override // com.google.android.gms.internal.ads.zzevy
            public final void zzj(Object obj) {
                ((Bundle) obj).putInt("native_version", 0);
            }
        } : new zzeud() { // from class: com.google.android.gms.internal.ads.zzeub
            @Override // com.google.android.gms.internal.ads.zzevy
            public final void zzj(Object obj) {
                int i;
                String str;
                JSONArray optJSONArray;
                zzeuc zzeucVar2 = zzeuc.this;
                ArrayList<String> arrayList2 = arrayList;
                Bundle bundle = (Bundle) obj;
                zzeucVar2.getClass();
                bundle.putInt("native_version", 3);
                bundle.putStringArrayList("native_templates", arrayList2);
                bundle.putStringArrayList("native_custom_templates", zzeucVar2.f7548c.zzh);
                if (zzeucVar2.f7548c.zzi.zza > 3) {
                    bundle.putBoolean("enable_native_media_orientation", true);
                    int i2 = zzeucVar2.f7548c.zzi.zzh;
                    String str2 = i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? MediationConfigUserInfoForSegment.GENDER_UNKNOWN : "square" : "portrait" : "landscape" : "any";
                    if (!MediationConfigUserInfoForSegment.GENDER_UNKNOWN.equals(str2)) {
                        bundle.putString("native_media_orientation", str2);
                    }
                }
                int i3 = zzeucVar2.f7548c.zzi.zzc;
                String str3 = i3 != 0 ? i3 != 1 ? i3 != 2 ? MediationConfigUserInfoForSegment.GENDER_UNKNOWN : "landscape" : "portrait" : "any";
                if (!MediationConfigUserInfoForSegment.GENDER_UNKNOWN.equals(str3)) {
                    bundle.putString("native_image_orientation", str3);
                }
                bundle.putBoolean("native_multiple_images", zzeucVar2.f7548c.zzi.zzd);
                bundle.putBoolean("use_custom_mute", zzeucVar2.f7548c.zzi.zzg);
                zzbfn zzbfnVar = zzeucVar2.f7548c.zzi;
                if (zzbfnVar.zzi != 0) {
                    bundle.putBoolean("sccg_tap", zzbfnVar.zzj);
                    bundle.putInt("sccg_dir", zzeucVar2.f7548c.zzi.zzi);
                }
                PackageInfo packageInfo = zzeucVar2.f7549d;
                int i4 = packageInfo == null ? 0 : packageInfo.versionCode;
                cmo cmoVar = (cmo) zzeucVar2.f7546a;
                cmoVar.aj();
                synchronized (cmoVar.k) {
                    i = cmoVar.ad;
                }
                if (i4 > i) {
                    ((cmo) zzeucVar2.f7546a).ai();
                    ((cmo) zzeucVar2.f7546a).ae(i4);
                }
                JSONObject at = ((cmo) zzeucVar2.f7546a).at();
                String str4 = null;
                if (at != null && (optJSONArray = at.optJSONArray(zzeucVar2.f7548c.zzf)) != null) {
                    str4 = optJSONArray.toString();
                }
                if (!TextUtils.isEmpty(str4)) {
                    bundle.putString("native_advanced_settings", str4);
                }
                int i5 = zzeucVar2.f7548c.zzk;
                if (i5 > 1) {
                    bundle.putInt("max_num_ads", i5);
                }
                zzbmb zzbmbVar = zzeucVar2.f7548c.zzb;
                if (zzbmbVar != null) {
                    if (TextUtils.isEmpty(zzbmbVar.zzc)) {
                        if (zzbmbVar.zza >= 2) {
                            int i6 = zzbmbVar.zzd;
                            str = i6 != 2 ? i6 != 3 ? "l" : "p" : "l";
                        } else {
                            int i7 = zzbmbVar.zzb;
                            if (i7 != 1) {
                                if (i7 != 2) {
                                    agd.d("Instream ad video aspect ratio " + i7 + " is wrong.");
                                } else {
                                    str = "p";
                                }
                            }
                            str = "l";
                        }
                        bundle.putString("ia_var", str);
                    } else {
                        bundle.putString("ad_tag", zzbmbVar.zzc);
                    }
                    bundle.putBoolean("instr", true);
                }
                if (zzeucVar2.f7548c.zza() != null) {
                    bundle.putBoolean("has_delayed_banner_listener", true);
                }
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlA)).booleanValue()) {
                    if (zzeucVar2.f7548c.zzi.zzf != null) {
                        Bundle bundle2 = new Bundle();
                        bundle2.putBoolean("startMuted", zzeucVar2.f7548c.zzi.zzf.zza);
                        bundle2.putBoolean("clickToExpandRequested", zzeucVar2.f7548c.zzi.zzf.zzc);
                        bundle2.putBoolean("customControlsRequested", zzeucVar2.f7548c.zzi.zzf.zzb);
                        bundle.putBundle(MediaFormat.KEY_VIDEO, bundle2);
                    }
                    bundle.putBoolean("disable_image_loading", zzeucVar2.f7548c.zzi.zzb);
                    bundle.putInt("preferred_ad_choices_position", zzeucVar2.f7548c.zzi.zze);
                }
            }
        };
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 26;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return this.f7547b.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzety
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeuc.zzc(zzeuc.this);
            }
        });
    }
}
