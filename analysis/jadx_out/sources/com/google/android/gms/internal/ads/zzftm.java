package com.google.android.gms.internal.ads;

import android.content.Context;
import g.avb;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class zzftm extends avb {

    /* renamed from: a, reason: collision with root package name */
    public static zzftm f8205a;

    public static final zzftm zzi(Context context) {
        zzftm zzftmVar;
        synchronized (zzftm.class) {
            try {
                if (f8205a == null) {
                    f8205a = new zzftm(context, "paidv2_id", "paidv2_creation_time", "PaidV2LifecycleImpl");
                }
                zzftmVar = f8205a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzftmVar;
    }

    public final zzfth zzh(long j, boolean z) throws IOException {
        synchronized (zzftm.class) {
            try {
                if (this.i.zzd()) {
                    return l(null, null, j, z);
                }
                return new zzfth();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzj() throws IOException {
        synchronized (zzftm.class) {
            try {
                g.g gVar = this.f10906f;
                if (gVar.f17767d.contains(this.f10905e)) {
                    j(false);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
