package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzfho implements zzfhm {

    /* renamed from: a, reason: collision with root package name */
    public final String f7897a;

    public zzfho(String str) {
        this.f7897a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzfhm
    public final boolean equals(Object obj) {
        if (obj instanceof zzfho) {
            return this.f7897a.equals(((zzfho) obj).f7897a);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfhm
    public final int hashCode() {
        return this.f7897a.hashCode();
    }

    public final String toString() {
        return this.f7897a;
    }
}
