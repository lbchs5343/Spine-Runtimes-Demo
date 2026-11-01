package com.google.android.gms.internal.ads;

import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class zzctx {

    /* renamed from: b, reason: collision with root package name */
    public final Object f5669b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f5670c = new ConcurrentHashMap();

    /* renamed from: d, reason: collision with root package name */
    public final ConcurrentHashMap f5671d = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f5668a = new ConcurrentHashMap();

    public final int zza(String str) {
        Integer num = (Integer) this.f5670c.get(str);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public final long zzb(String str) {
        Long l = (Long) this.f5668a.get(str);
        if (l == null) {
            return -1L;
        }
        return l.longValue();
    }

    public final void zzc(String str) {
        synchronized (this.f5669b) {
            try {
                Integer num = (Integer) this.f5670c.get(str);
                this.f5670c.put(str, num == null ? 1 : Integer.valueOf(num.intValue() + 1));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzd(String str, String str2, long j) {
        ConcurrentHashMap concurrentHashMap = this.f5671d;
        Long l = (Long) concurrentHashMap.get(str2);
        if (l == null) {
            return;
        }
        concurrentHashMap.remove(str2);
        this.f5668a.put(str, Long.valueOf(j - l.longValue()));
    }

    public final void zze(String str, long j) {
        this.f5671d.put(str, Long.valueOf(j));
    }
}
