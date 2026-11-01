package com.google.android.gms.internal.ads;

import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class zzfot {

    /* renamed from: a, reason: collision with root package name */
    public final zzfnu f8110a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f8111b;

    public zzfot(zzfnu zzfnuVar, String str) {
        ArrayList arrayList = new ArrayList();
        this.f8111b = arrayList;
        this.f8110a = zzfnuVar;
        arrayList.add(str);
    }

    public final zzfnu zza() {
        return this.f8110a;
    }

    public final ArrayList zzb() {
        return this.f8111b;
    }

    public final void zzc(String str) {
        this.f8111b.add(str);
    }
}
