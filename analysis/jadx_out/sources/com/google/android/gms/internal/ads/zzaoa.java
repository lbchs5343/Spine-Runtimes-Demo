package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzaoa {

    /* renamed from: a, reason: collision with root package name */
    public int f4413a;

    /* renamed from: b, reason: collision with root package name */
    public String f4414b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4415c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4416d;

    /* renamed from: e, reason: collision with root package name */
    public final int f4417e;

    public zzaoa(int i, int i2, int i3) {
        String str;
        if (i != Integer.MIN_VALUE) {
            str = i + "/";
        } else {
            str = "";
        }
        this.f4415c = str;
        this.f4416d = i2;
        this.f4417e = i3;
        this.f4413a = Integer.MIN_VALUE;
        this.f4414b = "";
    }

    public final int zza() {
        int i = this.f4413a;
        if (i != Integer.MIN_VALUE) {
            return i;
        }
        throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
    }

    public final String zzb() {
        if (this.f4413a != Integer.MIN_VALUE) {
            return this.f4414b;
        }
        throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
    }

    public final void zzc() {
        int i = this.f4413a;
        int i2 = i == Integer.MIN_VALUE ? this.f4416d : i + this.f4417e;
        this.f4413a = i2;
        this.f4414b = this.f4415c + i2;
    }
}
