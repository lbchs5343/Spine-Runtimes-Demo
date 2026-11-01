package com.google.android.gms.internal.ads;

import java.util.AbstractList;

/* loaded from: classes3.dex */
public final class zzgzh extends AbstractList {

    /* renamed from: a, reason: collision with root package name */
    public final zzgzf f8686a;

    /* renamed from: b, reason: collision with root package name */
    public final zzgzg f8687b;

    public zzgzh(zzgzf zzgzfVar, zzgzg zzgzgVar) {
        this.f8686a = zzgzfVar;
        this.f8687b = zzgzgVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        return this.f8687b.zzb(this.f8686a.zzd(i));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8686a.size();
    }
}
