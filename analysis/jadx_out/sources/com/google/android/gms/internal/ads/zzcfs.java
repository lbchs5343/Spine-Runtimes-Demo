package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.net.TrafficStats;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toolbar;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import g.agd;
import g.akx;
import g.aqj;
import g.bli;
import g.bwj;
import g.bzn;
import g.cui;
import g.cwg;
import g.dzz;
import g.edt;
import g.esy;
import g.etg;
import g.evo;
import g.fim;
import g.gkr;
import g.goi;
import g.gst;
import g.gzm;
import g.lp;
import g.ti;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
public class zzcfs extends WebViewClient implements zzchc {
    public static final /* synthetic */ int zzb = 0;

    /* renamed from: a, reason: collision with root package name */
    public zzchb f5247a;

    /* renamed from: ab, reason: collision with root package name */
    public cui f5248ab;
    public boolean ac;
    public boolean ad;
    public boolean ae;
    public fim af;

    /* renamed from: c, reason: collision with root package name */
    public boolean f5250c;

    /* renamed from: d, reason: collision with root package name */
    public zzcha f5251d;

    /* renamed from: e, reason: collision with root package name */
    public zzbyh f5252e;

    /* renamed from: f, reason: collision with root package name */
    public zzbsj f5253f;
    public zzbij i;
    public boolean j;
    public boolean l;
    public zzdel m;
    public gst n;
    public bzn o;
    public boolean p;
    public final zzeea r;
    public evo s;
    public boolean t;
    public final zzcfk u;
    public boolean v;
    public int x;
    public zzbih y;
    public final zzbbl z;
    public final HashMap k = new HashMap();
    public final Object q = new Object();
    public int aa = 0;

    /* renamed from: g, reason: collision with root package name */
    public String f5254g = "";

    /* renamed from: b, reason: collision with root package name */
    public String f5249b = "";
    public zzbse w = null;
    public final HashSet h = new HashSet(Arrays.asList(((String) edt.f15376a.f15379d.zza(zzbcn.zzfD)).split(",")));

    public zzcfs(zzcfk zzcfkVar, zzbbl zzbblVar, boolean z, zzbsj zzbsjVar, zzbse zzbseVar, zzeea zzeeaVar) {
        this.z = zzbblVar;
        this.u = zzcfkVar;
        this.ad = z;
        this.f5253f = zzbsjVar;
        this.r = zzeeaVar;
    }

    public static final boolean ag(boolean z, zzcfk zzcfkVar) {
        return (!z || zzcfkVar.zzO().zzi() || zzcfkVar.zzU().equals("interstitial_mb")) ? false : true;
    }

