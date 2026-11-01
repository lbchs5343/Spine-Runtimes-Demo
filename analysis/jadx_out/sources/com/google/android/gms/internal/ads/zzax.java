package com.google.android.gms.internal.ads;

import java.util.HashSet;

/* loaded from: classes3.dex */
public final class zzax {

    /* renamed from: a, reason: collision with root package name */
    public static final HashSet f4572a = new HashSet();

    /* renamed from: b, reason: collision with root package name */
    public static String f4573b = "media3.common";

    public static synchronized String zza() {
        String str;
        synchronized (zzax.class) {
            str = f4573b;
        }
        return str;
    }

    public static synchronized void zzb(String str) {
        synchronized (zzax.class) {
            if (f4572a.add(str)) {
                f4573b = f4573b + ", " + str;
            }
        }
    }
}
