package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzazu {

    /* renamed from: a, reason: collision with root package name */
    public final long f4652a;

    /* renamed from: b, reason: collision with root package name */
    public final String f4653b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4654c;

    public zzazu(int i, long j, String str) {
        this.f4652a = j;
        this.f4653b = str;
        this.f4654c = i;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzazu)) {
            zzazu zzazuVar = (zzazu) obj;
            if (zzazuVar.f4652a == this.f4652a && zzazuVar.f4654c == this.f4654c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (int) this.f4652a;
    }
}
