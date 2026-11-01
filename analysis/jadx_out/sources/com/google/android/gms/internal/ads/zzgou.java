package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzgou {

    /* renamed from: a, reason: collision with root package name */
    public final zzgnd f8536a;

    /* renamed from: b, reason: collision with root package name */
    public final Map f8537b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgos f8538c;

    /* renamed from: d, reason: collision with root package name */
    public final Class f8539d;

    public /* synthetic */ zzgou(HashMap hashMap, zzgos zzgosVar, zzgnd zzgndVar, Class cls) {
        this.f8537b = hashMap;
        this.f8538c = zzgosVar;
        this.f8539d = cls;
        this.f8536a = zzgndVar;
    }

    public static zzgor zzb(Class cls) {
        return new zzgor(cls);
    }

    public final zzgnd zza() {
        return this.f8536a;
    }

    public final zzgos zzc() {
        return this.f8538c;
    }

    public final Class zzd() {
        return this.f8539d;
    }

    public final Collection zze() {
        return this.f8537b.values();
    }

    public final List zzf(byte[] bArr) {
        List list = (List) this.f8537b.get(zzgwu.zzb(bArr));
        return list != null ? list : Collections.EMPTY_LIST;
    }

    public final boolean zzg() {
        return !this.f8536a.zza().isEmpty();
    }
}
