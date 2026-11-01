package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.TrafficStats;
import android.os.StrictMode;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import g.akx;
import g.fjn;
import g.gfo;
import g.ti;

/* loaded from: classes3.dex */
public final class zzcfx {
    public static final zzcfk zza(final Context context, final zzche zzcheVar, final String str, final boolean z, final boolean z2, final zzavc zzavcVar, final zzbdu zzbduVar, final akx akxVar, zzbdc zzbdcVar, final fjn fjnVar, final gfo gfoVar, final zzbbl zzbblVar, final zzfet zzfetVar, final zzfew zzfewVar, final zzeea zzeeaVar, final zzffs zzffsVar) throws zzcfw {
        zzbcn.zza(context);
        try {
            final zzbdc zzbdcVar2 = null;
            zzfxg zzfxgVar = new zzfxg(context, zzcheVar, str, z, z2, zzavcVar, zzbduVar, akxVar, zzbdcVar2, fjnVar, gfoVar, zzbblVar, zzfetVar, zzfewVar, zzffsVar, zzeeaVar) { // from class: com.google.android.gms.internal.ads.zzcft
                public final /* synthetic */ Context zza;
                public final /* synthetic */ zzche zzb;
                public final /* synthetic */ String zzc;
                public final /* synthetic */ boolean zzd;
                public final /* synthetic */ boolean zze;
                public final /* synthetic */ zzavc zzf;
                public final /* synthetic */ zzbdu zzg;
                public final /* synthetic */ akx zzh;
                public final /* synthetic */ fjn zzi;
                public final /* synthetic */ gfo zzj;
                public final /* synthetic */ zzbbl zzk;
                public final /* synthetic */ zzfet zzl;
                public final /* synthetic */ zzfew zzm;
                public final /* synthetic */ zzffs zzn;
                public final /* synthetic */ zzeea zzo;

                {
                    this.zzi = fjnVar;
                    this.zzj = gfoVar;
                    this.zzk = zzbblVar;
                    this.zzl = zzfetVar;
                    this.zzm = zzfewVar;
                    this.zzn = zzffsVar;
                    this.zzo = zzeeaVar;
                }

                @Override // com.google.android.gms.internal.ads.zzfxg
                public final Object zza() {
                    zzche zzcheVar2 = this.zzb;
                    String str2 = this.zzc;
                    boolean z3 = this.zzd;
                    zzbbl zzbblVar2 = this.zzk;
                    boolean z4 = this.zze;
                    zzavc zzavcVar2 = this.zzf;
                    zzfet zzfetVar2 = this.zzl;
                    zzbdu zzbduVar2 = this.zzg;
                    fjn fjnVar2 = this.zzi;
                    zzfew zzfewVar2 = this.zzm;
                    Context context2 = this.zza;
                    akx akxVar2 = this.zzh;
                    gfo gfoVar2 = this.zzj;
                    zzffs zzffsVar2 = this.zzn;
                    zzeea zzeeaVar2 = this.zzo;
                    try {
                        TrafficStats.setThreadStatsTag(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SAVED_HOST_TIME);
                        int i = v.f3986a;
                        zzcgc zzcgcVar = new zzcgc(new v(new zzchd(context2), zzcheVar2, str2, z3, zzavcVar2, zzbduVar2, akxVar2, fjnVar2, gfoVar2, zzbblVar2, zzfetVar2, zzfewVar2, zzffsVar2));
                        ti.f20033a.k.getClass();
                        zzcgcVar.setWebViewClient(new zzcgt(zzcgcVar, zzbblVar2, z4, zzeeaVar2));
                        zzcgcVar.setWebChromeClient(new zzcfj(zzcgcVar));
                        return zzcgcVar;
                    } finally {
                        TrafficStats.clearThreadStatsTag();
                    }
                }
            };
            StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
            try {
                StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
                Object zza = zzfxgVar.zza();
                StrictMode.setThreadPolicy(threadPolicy);
                return (zzcfk) zza;
            } catch (Throwable th) {
                StrictMode.setThreadPolicy(threadPolicy);
                throw th;
            }
        } catch (Throwable th2) {
            throw new zzcfw("Webview initialization failed.", th2);
        }
    }
}
