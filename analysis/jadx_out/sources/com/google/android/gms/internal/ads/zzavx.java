package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzavx {

    /* renamed from: a, reason: collision with root package name */
    public List f4529a = Collections.EMPTY_LIST;

    public final List zza() {
        List list = this.f4529a;
        this.f4529a = Collections.EMPTY_LIST;
        return list;
    }

    public final void zzb(List list) {
        this.f4529a = new ArrayList(list);
    }
}
