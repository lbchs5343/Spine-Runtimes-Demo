package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzaxj extends zzaxt {

    /* renamed from: a, reason: collision with root package name */
    public List f4585a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f4586b;

    public zzaxj(zzawf zzawfVar, String str, String str2, zzasf zzasfVar, int i, int i2, Context context) {
        super(zzawfVar, "p2B6bhXfJZNgZ0+I4L4c9cLXJrfGeKZvoxHbzoRookWEJhhW5Gvimq5QvTg4oqLM", "wcFaDbS//5pJ1R+WEpFF/o7BDXsIcxPrCZPKL326+18=", zzasfVar, i, 31);
        this.f4585a = null;
        this.f4586b = context;
    }

    @Override // com.google.android.gms.internal.ads.zzaxt
    public final void c() {
        this.i.zzW(-1L);
        this.i.zzS(-1L);
        Context context = this.f4586b;
        if (context == null) {
            context = this.k.zzb();
        }
        if (this.f4585a == null) {
            this.f4585a = (List) this.j.invoke(null, context);
        }
        List list = this.f4585a;
        if (list == null || list.size() != 2) {
            return;
        }
        synchronized (this.i) {
            this.i.zzW(((Long) this.f4585a.get(0)).longValue());
            this.i.zzS(((Long) this.f4585a.get(1)).longValue());
        }
    }
}
