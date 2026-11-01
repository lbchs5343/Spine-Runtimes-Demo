package com.google.android.gms.internal.ads;

import g.bok;
import sun.misc.Unsafe;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzgda {
    public static /* synthetic */ boolean zza(Unsafe unsafe, Object obj, long j, Object obj2, Object obj3) {
        while (!bok.a(unsafe, obj, j, obj2, obj3)) {
            if (unsafe.getObject(obj, j) != obj2) {
                return false;
            }
        }
        return true;
    }
}
