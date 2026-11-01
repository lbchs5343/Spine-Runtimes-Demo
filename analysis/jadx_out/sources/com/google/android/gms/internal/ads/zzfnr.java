package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

/* loaded from: classes3.dex */
public final class zzfnr {

    /* renamed from: a, reason: collision with root package name */
    public static final zzfnr f8072a = new zzfnr();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f8073b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f8074c = new ArrayList();

    public static zzfnr zza() {
        return f8072a;
    }

    public final Collection zzb() {
        return Collections.unmodifiableCollection(this.f8074c);
    }

    public final Collection zzc() {
        return Collections.unmodifiableCollection(this.f8073b);
    }

    public final void zzd(zzfna zzfnaVar) {
        this.f8073b.add(zzfnaVar);
    }

    public final void zze(zzfna zzfnaVar) {
        boolean zzg = zzg();
        this.f8073b.remove(zzfnaVar);
        this.f8074c.remove(zzfnaVar);
        if (!zzg || zzg()) {
            return;
        }
        zzfnz.zzb().zzg();
    }

    public final void zzf(zzfna zzfnaVar) {
        boolean zzg = zzg();
        this.f8074c.add(zzfnaVar);
        if (zzg) {
            return;
        }
        zzfnz.zzb().zzf();
    }

    public final boolean zzg() {
        return this.f8074c.size() > 0;
    }
}
