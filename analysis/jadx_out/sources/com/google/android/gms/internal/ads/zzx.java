package com.google.android.gms.internal.ads;

import android.util.SparseBooleanArray;

/* loaded from: classes3.dex */
public final class zzx {

    /* renamed from: a, reason: collision with root package name */
    public final SparseBooleanArray f8934a = new SparseBooleanArray();

    /* renamed from: b, reason: collision with root package name */
    public boolean f8935b;

    public final zzx zza(int i) {
        zzdb.zzf(!this.f8935b);
        this.f8934a.append(i, true);
        return this;
    }

    public final zzz zzb() {
        zzdb.zzf(!this.f8935b);
        this.f8935b = true;
        return new zzz(this.f8934a);
    }
}