    public static WebResourceResponse ah() {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzaR)).booleanValue()) {
            return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    public final void ai(final View view, final zzbyh zzbyhVar, final int i) {
        if (!zzbyhVar.zzi() || i <= 0) {
            return;
        }
        zzbyhVar.zzg(view);
        if (zzbyhVar.zzi()) {
            esy.f16117a.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfl
                @Override // java.lang.Runnable
                public final void run() {
                    zzcfs.this.ai(view, zzbyhVar, i - 1);
                }
            }, 100L);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b9 A[Catch: NoClassDefFoundError -> 0x0020, Exception -> 0x0023, TRY_ENTER, TryCatch #12 {Exception -> 0x0023, NoClassDefFoundError -> 0x0020, blocks: (B:3:0x000e, B:5:0x0019, B:6:0x0026, B:8:0x0036, B:11:0x003d, B:13:0x0049, B:15:0x0065, B:17:0x007e, B:19:0x0095, B:20:0x0098, B:21:0x009b, B:24:0x00b9, B:26:0x00cd, B:29:0x00e0, B:47:0x01b5, B:48:0x016a, B:51:0x029e, B:53:0x02ae, B:55:0x02b4, B:57:0x02c2, B:72:0x0226, B:73:0x024f, B:66:0x01fe, B:68:0x0145, B:90:0x00d7, B:91:0x0250, B:93:0x025a, B:95:0x0260, B:97:0x0293), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x029e A[Catch: NoClassDefFoundError -> 0x0020, Exception -> 0x0023, TryCatch #12 {Exception -> 0x0023, NoClassDefFoundError -> 0x0020, blocks: (B:3:0x000e, B:5:0x0019, B:6:0x0026, B:8:0x0036, B:11:0x003d, B:13:0x0049, B:15:0x0065, B:17:0x007e, B:19:0x0095, B:20:0x0098, B:21:0x009b, B:24:0x00b9, B:26:0x00cd, B:29:0x00e0, B:47:0x01b5, B:48:0x016a, B:51:0x029e, B:53:0x02ae, B:55:0x02b4, B:57:0x02c2, B:72:0x0226, B:73:0x024f, B:66:0x01fe, B:68:0x0145, B:90:0x00d7, B:91:0x0250, B:93:0x025a, B:95:0x0260, B:97:0x0293), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x02b4 A[Catch: NoClassDefFoundError -> 0x0020, Exception -> 0x0023, TryCatch #12 {Exception -> 0x0023, NoClassDefFoundError -> 0x0020, blocks: (B:3:0x000e, B:5:0x0019, B:6:0x0026, B:8:0x0036, B:11:0x003d, B:13:0x0049, B:15:0x0065, B:17:0x007e, B:19:0x0095, B:20:0x0098, B:21:0x009b, B:24:0x00b9, B:26:0x00cd, B:29:0x00e0, B:47:0x01b5, B:48:0x016a, B:51:0x029e, B:53:0x02ae, B:55:0x02b4, B:57:0x02c2, B:72:0x0226, B:73:0x024f, B:66:0x01fe, B:68:0x0145, B:90:0x00d7, B:91:0x0250, B:93:0x025a, B:95:0x0260, B:97:0x0293), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01f3 A[Catch: all -> 0x01a9, TryCatch #5 {all -> 0x01a9, blocks: (B:42:0x018e, B:44:0x01a0, B:46:0x01ab, B:62:0x01e1, B:64:0x01f3, B:65:0x01fa), top: B:28:0x00e0 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0250 A[Catch: NoClassDefFoundError -> 0x0020, Exception -> 0x0023, TryCatch #12 {Exception -> 0x0023, NoClassDefFoundError -> 0x0020, blocks: (B:3:0x000e, B:5:0x0019, B:6:0x0026, B:8:0x0036, B:11:0x003d, B:13:0x0049, B:15:0x0065, B:17:0x007e, B:19:0x0095, B:20:0x0098, B:21:0x009b, B:24:0x00b9, B:26:0x00cd, B:29:0x00e0, B:47:0x01b5, B:48:0x016a, B:51:0x029e, B:53:0x02ae, B:55:0x02b4, B:57:0x02c2, B:72:0x0226, B:73:0x024f, B:66:0x01fe, B:68:0x0145, B:90:0x00d7, B:91:0x0250, B:93:0x025a, B:95:0x0260, B:97:0x0293), top: B:2:0x000e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final WebResourceResponse aj(String str, Map map) {
        WebResourceResponse webResourceResponse;
        int i;
        zzbce zzbceVar;
        zzbcl zzbclVar;
        InputStream inputStream;
        InputStream zzc;
        final boolean z;
        final boolean z2;
        final boolean z3;
        String str2;
        zzcfk zzcfkVar = this.u;
        try {
            Map hashMap = new HashMap();
            if (zzcfkVar.zzD() != null) {
                hashMap = zzcfkVar.zzD().zzaw;
            }
            String zzc2 = zzbyx.zzc(str, zzcfkVar.getContext(), this.j, hashMap);
            if (!zzc2.equals(str)) {
                return ak(zzc2, map);
            }
            zzbax zza = zzbax.zza(Uri.parse(str));
            if (zza != null) {
                HashMap hashMap2 = new HashMap();
                hashMap2.put("Access-Control-Allow-Origin", "*");
                Uri parse = Uri.parse(str);
                if (parse.getQueryParameterNames().contains("range")) {
                    List zze = zzfxd.zzb(zzfwf.zzc('-')).zze(parse.getQueryParameter("range"));
                    if (zze.size() == 2) {
                        int parseInt = Integer.parseInt((String) zze.get(0));
                        int parseInt2 = Integer.parseInt((String) zze.get(1)) + 1;
                        if (parseInt > 0) {
                            zza.zzh = parseInt;
                        }
                        i = parseInt2 - parseInt;
                        zzbceVar = zzbcn.zzep;
                        edt edtVar = edt.f15376a;
                        zzbclVar = edtVar.f15379d;
                        zzbcl zzbclVar2 = edtVar.f15379d;
                        webResourceResponse = null;
                        if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
                            zzbau zzb2 = ti.f20033a.t.zzb(zza);
                            if (zzb2 == null || !zzb2.zze()) {
                                inputStream = null;
                                if (inputStream != null) {
                                    return new WebResourceResponse("", "", 200, "OK", hashMap2, inputStream);
                                }
                            } else {
                                hashMap2.put("X-Afma-Gcache-HasAdditionalMetadataFromReadV2", Boolean.toString(zzb2.zzd()));
                                hashMap2.put("X-Afma-Gcache-IsGcacheHit", Boolean.toString(zzb2.zzg()));
                                hashMap2.put("X-Afma-Gcache-IsDownloaded", Boolean.toString(zzb2.zzf()));
                                hashMap2.put("X-Afma-Gcache-CachedBytes", Long.toString(zzb2.zza()));
                                zzc = zzb2.zzc();
                                if (i != -1) {
                                    zzc = zzgce.zza(zzc, i);
                                }
                            }
                        } else {
                            zza.zzi = zzfxf.zzc(zzcfkVar.zzr());
                            zza.zzj = zzcfkVar.zzf();
                            try {
                                long longValue = (zza.zzg ? (Long) zzbclVar2.zza(zzbcn.zzer) : (Long) zzbclVar2.zza(zzbcn.zzeq)).longValue();
                                ti tiVar = ti.f20033a;
                                tiVar.v.getClass();
                                long elapsedRealtime = SystemClock.elapsedRealtime();
                                Future zza2 = zzbbi.zza(zzcfkVar.getContext(), zza);
                                try {
                                    zzbbj zzbbjVar = (zzbbj) zza2.get(longValue, TimeUnit.MILLISECONDS);
                                    try {
                                        try {
                                            hashMap2.put("X-Afma-Gcache-HasAdditionalMetadataFromReadV2", Boolean.toString(zzbbjVar.zzd()));
                                            hashMap2.put("X-Afma-Gcache-IsGcacheHit", Boolean.toString(zzbbjVar.zzf()));
                                            hashMap2.put("X-Afma-Gcache-IsDownloaded", Boolean.toString(zzbbjVar.zze()));
                                            hashMap2.put("X-Afma-Gcache-CachedBytes", Long.toString(zzbbjVar.zza()));
                                            zzc = zzbbjVar.zzc();
                                            if (i != -1) {
                                                try {
                                                    zzc = zzgce.zza(zzc, i);
                                                } catch (InterruptedException e2) {
                                                    e = e2;
                                                    z3 = true;
                                                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzeu)).booleanValue()) {
                                                        ti.f20033a.f20034ab.zzw(e, "AdWebViewClient.interceptRequest.gcache");
                                                    }
                                                    zza2.cancel(true);
                                                    Thread.currentThread().interrupt();
                                                    ti.f20033a.v.getClass();
                                                    final long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
                                                    esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfo
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            zzcfs zzcfsVar = zzcfs.this;
                                                            zzcfsVar.u.zzv(z3, elapsedRealtime2);
                                                        }
                                                    });
                                                    str2 = "Cache connection took " + elapsedRealtime2 + "ms";
                                                    agd.e(str2);
                                                    inputStream = zzc;
                                                    if (inputStream != null) {
                                                    }
                                                    if (dzz.g()) {
                                                    }
                                                } catch (ExecutionException e3) {
                                                    e = e3;
                                                    z2 = true;
                                                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzeu)).booleanValue()) {
                                                    }
                                                    zza2.cancel(true);
                                                    ti.f20033a.v.getClass();
                                                    final long elapsedRealtime3 = SystemClock.elapsedRealtime() - elapsedRealtime;
                                                    esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfo
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            zzcfs zzcfsVar = zzcfs.this;
                                                            zzcfsVar.u.zzv(z2, elapsedRealtime3);
                                                        }
                                                    });
                                                    str2 = "Cache connection took " + elapsedRealtime3 + "ms";
                                                    agd.e(str2);
                                                    inputStream = zzc;
                                                    if (inputStream != null) {
                                                    }
                                                    if (dzz.g()) {
                                                    }
                                                } catch (TimeoutException e4) {
                                                    e = e4;
                                                    z2 = true;
                                                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzeu)).booleanValue()) {
                                                    }
                                                    zza2.cancel(true);
                                                    ti.f20033a.v.getClass();
                                                    final long elapsedRealtime32 = SystemClock.elapsedRealtime() - elapsedRealtime;
                                                    esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfo
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            zzcfs zzcfsVar = zzcfs.this;
                                                            zzcfsVar.u.zzv(z2, elapsedRealtime32);
                                                        }
                                                    });
                                                    str2 = "Cache connection took " + elapsedRealtime32 + "ms";
                                                    agd.e(str2);
                                                    inputStream = zzc;
                                                    if (inputStream != null) {
                                                    }
                                                    if (dzz.g()) {
                                                    }
                                                }
                                            }
                                            tiVar.v.getClass();
                                            final long elapsedRealtime4 = SystemClock.elapsedRealtime() - elapsedRealtime;
                                            final boolean z4 = true;
                                            esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfo
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    zzcfs zzcfsVar = zzcfs.this;
                                                    zzcfsVar.u.zzv(z4, elapsedRealtime4);
                                                }
                                            });
                                            str2 = "Cache connection took " + elapsedRealtime4 + "ms";
                                        } catch (Throwable th) {
                                            th = th;
                                            z = 1;
                                            ti.f20033a.v.getClass();
                                            final long elapsedRealtime5 = SystemClock.elapsedRealtime() - elapsedRealtime;
                                            esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfo
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    zzcfs zzcfsVar = zzcfs.this;
                                                    zzcfsVar.u.zzv(z, elapsedRealtime5);
                                                }
                                            });
                                            agd.e("Cache connection took " + elapsedRealtime5 + "ms");
                                            throw th;
                                        }
                                    } catch (InterruptedException e5) {
                                        e = e5;
                                        zzc = null;
                                    } catch (ExecutionException e6) {
                                        e = e6;
                                        zzc = null;
                                        z2 = true;
                                        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzeu)).booleanValue()) {
                                            ti.f20033a.f20034ab.zzw(e, "AdWebViewClient.interceptRequest.gcache");
                                        }
                                        zza2.cancel(true);
                                        ti.f20033a.v.getClass();
                                        final long elapsedRealtime322 = SystemClock.elapsedRealtime() - elapsedRealtime;
                                        esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfo
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                zzcfs zzcfsVar = zzcfs.this;
                                                zzcfsVar.u.zzv(z2, elapsedRealtime322);
                                            }
                                        });
                                        str2 = "Cache connection took " + elapsedRealtime322 + "ms";
                                        agd.e(str2);
                                        inputStream = zzc;
                                        if (inputStream != null) {
                                        }
                                        if (dzz.g()) {
                                        }
                                    } catch (TimeoutException e7) {
                                        e = e7;
                                        zzc = null;
                                        z2 = true;
                                        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzeu)).booleanValue()) {
                                        }
                                        zza2.cancel(true);
                                        ti.f20033a.v.getClass();
                                        final long elapsedRealtime3222 = SystemClock.elapsedRealtime() - elapsedRealtime;
                                        esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfo
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                zzcfs zzcfsVar = zzcfs.this;
                                                zzcfsVar.u.zzv(z2, elapsedRealtime3222);
                                            }
                                        });
                                        str2 = "Cache connection took " + elapsedRealtime3222 + "ms";
                                        agd.e(str2);
                                        inputStream = zzc;
                                        if (inputStream != null) {
                                        }
                                        if (dzz.g()) {
                                        }
                                    }
                                } catch (InterruptedException e8) {
                                    e = e8;
                                    zzc = null;
                                    z3 = false;
                                } catch (ExecutionException e9) {
                                    e = e9;
                                    zzc = null;
                                    z2 = false;
                                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzeu)).booleanValue()) {
                                    }
                                    zza2.cancel(true);
                                    ti.f20033a.v.getClass();
                                    final long elapsedRealtime32222 = SystemClock.elapsedRealtime() - elapsedRealtime;
                                    esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfo
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            zzcfs zzcfsVar = zzcfs.this;
                                            zzcfsVar.u.zzv(z2, elapsedRealtime32222);
                                        }
                                    });
                                    str2 = "Cache connection took " + elapsedRealtime32222 + "ms";
                                    agd.e(str2);
                                    inputStream = zzc;
                                    if (inputStream != null) {
                                    }
                                    if (dzz.g()) {
                                    }
                                } catch (TimeoutException e10) {
                                    e = e10;
                                    zzc = null;
                                    z2 = false;
                                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzeu)).booleanValue()) {
                                    }
                                    zza2.cancel(true);
                                    ti.f20033a.v.getClass();
                                    final long elapsedRealtime322222 = SystemClock.elapsedRealtime() - elapsedRealtime;
                                    esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfo
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            zzcfs zzcfsVar = zzcfs.this;
                                            zzcfsVar.u.zzv(z2, elapsedRealtime322222);
                                        }
                                    });
                                    str2 = "Cache connection took " + elapsedRealtime322222 + "ms";
                                    agd.e(str2);
                                    inputStream = zzc;
                                    if (inputStream != null) {
                                    }
                                    if (dzz.g()) {
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    z = 0;
                                }
                                agd.e(str2);
                            } catch (Throwable th3) {
                                th = th3;
                                z = "AdWebViewClient.interceptRequest.gcache";
                            }
                        }
                        inputStream = zzc;
                        if (inputStream != null) {
                        }
                    }
                }
                i = -1;
                zzbceVar = zzbcn.zzep;
                edt edtVar2 = edt.f15376a;
                zzbclVar = edtVar2.f15379d;
                zzbcl zzbclVar22 = edtVar2.f15379d;
                webResourceResponse = null;
                if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
                }
                inputStream = zzc;
                if (inputStream != null) {
                }
            } else {
                webResourceResponse = null;
            }
            return (dzz.g() || !((Boolean) zzbej.zzb.zze()).booleanValue()) ? webResourceResponse : ak(str, map);
        } catch (Exception e11) {
            e = e11;
            ti.f20033a.f20034ab.zzw(e, "AdWebViewClient.interceptRequest");
            return ah();
        } catch (NoClassDefFoundError e12) {
            e = e12;
            ti.f20033a.f20034ab.zzw(e, "AdWebViewClient.interceptRequest");
            return ah();
        }
    }

    public final WebResourceResponse ak(String str, Map map) {
        HttpURLConnection httpURLConnection;
        WebResourceResponse webResourceResponse;
        zzcfk zzcfkVar = this.u;
        URL url = new URL(str);
        try {
            TrafficStats.setThreadStatsTag(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SAVED_HOST_TIME);
            int i = 0;
            while (true) {
                i++;
                if (i > 20) {
                    TrafficStats.clearThreadStatsTag();
                    throw new IOException("Too many redirects (20)");
                }
                URLConnection openConnection = url.openConnection();
                openConnection.setConnectTimeout(10000);
                openConnection.setReadTimeout(10000);
                for (Map.Entry entry : map.entrySet()) {
                    openConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
                if (!(openConnection instanceof HttpURLConnection)) {
                    throw new IOException("Invalid protocol.");
                }
                httpURLConnection = (HttpURLConnection) openConnection;
                ti.f20033a.z.au(zzcfkVar.getContext(), zzcfkVar.zzn().afmaVersion, httpURLConnection, 60000);
                dzz dzzVar = new dzz();
                webResourceResponse = null;
                dzzVar.i(httpURLConnection, null);
                int responseCode = httpURLConnection.getResponseCode();
                dzzVar.j(httpURLConnection, responseCode);
                if (responseCode < 300 || responseCode >= 400) {
                    break;
                }
                String headerField = httpURLConnection.getHeaderField("Location");
                if (headerField == null) {
                    throw new IOException("Missing Location header in redirect");
                }
                if (!headerField.startsWith("tel:")) {
                    URL url2 = new URL(url, headerField);
                    String protocol = url2.getProtocol();
                    if (protocol == null) {
                        agd.b("Protocol is null");
                        webResourceResponse = ah();
                        break;
                    }
                    if (!protocol.equals("http") && !protocol.equals("https")) {
                        agd.b("Unsupported scheme: " + protocol);
                        webResourceResponse = ah();
                        break;
                    }
                    agd.c("Redirecting to " + headerField);
                    httpURLConnection.disconnect();
                    url = url2;
                }
            }
            String contentType = httpURLConnection.getContentType();
            String str2 = "";
            String trim = TextUtils.isEmpty(contentType) ? "" : contentType.split(";")[0].trim();
            String contentType2 = httpURLConnection.getContentType();
            if (!TextUtils.isEmpty(contentType2)) {
                String[] split = contentType2.split(";");
                if (split.length != 1) {
                    int i2 = 1;
                    while (true) {
                        if (i2 >= split.length) {
                            break;
                        }
                        if (split[i2].trim().startsWith("charset")) {
                            String[] split2 = split[i2].trim().split("=");
                            if (split2.length > 1) {
                                str2 = split2[1].trim();
                                break;
                            }
                        }
                        i2++;
                    }
                }
            }
            String str3 = str2;
            Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
            HashMap hashMap = new HashMap(headerFields.size());
            for (Map.Entry<String, List<String>> entry2 : headerFields.entrySet()) {
                if (entry2.getKey() != null && entry2.getValue() != null && !entry2.getValue().isEmpty()) {
                    hashMap.put(entry2.getKey(), entry2.getValue().get(0));
                }
            }
            lp lpVar = ti.f20033a.k;
            int responseCode2 = httpURLConnection.getResponseCode();
            String responseMessage = httpURLConnection.getResponseMessage();
            InputStream inputStream = httpURLConnection.getInputStream();
            lpVar.getClass();
            webResourceResponse = new WebResourceResponse(trim, str3, responseCode2, responseMessage, hashMap, inputStream);
            return webResourceResponse;
        } finally {
            TrafficStats.clearThreadStatsTag();
        }
    }

    public final void al(Map map, List list, String str) {
        if (agd.h()) {
            agd.e("Received GMSG: ".concat(str));
            for (String str2 : map.keySet()) {
                agd.e("  " + str2 + ": " + ((String) map.get(str2)));
            }
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((zzbjr) it.next()).zza(this.u, map);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzchc, g.evo
    public final void onAdClicked() {
        evo evoVar = this.s;
        if (evoVar != null) {
            evoVar.onAdClicked();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        agd.e("Loading resource: ".concat(String.valueOf(str)));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            zzj(parse);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        Toolbar toolbar;
        synchronized (this.q) {
            try {
                if (this.u.zzaE()) {
                    agd.e("Blank page loaded, 1...");
                    this.u.zzX();
                    return;
                }
                this.v = true;
                zzchb zzchbVar = this.f5247a;
                if (zzchbVar != null) {
                    zzchbVar.zza();
                    this.f5247a = null;
                }
                zzg();
                if (this.u.zzL() != null) {
                    if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlD)).booleanValue() || (toolbar = this.u.zzL().n) == null) {
                        return;
                    }
                    toolbar.setSubtitle(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        this.ae = true;
        this.aa = i;
        this.f5254g = str;
        this.f5249b = str2;
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(26)
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        boolean didCrash;
        int rendererPriorityAtExit;
        didCrash = renderProcessGoneDetail.didCrash();
        rendererPriorityAtExit = renderProcessGoneDetail.rendererPriorityAtExit();
        return this.u.zzaD(didCrash, rendererPriorityAtExit);
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return aj(str, Collections.EMPTY_MAP);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 222) {
            return true;
        }
        switch (keyCode) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
                return true;
            default:
                switch (keyCode) {
                    case 126:
                    case TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE /* 127 */:
                    case TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME /* 128 */:
                    case TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA /* 129 */:
                    case 130:
                        return true;
                    default:
                        return false;
                }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        agd.e("AdWebView shouldOverrideUrlLoading: ".concat(String.valueOf(str)));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            zzj(parse);
        } else {
            boolean z = this.l;
            zzcfk zzcfkVar = this.u;
            if (z && webView == zzcfkVar.zzG()) {
                String scheme = parse.getScheme();
                if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                    evo evoVar = this.s;
                    if (evoVar != null) {
                        evoVar.onAdClicked();
                        zzbyh zzbyhVar = this.f5252e;
                        if (zzbyhVar != null) {
                            zzbyhVar.zzh(str);
                        }
                        this.s = null;
                    }
                    zzdel zzdelVar = this.m;
                    if (zzdelVar != null) {
                        zzdelVar.zzdG();
                        this.m = null;
                    }
                    return super.shouldOverrideUrlLoading(webView, str);
                }
            }
            if (zzcfkVar.zzG().willNotDraw()) {
                agd.b("AdWebView unable to handle URL: ".concat(String.valueOf(str)));
            } else {
                try {
                    zzavc zzI = zzcfkVar.zzI();
                    zzffs zzS = zzcfkVar.zzS();
                    if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlI)).booleanValue() || zzS == null) {
                        if (zzI != null && zzI.zzf(parse)) {
                            parse = zzI.zza(parse, zzcfkVar.getContext(), (View) zzcfkVar, zzcfkVar.zzi());
                        }
                    } else if (zzI != null && zzI.zzf(parse)) {
                        parse = zzS.zza(parse, zzcfkVar.getContext(), (View) zzcfkVar, zzcfkVar.zzi());
                    }
                } catch (zzavd unused) {
                    agd.b("Unable to append parameter to URL: ".concat(String.valueOf(str)));
                }
                cui cuiVar = this.f5248ab;
                if (cuiVar == null || cuiVar.f()) {
                    zzu(new etg("android.intent.action.VIEW", parse.toString(), null, null, null, null, null, null), true, false);
                } else {
                    cuiVar.e(str);
                }
            }
        }
        return true;
    }

    public final void zzA(String str, zzbjr zzbjrVar) {
        synchronized (this.q) {
            try {
                List list = (List) this.k.get(str);
                if (list == null) {
                    list = new CopyOnWriteArrayList();
                    this.k.put(str, list);
                }
                list.add(zzbjrVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzchc
    public final void zzB(zzcha zzchaVar) {
        this.f5251d = zzchaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzchc
    public final void zzC(int i, int i2) {
        zzbse zzbseVar = this.w;
        if (zzbseVar != null) {
            zzbseVar.zze(i, i2);
        }
    }

    public final void zzD(boolean z) {
        this.l = false;
    }

    @Override // com.google.android.gms.internal.ads.zzchc
    public final void zzE(boolean z) {
        synchronized (this.q) {
            this.p = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzchc
    public final void zzF(boolean z) {
        synchronized (this.q) {
            this.f5250c = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzchc
    public final void zzG() {
        synchronized (this.q) {
            this.l = false;
            this.ad = true;
            zzcaj.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfm
                @Override // java.lang.Runnable
                public final void run() {
                    zzcfk zzcfkVar = zzcfs.this.u;
                    zzcfkVar.zzad();
                    cwg zzL = zzcfkVar.zzL();
                    if (zzL != null) {
                        zzL.m.removeView(zzL.q);
                        zzL.af(true);
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzchc
    public final void zzH(boolean z) {
        synchronized (this.q) {
            this.t = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzchc
    public final void zzI(zzchb zzchbVar) {
        this.f5247a = zzchbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzchc
    public final void zzJ(zzcnb zzcnbVar, zzedp zzedpVar, zzflr zzflrVar) {
        zzN("/click");
        if (zzedpVar == null || zzflrVar == null) {
            zzA("/click", new zzbip(this.m, zzcnbVar));
        } else {
            zzA("/click", new zzffw(this.m, zzcnbVar, zzflrVar, zzedpVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzchc
    public final void zzK(zzcnb zzcnbVar) {
        zzN("/click");
        zzA("/click", new zzbip(this.m, zzcnbVar));
    }

    @Override // com.google.android.gms.internal.ads.zzchc
    public final void zzL(zzcnb zzcnbVar, zzedp zzedpVar, zzdsm zzdsmVar) {
        zzN("/open");
        zzA("/open", new zzbkd(this.f5248ab, this.w, zzedpVar, zzdsmVar, zzcnbVar));
    }

    @Override // com.google.android.gms.internal.ads.zzchc
    public final void zzM(zzfet zzfetVar) {
        zzbyv zzbyvVar = ti.f20033a.f20039f;
        zzcfk zzcfkVar = this.u;
        if (zzbyvVar.zzp(zzcfkVar.getContext())) {
            zzN("/logScionEvent");
            new HashMap();
            zzA("/logScionEvent", new zzbjx(zzcfkVar.getContext(), zzfetVar.zzaw));
        }
    }

    public final void zzN(String str) {
        synchronized (this.q) {
            try {
                List list = (List) this.k.get(str);
                if (list == null) {
                    return;
                }
                list.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzO(String str, zzbjr zzbjrVar) {
        synchronized (this.q) {
            try {
                List list = (List) this.k.get(str);
                if (list == null) {
                    return;
                }
                list.remove(zzbjrVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzP(String str, aqj aqjVar) {
        synchronized (this.q) {
            try {
                List<zzbjr> list = (List) this.k.get(str);
                if (list == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (zzbjr zzbjrVar : list) {
                    if (aqjVar.apply(zzbjrVar)) {
                        arrayList.add(zzbjrVar);
                    }
                }
                list.removeAll(arrayList);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzQ() {
        boolean z;
        synchronized (this.q) {
            z = this.p;
        }
        return z;
    }

    public final boolean zzR() {
        boolean z;
        synchronized (this.q) {
            z = this.f5250c;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzchc
    public final boolean zzS() {
        boolean z;
        synchronized (this.q) {
            z = this.ad;
        }
        return z;
    }

    public final boolean zzT() {
        boolean z;
        synchronized (this.q) {
            z = this.t;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzchc
    public final void zzU(evo evoVar, zzbih zzbihVar, fim fimVar, zzbij zzbijVar, gst gstVar, boolean z, zzbju zzbjuVar, cui cuiVar, zzbsl zzbslVar, zzbyh zzbyhVar, final zzedp zzedpVar, final zzflr zzflrVar, zzdsm zzdsmVar, zzbkl zzbklVar, zzdel zzdelVar, zzbkk zzbkkVar, zzbke zzbkeVar, zzbjs zzbjsVar, zzcnb zzcnbVar) {
        zzcfk zzcfkVar = this.u;
        cui cuiVar2 = cuiVar == null ? new cui(zzcfkVar.getContext(), zzbyhVar) : cuiVar;
        this.w = new zzbse(zzcfkVar, zzbslVar);
        this.f5252e = zzbyhVar;
        zzbce zzbceVar = zzbcn.zzaY;
        edt edtVar = edt.f15376a;
        zzbcl zzbclVar = edtVar.f15379d;
        zzbcl zzbclVar2 = edtVar.f15379d;
        if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
            zzA("/adMetadata", new zzbig(zzbihVar));
        }
        if (zzbijVar != null) {
            zzA("/appEvent", new zzbii(zzbijVar));
        }
        zzA("/backButton", zzbjq.zzj);
        zzA("/refresh", zzbjq.zzk);
        zzA("/canOpenApp", zzbjq.zzb);
        zzA("/canOpenURLs", zzbjq.zza);
        zzA("/canOpenIntents", zzbjq.zzc);
        zzA("/close", zzbjq.zzd);
        zzA("/customClose", zzbjq.zze);
        zzA("/instrument", zzbjq.zzn);
        zzA("/delayPageLoaded", zzbjq.zzp);
        zzA("/delayPageClosed", zzbjq.zzq);
        zzA("/getLocationInfo", zzbjq.zzr);
        zzA("/log", zzbjq.zzg);
        zzA("/mraid", new zzbjy(cuiVar2, this.w, zzbslVar));
        zzbsj zzbsjVar = this.f5253f;
        if (zzbsjVar != null) {
            zzA("/mraidLoaded", zzbsjVar);
        }
        cui cuiVar3 = cuiVar2;
        zzA("/open", new zzbkd(cuiVar3, this.w, zzedpVar, zzdsmVar, zzcnbVar));
        zzA("/precache", new zzcds());
        zzA("/touch", zzbjq.zzi);
        zzA("/video", zzbjq.zzl);
        zzA("/videoMeta", zzbjq.zzm);
        if (zzedpVar == null || zzflrVar == null) {
            zzA("/click", new zzbip(zzdelVar, zzcnbVar));
            zzA("/httpTrack", zzbjq.zzf);
        } else {
            zzA("/click", new zzffw(zzdelVar, zzcnbVar, zzflrVar, zzedpVar));
            zzA("/httpTrack", new zzbjr() { // from class: com.google.android.gms.internal.ads.zzffx
                @Override // com.google.android.gms.internal.ads.zzbjr
                public final void zza(Object obj, Map map) {
                    zzcfb zzcfbVar = (zzcfb) obj;
                    String str = (String) map.get("u");
                    if (str == null) {
                        agd.b("URL missing from httpTrack GMSG.");
                    } else {
                        if (!zzcfbVar.zzD().zzai) {
                            zzflr.this.zzc(str, null);
                            return;
                        }
                        zzedp zzedpVar2 = zzedpVar;
                        ti.f20033a.v.getClass();
                        zzedpVar2.zzd(new zzedr(System.currentTimeMillis(), ((zzcgn) zzcfbVar).zzR().zzb, str, 2));
                    }
                }
            });
        }
        if (ti.f20033a.f20039f.zzp(zzcfkVar.getContext())) {
            Map hashMap = new HashMap();
            if (zzcfkVar.zzD() != null) {
                hashMap = zzcfkVar.zzD().zzaw;
            }
            zzA("/logScionEvent", new zzbjx(zzcfkVar.getContext(), hashMap));
        }
        if (zzbjuVar != null) {
            zzA("/setInterstitialProperties", new zzbjt(zzbjuVar));
        }
        if (zzbklVar != null && ((Boolean) zzbclVar2.zza(zzbcn.zziz)).booleanValue()) {
            zzA("/inspectorNetworkExtras", zzbklVar);
        }
        if (((Boolean) zzbclVar2.zza(zzbcn.zziS)).booleanValue() && zzbkkVar != null) {
            zzA("/shareSheet", zzbkkVar);
        }
        if (((Boolean) zzbclVar2.zza(zzbcn.zziX)).booleanValue() && zzbkeVar != null) {
            zzA("/inspectorOutOfContextTest", zzbkeVar);
        }
        if (((Boolean) zzbclVar2.zza(zzbcn.zzjb)).booleanValue() && zzbjsVar != null) {
            zzA("/inspectorStorage", zzbjsVar);
        }
        if (((Boolean) zzbclVar2.zza(zzbcn.zzlg)).booleanValue()) {
            zzA("/bindPlayStoreOverlay", zzbjq.zzu);
            zzA("/presentPlayStoreOverlay", zzbjq.zzv);
            zzA("/expandPlayStoreOverlay", zzbjq.zzw);
            zzA("/collapsePlayStoreOverlay", zzbjq.zzx);
            zzA("/closePlayStoreOverlay", zzbjq.zzy);
        }
        if (((Boolean) zzbclVar2.zza(zzbcn.zzdq)).booleanValue()) {
            zzA("/setPAIDPersonalizationEnabled", zzbjq.zzA);
            zzA("/resetPAID", zzbjq.zzz);
        }
        if (((Boolean) zzbclVar2.zza(zzbcn.zzlC)).booleanValue() && zzcfkVar.zzD() != null && zzcfkVar.zzD().zzar) {
            zzA("/writeToLocalStorage", zzbjq.zzB);
            zzA("/clearLocalStorageKeys", zzbjq.zzC);
        }
        this.s = evoVar;
        this.af = fimVar;
        this.y = zzbihVar;
        this.i = zzbijVar;
        this.n = gstVar;
        this.f5248ab = cuiVar3;
        this.m = zzdelVar;
        this.l = z;
    }

    public final ViewTreeObserver.OnGlobalLayoutListener zza() {
        synchronized (this.q) {
        }
        return null;
    }

    public final ViewTreeObserver.OnScrollChangedListener zzb() {
        synchronized (this.q) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzchc
    public final cui zzd() {
        return this.f5248ab;
    }

    @Override // com.google.android.gms.internal.ads.zzdel
    public final void zzdG() {
        zzdel zzdelVar = this.m;
        if (zzdelVar != null) {
            zzdelVar.zzdG();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdel
    public final void zzdf() {
        zzdel zzdelVar = this.m;
        if (zzdelVar != null) {
            zzdelVar.zzdf();
        }
    }

    public final void zzg() {
        zzcha zzchaVar = this.f5251d;
        zzcfk zzcfkVar = this.u;
        if (zzchaVar != null && ((this.v && this.x <= 0) || this.ac || this.ae)) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbW)).booleanValue() && zzcfkVar.zzm() != null) {
                zzbcu.zza(zzcfkVar.zzm().zza(), zzcfkVar.zzk(), "awfllc");
            }
            zzcha zzchaVar2 = this.f5251d;
            boolean z = false;
            if (!this.ac && !this.ae) {
                z = true;
            }
            zzchaVar2.zza(z, this.aa, this.f5254g, this.f5249b);
            this.f5251d = null;
        }
        zzcfkVar.zzaf();
    }

    public final void zzh() {
        zzbyh zzbyhVar = this.f5252e;
        if (zzbyhVar != null) {
            zzbyhVar.zze();
            this.f5252e = null;
        }
        bzn bznVar = this.o;
        if (bznVar != null) {
            ((View) this.u).removeOnAttachStateChangeListener(bznVar);
        }
        synchronized (this.q) {
            try {
                this.k.clear();
                this.s = null;
                this.af = null;
                this.f5251d = null;
                this.f5247a = null;
                this.y = null;
                this.i = null;
                this.l = false;
                this.ad = false;
                this.t = false;
                this.p = false;
                this.n = null;
                this.f5248ab = null;
                this.f5253f = null;
                zzbse zzbseVar = this.w;
                if (zzbseVar != null) {
                    zzbseVar.zza(true);
                    this.w = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzi(boolean z) {
        this.j = z;
    }

    @Override // com.google.android.gms.internal.ads.zzchc
    public final void zzj(Uri uri) {
        agd.e("Received GMSG: ".concat(String.valueOf(uri)));
        String path = uri.getPath();
        List list = (List) this.k.get(path);
        if (path == null || list == null) {
            agd.e("No GMSG handler found for GMSG: ".concat(String.valueOf(uri)));
            if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgC)).booleanValue() || ti.f20033a.f20034ab.zzg() == null) {
                return;
            }
            final String substring = (path == null || path.length() < 2) ? "null" : path.substring(1);
            zzcaj.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfn
                @Override // java.lang.Runnable
                public final void run() {
                    int i = zzcfs.zzb;
                    ti.f20033a.f20034ab.zzg().zze(substring);
                }
            });
            return;
        }
        String encodedQuery = uri.getEncodedQuery();
        zzbce zzbceVar = zzbcn.zzfC;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() && this.h.contains(path) && encodedQuery != null) {
            if (encodedQuery.length() >= ((Integer) edtVar.f15379d.zza(zzbcn.zzfE)).intValue()) {
                agd.e("Parsing gmsg query params on BG thread: ".concat(path));
                esy esyVar = ti.f20033a.z;
                esyVar.getClass();
                zzgei.zzr(zzgei.zzj(new gzm(6, uri), esyVar.f16119c), new gkr(this, list, path, uri, 7, false), zzcaj.zze);
                return;
            }
        }
        esy esyVar2 = ti.f20033a.z;
        al(esy.u(uri), list, path);
    }

    @Override // com.google.android.gms.internal.ads.zzchc
    public final void zzk() {
        zzbbl zzbblVar = this.z;
        if (zzbblVar != null) {
            zzbblVar.zzc(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh2);
        }
        this.ac = true;
        this.aa = AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1;
        this.f5254g = "Page loaded delay cancel.";
        zzg();
        this.u.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzchc
    public final void zzl() {
        synchronized (this.q) {
        }
        this.x++;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzchc
    public final void zzm() {
        this.x--;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzchc
    public final void zzq(int i, int i2, boolean z) {
        zzbsj zzbsjVar = this.f5253f;
        if (zzbsjVar != null) {
            zzbsjVar.zzb(i, i2);
        }
        zzbse zzbseVar = this.w;
        if (zzbseVar != null) {
            zzbseVar.zzd(i, i2, false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzchc
    public final void zzr() {
        zzbyh zzbyhVar = this.f5252e;
        if (zzbyhVar != null) {
            zzcfk zzcfkVar = this.u;
            WebView zzG = zzcfkVar.zzG();
            WeakHashMap weakHashMap = goi.f18490c;
            if (zzG.isAttachedToWindow()) {
                ai(zzG, zzbyhVar, 10);
                return;
            }
            bzn bznVar = this.o;
            if (bznVar != null) {
                ((View) zzcfkVar).removeOnAttachStateChangeListener(bznVar);
            }
            bzn bznVar2 = new bzn(this, zzbyhVar);
            this.o = bznVar2;
            ((View) zzcfkVar).addOnAttachStateChangeListener(bznVar2);
        }
    }

    public final void zzu(etg etgVar, boolean z, boolean z2) {
        boolean z3;
        zzcfk zzcfkVar = this.u;
        boolean zzaF = zzcfkVar.zzaF();
        boolean z4 = false;
        boolean z5 = ag(zzaF, zzcfkVar) || z2;
        if (z5 || !z) {
            z3 = zzaF;
            z4 = true;
        } else {
            z3 = zzaF;
        }
        zzx(new AdOverlayInfoParcel(etgVar, z5 ? null : this.s, z3 ? null : this.af, this.n, zzcfkVar.zzn(), zzcfkVar, z4 ? null : this.m));
    }

    public final void zzv(String str, String str2, int i) {
        zzcfk zzcfkVar = this.u;
        zzx(new AdOverlayInfoParcel(zzcfkVar, zzcfkVar.zzn(), str, str2, 14, this.r));
    }

    public final void zzw(boolean z, int i, boolean z2) {
        boolean z3;
        zzeea zzeeaVar;
        boolean z4;
        evo evoVar;
        int i2;
        zzcfk zzcfkVar = this.u;
        boolean ag = ag(zzcfkVar.zzaF(), zzcfkVar);
        boolean z5 = true;
        if (ag || !z2) {
            z3 = ag;
        } else {
            z3 = ag;
            z5 = false;
        }
        evo evoVar2 = z3 ? null : this.s;
        boolean z6 = z5;
        fim fimVar = this.af;
        gst gstVar = this.n;
        akx zzn = zzcfkVar.zzn();
        zzdel zzdelVar = z6 ? null : this.m;
        if (zzcfkVar.zzD() != null ? zzcfkVar.zzD().zzai : false) {
            zzeeaVar = this.r;
            z4 = z;
            i2 = i;
            evoVar = evoVar2;
        } else {
            zzeeaVar = null;
            z4 = z;
            evoVar = evoVar2;
            i2 = i;
        }
        zzx(new AdOverlayInfoParcel(evoVar, fimVar, gstVar, zzcfkVar, z4, i2, zzn, zzdelVar, zzeeaVar));
    }

    public final void zzx(AdOverlayInfoParcel adOverlayInfoParcel) {
        etg etgVar;
        zzbse zzbseVar = this.w;
        boolean zzf = zzbseVar != null ? zzbseVar.zzf() : false;
        bli bliVar = ti.f20033a.u;
        bli.q(this.u.getContext(), adOverlayInfoParcel, !zzf);
        zzbyh zzbyhVar = this.f5252e;
        if (zzbyhVar != null) {
            String str = adOverlayInfoParcel.zzl;
            if (str == null && (etgVar = adOverlayInfoParcel.zza) != null) {
                str = etgVar.zzb;
            }
            zzbyhVar.zzh(str);
        }
    }

    public final void zzy(boolean z, int i, String str, String str2, boolean z2) {
        boolean z3;
        zzeea zzeeaVar;
        boolean z4;
        int i2;
        String str3;
        String str4;
        zzcfk zzcfkVar = this.u;
        boolean zzaF = zzcfkVar.zzaF();
        boolean ag = ag(zzaF, zzcfkVar);
        boolean z5 = true;
        if (ag || !z2) {
            z3 = zzaF;
        } else {
            z3 = zzaF;
            z5 = false;
        }
        evo evoVar = ag ? null : this.s;
        bwj bwjVar = z3 ? null : new bwj(zzcfkVar, this.af);
        boolean z6 = z5;
        zzbih zzbihVar = this.y;
        bwj bwjVar2 = bwjVar;
        zzbij zzbijVar = this.i;
        gst gstVar = this.n;
        akx zzn = zzcfkVar.zzn();
        zzdel zzdelVar = z6 ? null : this.m;
        if (zzcfkVar.zzD() != null ? zzcfkVar.zzD().zzai : false) {
            zzeeaVar = this.r;
            i2 = i;
            str4 = str;
            str3 = str2;
            z4 = z;
        } else {
            zzeeaVar = null;
            z4 = z;
            i2 = i;
            str3 = str2;
            str4 = str;
        }
        zzx(new AdOverlayInfoParcel(evoVar, bwjVar2, zzbihVar, zzbijVar, gstVar, zzcfkVar, z4, i2, str4, str3, zzn, zzdelVar, zzeeaVar));
    }

    public final void zzz(boolean z, int i, String str, boolean z2, boolean z3) {
        boolean z4;
        zzeea zzeeaVar;
        boolean z5;
        int i2;
        boolean z6;
        String str2;
        zzcfk zzcfkVar = this.u;
        boolean zzaF = zzcfkVar.zzaF();
        boolean ag = ag(zzaF, zzcfkVar);
        boolean z7 = true;
        if (ag || !z2) {
            z4 = zzaF;
        } else {
            z4 = zzaF;
            z7 = false;
        }
        evo evoVar = ag ? null : this.s;
        bwj bwjVar = z4 ? null : new bwj(zzcfkVar, this.af);
        boolean z8 = z7;
        zzbih zzbihVar = this.y;
        bwj bwjVar2 = bwjVar;
        zzbij zzbijVar = this.i;
        gst gstVar = this.n;
        akx zzn = zzcfkVar.zzn();
        zzdel zzdelVar = z8 ? null : this.m;
        if (zzcfkVar.zzD() != null ? zzcfkVar.zzD().zzai : false) {
            zzeeaVar = this.r;
            i2 = i;
            str2 = str;
            z6 = z3;
            z5 = z;
        } else {
            zzeeaVar = null;
            z5 = z;
            i2 = i;
            z6 = z3;
            str2 = str;
        }
        zzx(new AdOverlayInfoParcel(evoVar, bwjVar2, zzbihVar, zzbijVar, gstVar, zzcfkVar, z5, i2, str2, zzn, zzdelVar, zzeeaVar, z6));
    }
}
