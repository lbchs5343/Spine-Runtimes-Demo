package com.google.android.gms.internal.ads;

import android.content.Context;
import g.avb;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class zzftl extends avb {

    /* renamed from: a, reason: collision with root package name */
    public static zzftl f8204a;

    public static final zzftl zzj(Context context) {
        zzftl zzftlVar;
        synchronized (zzftl.class) {
            try {
                if (f8204a == null) {
                    f8204a = new zzftl(context, "paidv1_id", "paidv1_creation_time", "PaidV1LifecycleImpl");
                }
                zzftlVar = f8204a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzftlVar;
    }

    public final zzfth zzh(long j, boolean z) throws IOException {
        zzfth l;
        synchronized (zzftl.class) {
            l = l(null, null, j, z);
        }
        return l;
    }

    public final zzfth zzi(String str, String str2, long j, boolean z) throws IOException {
        zzfth l;
        synchronized (zzftl.class) {
            l = l(str, str2, j, z);
        }
        return l;
    }

    public final void zzk() throws IOException {
        synchronized (zzftl.class) {
            j(false);
        }
    }

    public final void zzl() throws IOException {
        synchronized (zzftl.class) {
            j(true);
        }
    }
}
