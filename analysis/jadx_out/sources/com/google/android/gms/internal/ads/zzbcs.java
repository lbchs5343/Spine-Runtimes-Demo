package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import g.agd;
import g.esy;
import g.ti;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;

@Deprecated
/* loaded from: classes3.dex */
public final class zzbcs {

    /* renamed from: a, reason: collision with root package name */
    public AtomicBoolean f4737a;

    /* renamed from: b, reason: collision with root package name */
    public String f4738b;

    /* renamed from: c, reason: collision with root package name */
    public Context f4739c;

    /* renamed from: e, reason: collision with root package name */
    public String f4741e;

    /* renamed from: f, reason: collision with root package name */
    public File f4742f;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayBlockingQueue f4740d = new ArrayBlockingQueue(100);

    /* renamed from: g, reason: collision with root package name */
    public final LinkedHashMap f4743g = new LinkedHashMap();
    public final HashMap h = new HashMap();
    public final HashSet i = new HashSet(Arrays.asList("noop", "activeViewPingSent", "viewabilityChanged", "visibilityChanged"));

    public static /* synthetic */ void zzc(zzbcs zzbcsVar) {
        while (true) {
            try {
                zzbdc zzbdcVar = (zzbdc) zzbcsVar.f4740d.take();
                zzbdb zza = zzbdcVar.zza();
                if (!TextUtils.isEmpty(zza.zzb())) {
                    zzbcsVar.k(zzbcsVar.j(zzbcsVar.f4743g, zzbdcVar.zzb()), zza);
                }
            } catch (InterruptedException unused) {
                zzfxd zzfxdVar = agd.f10175a;
                return;
            }
        }
    }

    public final LinkedHashMap j(LinkedHashMap linkedHashMap, Map map) {
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            linkedHashMap2.put(str, zza(str).zza((String) linkedHashMap2.get(str), str2));
        }
        return linkedHashMap2;
    }

    public final void k(LinkedHashMap linkedHashMap, zzbdb zzbdbVar) {
        FileOutputStream fileOutputStream;
        Uri.Builder buildUpon = Uri.parse(this.f4738b).buildUpon();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            buildUpon.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
        }
        String uri = buildUpon.build().toString();
        if (zzbdbVar != null) {
            StringBuilder sb = new StringBuilder(uri);
            if (!TextUtils.isEmpty(zzbdbVar.zzb())) {
                sb.append("&it=");
                sb.append(zzbdbVar.zzb());
            }
            if (!TextUtils.isEmpty(zzbdbVar.zza())) {
                sb.append("&blat=");
                sb.append(zzbdbVar.zza());
            }
            uri = sb.toString();
        }
        if (!this.f4737a.get()) {
            esy esyVar = ti.f20033a.z;
            esy.ah(this.f4739c, this.f4741e, uri);
            return;
        }
        File file = this.f4742f;
        if (file == null) {
            agd.b("CsiReporter: File doesn't exist. Cannot write CSI data to file.");
            return;
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file, true);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException unused) {
        }
        try {
            fileOutputStream.write(uri.getBytes());
            fileOutputStream.write(10);
            try {
                fileOutputStream.close();
            } catch (IOException unused2) {
                zzfxd zzfxdVar = agd.f10175a;
            }
        } catch (IOException unused3) {
            fileOutputStream2 = fileOutputStream;
            zzfxd zzfxdVar2 = agd.f10175a;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException unused4) {
                    zzfxd zzfxdVar3 = agd.f10175a;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException unused5) {
                    zzfxd zzfxdVar4 = agd.f10175a;
                }
            }
            throw th;
        }
    }

    public final zzbcy zza(String str) {
        zzbcy zzbcyVar = (zzbcy) this.h.get(str);
        return zzbcyVar != null ? zzbcyVar : zzbcy.zza;
    }

    public final void zzd(Context context, String str, String str2, Map map) {
        File externalStorageDirectory;
        this.f4739c = context;
        this.f4741e = str;
        this.f4738b = str2;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.f4737a = atomicBoolean;
        atomicBoolean.set(((Boolean) zzbei.zzc.zze()).booleanValue());
        if (this.f4737a.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.f4742f = new File(zzfsc.zza(zzfsb.zza(), externalStorageDirectory, "sdk_csi_data.txt"));
        }
        for (Map.Entry entry : map.entrySet()) {
            this.f4743g.put((String) entry.getKey(), (String) entry.getValue());
        }
        zzcaj.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbcr
            @Override // java.lang.Runnable
            public final void run() {
                zzbcs.zzc(zzbcs.this);
            }
        });
        zzbcy zzbcyVar = zzbcy.zzb;
        HashMap hashMap = this.h;
        hashMap.put("action", zzbcyVar);
        hashMap.put("ad_format", zzbcyVar);
        hashMap.put("e", zzbcy.zzc);
    }

    public final void zze(String str) {
        if (this.i.contains(str)) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("sdkVersion", this.f4741e);
        linkedHashMap.put("ue", str);
        k(j(this.f4743g, linkedHashMap), null);
    }

    public final boolean zzf(zzbdc zzbdcVar) {
        return this.f4740d.offer(zzbdcVar);
    }
}
