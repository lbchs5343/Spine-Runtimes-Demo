package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes3.dex */
public final class l extends zzfzo {

    /* renamed from: a, reason: collision with root package name */
    public static final l f3966a = new l(0, new Object[0]);

    /* renamed from: b, reason: collision with root package name */
    public final transient Object[] f3967b;

    /* renamed from: c, reason: collision with root package name */
    public final transient int f3968c;

    public l(int i, Object[] objArr) {
        this.f3967b = objArr;
        this.f3968c = i;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    public final boolean d() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfzo, com.google.android.gms.internal.ads.zzfzj
    public final int e(int i, Object[] objArr) {
        Object[] objArr2 = this.f3967b;
        int i2 = this.f3968c;
        System.arraycopy(objArr2, 0, objArr, i, i2);
        return i + i2;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    public final Object[] f() {
        return this.f3967b;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    public final int g() {
        return this.f3968c;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzfwq.zza(i, this.f3968c, "index");
        Object obj = this.f3967b[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    public final int h() {
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3968c;
    }
}
