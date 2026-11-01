package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzaqn {

    /* renamed from: a, reason: collision with root package name */
    public final InputStream f4469a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4470b;

    /* renamed from: c, reason: collision with root package name */
    public final List f4471c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4472d;

    public zzaqn(int i, List list, int i2, InputStream inputStream) {
        this.f4470b = i;
        this.f4471c = list;
        this.f4472d = i2;
        this.f4469a = inputStream;
    }

    public final int zza() {
        return this.f4472d;
    }

    public final int zzb() {
        return this.f4470b;
    }

    public final InputStream zzc() {
        InputStream inputStream = this.f4469a;
        if (inputStream != null) {
            return inputStream;
        }
        return null;
    }

    public final List zzd() {
        return Collections.unmodifiableList(this.f4471c);
    }
}
