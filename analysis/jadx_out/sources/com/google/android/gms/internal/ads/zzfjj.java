package com.google.android.gms.internal.ads;

import g.dcy;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public abstract class zzfjj {

    /* renamed from: a, reason: collision with root package name */
    public static final dcy f7921a = zzgei.zzh(null);

    /* renamed from: b, reason: collision with root package name */
    public final zzges f7922b;

    /* renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f7923c;

    /* renamed from: d, reason: collision with root package name */
    public final zzfjk f7924d;

    public zzfjj(zzges zzgesVar, ScheduledExecutorService scheduledExecutorService, zzfjk zzfjkVar) {
        this.f7922b = zzgesVar;
        this.f7923c = scheduledExecutorService;
        this.f7924d = zzfjkVar;
    }

    public abstract String e(Object obj);

    public final zzfiz zza(Object obj, dcy... dcyVarArr) {
        return new zzfiz(this, obj, Arrays.asList(dcyVarArr));
    }

    public final zzfjh zzb(Object obj, dcy dcyVar) {
        return new zzfjh(this, obj, null, dcyVar, Collections.singletonList(dcyVar), dcyVar);
    }
}
