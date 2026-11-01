package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzee {
    public static final zzee zza = new zzee(-1, -1);

    /* renamed from: a, reason: collision with root package name */
    public final int f6846a;

    /* renamed from: b, reason: collision with root package name */
    public final int f6847b;

    static {
        new zzee(0, 0);
    }

    public zzee(int i, int i2) {
        boolean z = false;
        if ((i == -1 || i >= 0) && (i2 == -1 || i2 >= 0)) {
            z = true;
        }
        zzdb.zzd(z);
        this.f6846a = i;
        this.f6847b = i2;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzee) {
            zzee zzeeVar = (zzee) obj;
            if (this.f6846a == zzeeVar.f6846a && this.f6847b == zzeeVar.f6847b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f6846a;
        return ((i >>> 16) | (i << 16)) ^ this.f6847b;
    }

    public final String toString() {
        return this.f6846a + "x" + this.f6847b;
    }

    public final int zza() {
        return this.f6847b;
    }

    public final int zzb() {
        return this.f6846a;
    }
}
