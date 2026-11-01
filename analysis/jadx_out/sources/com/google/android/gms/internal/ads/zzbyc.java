package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Looper;
import android.view.View;
import g.agd;
import g.akx;
import g.bvv;
import g.chk;
import g.ckd;
import g.dcy;
import g.dlc;
import g.esy;
import g.evf;
import g.gna;
import g.ti;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzbyc implements zzbyh {

    /* renamed from: a, reason: collision with root package name */
    public static final List f5056a = Collections.synchronizedList(new ArrayList());
    public static final /* synthetic */ int zzb = 0;

    /* renamed from: e, reason: collision with root package name */
    public final Context f5060e;

    /* renamed from: f, reason: collision with root package name */
    public final zzhct f5061f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f5062g;
    public final LinkedHashMap i;
    public final zzbye l;
    public final ArrayList k = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f5059d = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final Object f5057b = new Object();
    public final HashSet h = new HashSet();
    public boolean j = false;

    /* renamed from: c, reason: collision with root package name */
    public boolean f5058c = false;

    public zzbyc(Context context, akx akxVar, zzbye zzbyeVar, String str, zzbyd zzbydVar) {
        ckd.w(zzbyeVar, "SafeBrowsing config is not present.");
        this.f5060e = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.i = new LinkedHashMap();
        this.l = zzbyeVar;
        Iterator it = zzbyeVar.zze.iterator();
        while (it.hasNext()) {
            this.h.add(((String) it.next()).toLowerCase(Locale.ENGLISH));
        }
        this.h.remove("cookie".toLowerCase(Locale.ENGLISH));
        zzhct zzc = zzhes.zzc();
        zzc.zzn(9);
        zzc.zzj(str);
        zzc.zzh(str);
        zzhcu zzc2 = zzhcv.zzc();
        String str2 = this.l.zza;
        if (str2 != null) {
            zzc2.zza(str2);
        }
        zzc.zzg((zzhcv) zzc2.zzbr());
        zzhej zzc3 = zzhek.zzc();
        zzc3.zzc(chk.c(this.f5060e).d());
        String str3 = akxVar.afmaVersion;
        if (str3 != null) {
            zzc3.zza(str3);
        }
        gna gnaVar = gna.i;
        Context context2 = this.f5060e;
        gnaVar.getClass();
        long j = gna.j(context2);
        if (j > 0) {
            zzc3.zzb(j);
        }
        zzc.zzf((zzhek) zzc3.zzbr());
        this.f5061f = zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzbyh
    public final zzbye zza() {
        return this.l;
    }

    @Override // com.google.android.gms.internal.ads.zzbyh
    public final void zzd(String str, Map map, int i) {
        synchronized (this.f5057b) {
            if (i == 3) {
                try {
                    this.f5058c = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.i.containsKey(str)) {
                if (i == 3) {
                    ((zzheh) this.i.get(str)).zze(4);
                }
                return;
            }
            zzheh zzd = zzhei.zzd();
            int zza = zzheg.zza(i);
            if (zza != 0) {
                zzd.zze(zza);
            }
            zzd.zzb(this.i.size());
            zzd.zzd(str);
            zzhdg zzc = zzhdj.zzc();
            if (!this.h.isEmpty() && map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    String str2 = entry.getKey() != null ? (String) entry.getKey() : "";
                    String str3 = entry.getValue() != null ? (String) entry.getValue() : "";
                    if (this.h.contains(str2.toLowerCase(Locale.ENGLISH))) {
                        zzhde zzc2 = zzhdf.zzc();
                        zzc2.zza(zzgxp.zzw(str2));
                        zzc2.zzb(zzgxp.zzw(str3));
                        zzc.zza((zzhdf) zzc2.zzbr());
                    }
                }
            }
            zzd.zzc((zzhdj) zzc.zzbr());
            this.i.put(str, zzd);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbyh
    public final void zze() {
        synchronized (this.f5057b) {
            this.i.keySet();
            dcy zzh = zzgei.zzh(Collections.EMPTY_MAP);
            zzgdp zzgdpVar = new zzgdp() { // from class: com.google.android.gms.internal.ads.zzbxx
                @Override // com.google.android.gms.internal.ads.zzgdp
                public final dcy zza(Object obj) {
                    zzheh zzhehVar;
                    dcy zzm;
                    zzbyc zzbycVar = zzbyc.this;
                    Map map = (Map) obj;
                    zzbycVar.getClass();
                    if (map != null) {
                        try {
                            for (String str : map.keySet()) {
                                JSONArray optJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                                if (optJSONArray != null) {
                                    synchronized (zzbycVar.f5057b) {
                                        try {
                                            int length = optJSONArray.length();
                                            synchronized (zzbycVar.f5057b) {
                                                zzhehVar = (zzheh) zzbycVar.i.get(str);
                                            }
                                            if (zzhehVar == null) {
                                                zzbyg.zza("Cannot find the corresponding resource object for " + str);
                                            } else {
                                                for (int i = 0; i < length; i++) {
                                                    zzhehVar.zza(optJSONArray.getJSONObject(i).getString("threat_type"));
                                                }
                                                zzbycVar.f5062g = (length > 0) | zzbycVar.f5062g;
                                            }
                                        } finally {
                                        }
                                    }
                                }
                            }
                        } catch (JSONException unused) {
                            if (((Boolean) zzbev.zza.zze()).booleanValue()) {
                                zzfxd zzfxdVar = agd.f10175a;
                            }
                            return zzgei.zzg(new Exception("Safebrowsing report transmission failed."));
                        }
                    }
                    if (zzbycVar.f5062g) {
                        synchronized (zzbycVar.f5057b) {
                            zzbycVar.f5061f.zzn(10);
                        }
                    }
                    boolean z = zzbycVar.f5062g;
                    if (!(z && zzbycVar.l.zzg) && (!(zzbycVar.f5058c && zzbycVar.l.zzf) && (z || !zzbycVar.l.zzd))) {
                        return zzgei.zzh(null);
                    }
                    synchronized (zzbycVar.f5057b) {
                        try {
                            Iterator it = zzbycVar.i.values().iterator();
                            while (it.hasNext()) {
                                zzbycVar.f5061f.zzc((zzhei) ((zzheh) it.next()).zzbr());
                            }
                            zzbycVar.f5061f.zza(zzbycVar.k);
                            zzbycVar.f5061f.zzb(zzbycVar.f5059d);
                            if (zzbyg.zzb()) {
                                StringBuilder sb = new StringBuilder("Sending SB report\n  url: " + zzbycVar.f5061f.zzl() + "\n  clickUrl: " + zzbycVar.f5061f.zzk() + "\n  resources: \n");
                                for (zzhei zzheiVar : zzbycVar.f5061f.zzm()) {
                                    sb.append("    [");
                                    sb.append(zzheiVar.zzc());
                                    sb.append("] ");
                                    sb.append(zzheiVar.zzg());
                                }
                                zzbyg.zza(sb.toString());
                            }
                            byte[] zzaV = ((zzhes) zzbycVar.f5061f.zzbr()).zzaV();
                            String str2 = zzbycVar.l.zzb;
                            new bvv(zzbycVar.f5060e);
                            dlc c2 = bvv.c(1, str2, null, zzaV);
                            if (zzbyg.zzb()) {
                                c2.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbxz
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        zzbyg.zza("Pinged SB successfully.");
                                    }
                                }, zzcaj.zza);
                            }
                            zzm = zzgei.zzm(c2, new zzfwh() { // from class: com.google.android.gms.internal.ads.zzbya
                                @Override // com.google.android.gms.internal.ads.zzfwh
                                public final Object apply(Object obj2) {
                                    List list = zzbyc.f5056a;
                                    return null;
                                }
                            }, zzcaj.zzf);
                        } finally {
                        }
                    }
                    return zzm;
                }
            };
            zzges zzgesVar = zzcaj.zzf;
            dcy zzn = zzgei.zzn(zzh, zzgdpVar, zzgesVar);
            dcy zzo = zzgei.zzo(zzn, 10L, TimeUnit.SECONDS, zzcaj.zzd);
            zzgei.zzr(zzn, new evf(26, zzo), zzgesVar);
            f5056a.add(zzo);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0038 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0078  */
    @Override // com.google.android.gms.internal.ads.zzbyh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzg(View view) {
        Bitmap bitmap;
        boolean isDrawingCacheEnabled;
        if (this.l.zzc && !this.j) {
            esy esyVar = ti.f20033a.z;
            final Bitmap bitmap2 = null;
            if (view != null) {
                try {
                    isDrawingCacheEnabled = view.isDrawingCacheEnabled();
                    view.setDrawingCacheEnabled(true);
                    Bitmap drawingCache = view.getDrawingCache();
                    bitmap = drawingCache != null ? Bitmap.createBitmap(drawingCache) : null;
                } catch (RuntimeException e2) {
                    e = e2;
                    bitmap = null;
                }
                try {
                    view.setDrawingCacheEnabled(isDrawingCacheEnabled);
                } catch (RuntimeException e3) {
                    e = e3;
                    agd.f("Fail to capture the web view", e);
                    if (bitmap != null) {
                    }
                    if (bitmap2 != null) {
                    }
                }
                if (bitmap != null) {
                    try {
                        int width = view.getWidth();
                        int height = view.getHeight();
                        if (width != 0 && height != 0) {
                            Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
                            Canvas canvas = new Canvas(createBitmap);
                            view.layout(0, 0, width, height);
                            view.draw(canvas);
                            bitmap2 = createBitmap;
                        }
                        agd.b("Width or height of view is zero");
                    } catch (RuntimeException e4) {
                        agd.f("Fail to capture the webview", e4);
                    }
                } else {
                    bitmap2 = bitmap;
                }
            }
            if (bitmap2 != null) {
                zzbyg.zza("Failed to capture the webview bitmap.");
                return;
            }
            this.j = true;
            Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzbxy
                @Override // java.lang.Runnable
                public final void run() {
                    zzbyc zzbycVar = zzbyc.this;
                    Bitmap bitmap3 = bitmap2;
                    zzbycVar.getClass();
                    zzgxn zzt = zzgxp.zzt();
                    bitmap3.compress(Bitmap.CompressFormat.PNG, 0, zzt);
                    synchronized (zzbycVar.f5057b) {
                        zzhct zzhctVar = zzbycVar.f5061f;
                        zzheb zzc = zzhed.zzc();
                        zzc.zza(zzt.zzb());
                        zzc.zzb("image/png");
                        zzc.zzc(2);
                        zzhctVar.zzi((zzhed) zzc.zzbr());
                    }
                }
            };
            if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
                runnable.run();
            } else {
                zzcaj.zza.execute(runnable);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbyh
    public final void zzh(String str) {
        synchronized (this.f5057b) {
            try {
                if (str == null) {
                    this.f5061f.zzd();
                } else {
                    this.f5061f.zze(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbyh
    public final boolean zzi() {
        return this.l.zzc && !this.j;
    }
}
