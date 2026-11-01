package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import g.agd;
import g.akx;
import g.blv;
import g.edt;
import g.ti;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class zzeeq implements zzeer {
    public static final Object a(blv blvVar) {
        try {
            return blvVar.zza();
        } catch (RuntimeException e2) {
            ti.f20033a.f20034ab.zzv(e2, "omid exception");
            return null;
        }
    }

    public static final void b(Runnable runnable) {
        try {
            runnable.run();
        } catch (RuntimeException e2) {
            ti.f20033a.f20034ab.zzv(e2, "omid exception");
        }
    }

    public static zzfnb c(String str) {
        char c2;
        int hashCode = str.hashCode();
        if (hashCode == -382745961) {
            if (str.equals("htmlDisplay")) {
                c2 = 0;
            }
            c2 = 65535;
        } else if (hashCode != 112202875) {
            if (hashCode == 714893483 && str.equals("nativeDisplay")) {
                c2 = 1;
            }
            c2 = 65535;
        } else {
            if (str.equals(MediaFormat.KEY_VIDEO)) {
                c2 = 2;
            }
            c2 = 65535;
        }
        if (c2 == 0) {
            return zzfnb.HTML_DISPLAY;
        }
        if (c2 == 1) {
            return zzfnb.NATIVE_DISPLAY;
        }
        if (c2 != 2) {
            return null;
        }
        return zzfnb.VIDEO;
    }

    public static zzfne d(String str) {
        char c2;
        int hashCode = str.hashCode();
        if (hashCode == -1104128070) {
            if (str.equals("beginToRender")) {
                c2 = 0;
            }
            c2 = 65535;
        } else if (hashCode != 1318088141) {
            if (hashCode == 1988248512 && str.equals("onePixel")) {
                c2 = 2;
            }
            c2 = 65535;
        } else {
            if (str.equals("definedByJavascript")) {
                c2 = 1;
            }
            c2 = 65535;
        }
        return c2 != 0 ? c2 != 1 ? c2 != 2 ? zzfne.UNSPECIFIED : zzfne.ONE_PIXEL : zzfne.DEFINED_BY_JAVASCRIPT : zzfne.BEGIN_TO_RENDER;
    }

    public static zzfni e(String str) {
        return "native".equals(str) ? zzfni.NATIVE : "javascript".equals(str) ? zzfni.JAVASCRIPT : zzfni.NONE;
    }

    @Override // com.google.android.gms.internal.ads.zzeer
    public final zzeew zza(final String str, final WebView webView, String str2, String str3, final String str4, final zzeet zzeetVar, final zzees zzeesVar, final String str5) {
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfb)).booleanValue() || !zzfmu.zzb()) {
            return null;
        }
        final String str6 = "javascript";
        final String str7 = "Google";
        final String str8 = "";
        return (zzeew) a(new blv(str7, str, str6, zzeesVar, str4, webView, str5, str8, zzeetVar) { // from class: com.google.android.gms.internal.ads.zzeef
            public final /* synthetic */ String zzb;
            public final /* synthetic */ zzees zzd;
            public final /* synthetic */ String zze;
            public final /* synthetic */ WebView zzf;
            public final /* synthetic */ String zzg;
            public final /* synthetic */ zzeet zzi;
            public final /* synthetic */ String zza = "Google";
            public final /* synthetic */ String zzc = "javascript";
            public final /* synthetic */ String zzh = "";

            {
                this.zzb = str;
                this.zzd = zzeesVar;
                this.zze = str4;
                this.zzf = webView;
                this.zzg = str5;
                this.zzi = zzeetVar;
            }

            @Override // g.blv
            public final Object zza() {
                String str9 = this.zzb;
                zzees zzeesVar2 = this.zzd;
                String str10 = this.zze;
                WebView webView2 = this.zzf;
                String str11 = this.zzg;
                zzeet zzeetVar2 = this.zzi;
                zzfnj zza = zzfnj.zza("Google", str9);
                zzfni e2 = zzeeq.e("javascript");
                zzfnb c2 = zzeeq.c(zzeesVar2.toString());
                zzfni zzfniVar = zzfni.NONE;
                if (e2 == zzfniVar) {
                    agd.b("Omid html session error; Unable to parse impression owner: javascript");
                    return null;
                }
                if (c2 == null) {
                    agd.b("Omid html session error; Unable to parse creative type: ".concat(String.valueOf(zzeesVar2)));
                    return null;
                }
                zzfni e3 = zzeeq.e(str10);
                if (c2 == zzfnb.VIDEO && e3 == zzfniVar) {
                    agd.b("Omid html session error; Video events owner unknown for video creative: ".concat(String.valueOf(str10)));
                    return null;
                }
                zzfmy zzb = zzfmy.zzb(zza, webView2, str11, "");
                return new zzeew(zzfmw.zza(zzfmx.zza(c2, zzeeq.d(zzeetVar2.toString()), e2, e3, true), zzb), zzb);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeer
    public final zzeew zzb(final String str, final WebView webView, String str2, String str3, final String str4, final String str5, final zzeet zzeetVar, final zzees zzeesVar, final String str6) {
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfb)).booleanValue() || !zzfmu.zzb()) {
            return null;
        }
        final String str7 = "";
        final String str8 = "javascript";
        return (zzeew) a(new blv(str5, str, str8, str4, zzeesVar, webView, str6, str7, zzeetVar) { // from class: com.google.android.gms.internal.ads.zzeei
            public final /* synthetic */ String zza;
            public final /* synthetic */ String zzb;
            public final /* synthetic */ String zzd;
            public final /* synthetic */ zzees zze;
            public final /* synthetic */ WebView zzf;
            public final /* synthetic */ String zzg;
            public final /* synthetic */ zzeet zzi;
            public final /* synthetic */ String zzc = "javascript";
            public final /* synthetic */ String zzh = "";

            {
                this.zzd = str4;
                this.zze = zzeesVar;
                this.zzf = webView;
                this.zzg = str6;
                this.zzi = zzeetVar;
            }

            @Override // g.blv
            public final Object zza() {
                String str9 = this.zza;
                String str10 = this.zzb;
                String str11 = this.zzd;
                zzees zzeesVar2 = this.zze;
                WebView webView2 = this.zzf;
                String str12 = this.zzg;
                zzeet zzeetVar2 = this.zzi;
                zzfnj zza = zzfnj.zza(str9, str10);
                zzfni e2 = zzeeq.e("javascript");
                zzfni e3 = zzeeq.e(str11);
                zzfnb c2 = zzeeq.c(zzeesVar2.toString());
                zzfni zzfniVar = zzfni.NONE;
                if (e2 == zzfniVar) {
                    agd.b("Omid js session error; Unable to parse impression owner: javascript");
                    return null;
                }
                if (c2 == null) {
                    agd.b("Omid js session error; Unable to parse creative type: ".concat(String.valueOf(zzeesVar2)));
                    return null;
                }
                if (c2 == zzfnb.VIDEO && e3 == zzfniVar) {
                    agd.b("Omid js session error; Video events owner unknown for video creative: ".concat(String.valueOf(str11)));
                    return null;
                }
                zzfmy zzc = zzfmy.zzc(zza, webView2, str12, "");
                return new zzeew(zzfmw.zza(zzfmx.zza(c2, zzeeq.d(zzeetVar2.toString()), e2, e3, true), zzc), zzc);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeer
    public final zzfnh zze(final akx akxVar, final WebView webView, boolean z) {
        final boolean z2 = true;
        return (zzfnh) a(new blv(webView, z2) { // from class: com.google.android.gms.internal.ads.zzeen
            public final /* synthetic */ WebView zzb;

            @Override // g.blv
            public final Object zza() {
                akx akxVar2 = akx.this;
                return zzfnh.zza(zzfnj.zza("Google", akxVar2.buddyApkVersion + "." + akxVar2.clientJarVersion), this.zzb, true);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeer
    public final String zzf(Context context) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfb)).booleanValue()) {
            return (String) a(new blv() { // from class: com.google.android.gms.internal.ads.zzeel
                @Override // g.blv
                public final Object zza() {
                    return "a.1.4.14-google_20240908";
                }
            });
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzeer
    public final void zzg(final zzfmw zzfmwVar, final View view) {
        b(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeee
            @Override // java.lang.Runnable
            public final void run() {
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfb)).booleanValue() && zzfmu.zzb()) {
                    zzfmw.this.zzb(view, zzfnd.zzc, "Ad overlay");
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeer
    public final void zzh(final zzfnh zzfnhVar, final View view) {
        b(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeek
            @Override // java.lang.Runnable
            public final void run() {
                zzfnh.this.zze(view, zzfnd.zzc, "Ad overlay");
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeer
    public final void zzi(final zzfmw zzfmwVar) {
        b(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeeo
            @Override // java.lang.Runnable
            public final void run() {
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfb)).booleanValue() && zzfmu.zzb()) {
                    zzfmw.this.zzc();
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeer
    public final void zzj(final zzfmw zzfmwVar, final View view) {
        b(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeeg
            @Override // java.lang.Runnable
            public final void run() {
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfb)).booleanValue() && zzfmu.zzb()) {
                    zzfmw.this.zzd(view);
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeer
    public final void zzk(final zzfmw zzfmwVar) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfb)).booleanValue() && zzfmu.zzb()) {
            Objects.requireNonNull(zzfmwVar);
            b(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeeh
                @Override // java.lang.Runnable
                public final void run() {
                    zzfmw.this.zze();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeer
    public final boolean zzl(final Context context) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfb)).booleanValue()) {
            Boolean bool = (Boolean) a(new blv() { // from class: com.google.android.gms.internal.ads.zzeej
                @Override // g.blv
                public final Object zza() {
                    if (zzfmu.zzb()) {
                        return Boolean.TRUE;
                    }
                    zzfmu.zza(context);
                    return Boolean.valueOf(zzfmu.zzb());
                }
            });
            return bool != null && bool.booleanValue();
        }
        agd.b("Omid flag is disabled");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzeer
    public final void zzm(final zzfnh zzfnhVar, final zzcfz zzcfzVar) {
        b(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeem
            @Override // java.lang.Runnable
            public final void run() {
                zzfnh.this.zzf(zzcfzVar);
            }
        });
    }
}
