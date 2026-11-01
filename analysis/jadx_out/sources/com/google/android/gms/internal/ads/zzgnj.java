package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzgnj {

    /* renamed from: a, reason: collision with root package name */
    public final zzgnd f8500a;

    /* renamed from: b, reason: collision with root package name */
    public final List f8501b;

    /* renamed from: c, reason: collision with root package name */
    public final Integer f8502c;

    public /* synthetic */ zzgnj(zzgnd zzgndVar, List list, Integer num) {
        this.f8500a = zzgndVar;
        this.f8501b = list;
        this.f8502c = num;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgnj)) {
            return false;
        }
        zzgnj zzgnjVar = (zzgnj) obj;
        return this.f8500a.equals(zzgnjVar.f8500a) && this.f8501b.equals(zzgnjVar.f8501b) && Objects.equals(this.f8502c, zzgnjVar.f8502c);
    }

    public final int hashCode() {
        return Objects.hash(this.f8500a, this.f8501b);
    }

    public final String toString() {
        return String.format("(annotations=%s, entries=%s, primaryKeyId=%s)", this.f8500a, this.f8501b, this.f8502c);
    }
}
