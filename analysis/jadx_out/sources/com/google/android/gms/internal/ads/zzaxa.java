package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzaxa extends zzaxt {

    /* renamed from: a, reason: collision with root package name */
    public final Map f4574a;

    /* renamed from: b, reason: collision with root package name */
    public final View f4575b;

    /* renamed from: d, reason: collision with root package name */
    public final Context f4576d;

    public zzaxa(zzawf zzawfVar, String str, String str2, zzasf zzasfVar, int i, int i2, Map map, View view, Context context) {
        super(zzawfVar, "SSi9+bc4LjSDCw5XbM9a3o0KjM00NEx8AzpqWTmGrN6ZCy4DwzQ9YQ8F3uOviR+R", "vovSRMWoC6DyReNhMsLU/AHhR3bWlWI4SOQQixDW2Zg=", zzasfVar, i, 85);
        this.f4574a = map;
        this.f4575b = view;
        this.f4576d = context;
    }

    @Override // com.google.android.gms.internal.ads.zzaxt
    public final void c() {
        Map map = this.f4574a;
        long longValue = map.containsKey(1) ? ((Long) map.get(1)).longValue() : Long.MIN_VALUE;
        Map map2 = this.f4574a;
        long[] jArr = {longValue, map2.containsKey(2) ? ((Long) map2.get(2)).longValue() : Long.MIN_VALUE};
        Context context = this.f4576d;
        if (context == null) {
            context = this.k.zzb();
        }
        long[] jArr2 = (long[]) this.j.invoke(null, jArr, context, this.f4575b);
        long j = jArr2[0];
        this.f4574a.put(1, Long.valueOf(jArr2[1]));
        long j2 = jArr2[2];
        this.f4574a.put(2, Long.valueOf(jArr2[3]));
        synchronized (this.i) {
            this.i.zzv(j);
            this.i.zzu(j2);
        }
    }
}
