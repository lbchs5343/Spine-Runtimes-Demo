package com.google.android.gms.internal.ads;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class zzbju {

    /* renamed from: b, reason: collision with root package name */
    public boolean f4836b = false;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4837c = false;

    /* renamed from: d, reason: collision with root package name */
    public float f4838d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;

    /* renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f4835a = new AtomicBoolean(false);

    public final synchronized float zza() {
        return this.f4838d;
    }

    public final synchronized void zzb(boolean z, float f2) {
        this.f4837c = z;
        this.f4838d = f2;
    }

    public final synchronized void zzc(boolean z) {
        this.f4836b = z;
        this.f4835a.set(true);
    }

    public final synchronized boolean zzd() {
        return this.f4837c;
    }

    public final synchronized boolean zze(boolean z) {
        if (!this.f4835a.get()) {
            return z;
        }
        return this.f4836b;
    }
}
