package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes3.dex */
public final class zzui {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicLong f8900a = new AtomicLong();

    public zzui(long j, zzgi zzgiVar, long j2) {
        Uri uri = zzgiVar.zza;
    }

    public zzui(long j, zzgi zzgiVar, Uri uri, Map map, long j2, long j3, long j4) {
    }

    public static long zza() {
        return f8900a.getAndIncrement();
    }
}
