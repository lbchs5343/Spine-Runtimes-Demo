package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import g.edt;
import g.ti;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map;

@Deprecated
/* loaded from: classes3.dex */
public final class zzbdc {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedList f4751a = new LinkedList();

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f4752b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f4753c;

    public zzbdc(boolean z, String str, String str2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f4752b = linkedHashMap;
        this.f4753c = new Object();
        linkedHashMap.put("action", "make_wv");
        linkedHashMap.put("ad_format", str2);
    }

    public static final zzbcz zzf() {
        ti.f20033a.v.getClass();
        return new zzbcz(SystemClock.elapsedRealtime(), null, null);
    }

    public final zzbdb zza() {
        zzbdb zzbdbVar;
        boolean booleanValue = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbW)).booleanValue();
        StringBuilder sb = new StringBuilder();
        HashMap hashMap = new HashMap();
        synchronized (this.f4753c) {
            try {
                for (zzbcz zzbczVar : this.f4751a) {
                    long zza = zzbczVar.zza();
                    String zzc = zzbczVar.zzc();
                    zzbcz zzb = zzbczVar.zzb();
                    if (zzb != null && zza > 0) {
                        long zza2 = zza - zzb.zza();
                        sb.append(zzc);
                        sb.append('.');
                        sb.append(zza2);
                        sb.append(',');
                        if (booleanValue) {
                            if (hashMap.containsKey(Long.valueOf(zzb.zza()))) {
                                StringBuilder sb2 = (StringBuilder) hashMap.get(Long.valueOf(zzb.zza()));
                                sb2.append('+');
                                sb2.append(zzc);
                            } else {
                                hashMap.put(Long.valueOf(zzb.zza()), new StringBuilder(zzc));
                            }
                        }
                    }
                }
                this.f4751a.clear();
                String str = null;
                if (!TextUtils.isEmpty(null)) {
                    sb.append((String) null);
                } else if (sb.length() > 0) {
                    sb.setLength(sb.length() - 1);
                }
                StringBuilder sb3 = new StringBuilder();
                if (booleanValue) {
                    for (Map.Entry entry : hashMap.entrySet()) {
                        sb3.append((CharSequence) entry.getValue());
                        sb3.append('.');
                        long longValue = ((Long) entry.getKey()).longValue();
                        ti tiVar = ti.f20033a;
                        tiVar.v.getClass();
                        long currentTimeMillis = System.currentTimeMillis();
                        tiVar.v.getClass();
                        sb3.append((longValue - SystemClock.elapsedRealtime()) + currentTimeMillis);
                        sb3.append(',');
                    }
                    if (sb3.length() > 0) {
                        sb3.setLength(sb3.length() - 1);
                    }
                    str = sb3.toString();
                }
                zzbdbVar = new zzbdb(sb.toString(), str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzbdbVar;
    }

    public final Map zzb() {
        LinkedHashMap linkedHashMap;
        synchronized (this.f4753c) {
            ti.f20033a.f20034ab.zzg();
            linkedHashMap = this.f4752b;
        }
        return linkedHashMap;
    }

    public final void zzc(zzbdc zzbdcVar) {
        synchronized (this.f4753c) {
        }
    }

    public final void zzd(String str, String str2) {
        zzbcs zzg;
        if (TextUtils.isEmpty(str2) || (zzg = ti.f20033a.f20034ab.zzg()) == null) {
            return;
        }
        synchronized (this.f4753c) {
            zzbcy zza = zzg.zza(str);
            LinkedHashMap linkedHashMap = this.f4752b;
            linkedHashMap.put(str, zza.zza((String) linkedHashMap.get(str), str2));
        }
    }

    public final boolean zze(zzbcz zzbczVar, long j, String... strArr) {
        synchronized (this.f4753c) {
            this.f4751a.add(new zzbcz(j, strArr[0], zzbczVar));
        }
        return true;
    }
}
