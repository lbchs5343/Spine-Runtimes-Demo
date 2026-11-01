package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzox {

    /* renamed from: a, reason: collision with root package name */
    public boolean f8835a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f8836b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f8837c;

    public final zzox zza(boolean z) {
        this.f8835a = true;
        return this;
    }

    public final zzox zzb(boolean z) {
        this.f8836b = z;
        return this;
    }

    public final zzox zzc(boolean z) {
        this.f8837c = z;
        return this;
    }

    public final zzoz zzd() {
        if (this.f8835a || !(this.f8836b || this.f8837c)) {
            return new zzoz(this);
        }
        throw new IllegalStateException("Secondary offload attribute fields are true but primary isFormatSupported is false");
    }
}
