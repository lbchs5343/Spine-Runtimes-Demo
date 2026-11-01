package com.google.android.gms.internal.ads;

import android.content.Context;
import g.dcy;
import g.eb;
import g.eph;

/* loaded from: classes3.dex */
public final class zzeez {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6877a;

    public zzeez(Context context) {
        this.f6877a = context;
    }

    public final dcy zza(boolean z) {
        try {
            eph ephVar = new eph(z);
            eb b2 = eb.b(this.f6877a);
            return b2 != null ? b2.c(ephVar) : zzgei.zzg(new IllegalStateException());
        } catch (Exception e2) {
            return zzgei.zzg(e2);
        }
    }
}
