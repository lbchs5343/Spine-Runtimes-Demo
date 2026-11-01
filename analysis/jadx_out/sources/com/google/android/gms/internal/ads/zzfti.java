package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class zzfti {

    /* renamed from: a, reason: collision with root package name */
    public static zzfti f8202a;

    /* renamed from: b, reason: collision with root package name */
    public final g.g f8203b;

    public zzfti(Context context) {
        if (g.g.f17764a == null) {
            g.g.f17764a = new g.g(context);
        }
        this.f8203b = g.g.f17764a;
    }

    public static final zzfti zza(Context context) {
        zzfti zzftiVar;
        synchronized (zzfti.class) {
            try {
                if (f8202a == null) {
                    f8202a = new zzfti(context);
                }
                zzftiVar = f8202a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzftiVar;
    }

    public final void zzb(boolean z) throws IOException {
        synchronized (zzfti.class) {
            this.f8203b.h(Boolean.valueOf(z), "paidv2_user_option");
        }
    }

    public final void zzc(boolean z) throws IOException {
        synchronized (zzfti.class) {
            try {
                this.f8203b.h(Boolean.valueOf(z), "paidv2_publisher_option");
                if (!z) {
                    this.f8203b.e("paidv2_creation_time");
                    this.f8203b.e("paidv2_id");
                    this.f8203b.e("vendor_scoped_gpid_v2_id");
                    this.f8203b.e("vendor_scoped_gpid_v2_creation_time");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzd() {
        boolean z;
        synchronized (zzfti.class) {
            z = this.f8203b.f17767d.getBoolean("paidv2_publisher_option", true);
        }
        return z;
    }

    public final boolean zze() {
        boolean z;
        synchronized (zzfti.class) {
            z = this.f8203b.f17767d.getBoolean("paidv2_user_option", true);
        }
        return z;
    }
}
