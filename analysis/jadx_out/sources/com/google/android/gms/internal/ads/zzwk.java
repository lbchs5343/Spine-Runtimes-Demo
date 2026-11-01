package com.google.android.gms.internal.ads;

import android.net.Uri;

/* loaded from: classes3.dex */
public final class zzwk extends zzbv {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f8924a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final zzaw f8925b;

    /* renamed from: c, reason: collision with root package name */
    public final zzaq f8926c;

    /* renamed from: d, reason: collision with root package name */
    public final long f8927d;

    /* renamed from: e, reason: collision with root package name */
    public final long f8928e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f8929f;

    static {
        zzak zzakVar = new zzak();
        zzakVar.zza("SinglePeriodTimeline");
        zzakVar.zzb(Uri.EMPTY);
        zzakVar.zzc();
    }

    public zzwk(long j, long j2, long j3, long j4, long j5, long j6, long j7, boolean z, boolean z2, boolean z3, Object obj, zzaw zzawVar, zzaq zzaqVar) {
        this.f8927d = j4;
        this.f8928e = j5;
        this.f8929f = z;
        zzawVar.getClass();
        this.f8925b = zzawVar;
        this.f8926c = zzaqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbv
    public final int zza(Object obj) {
        return f8924a.equals(obj) ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbv
    public final int zzb() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzbv
    public final int zzc() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzbv
    public final zzbt zzd(int i, zzbt zzbtVar, boolean z) {
        zzdb.zza(i, 0, 1);
        zzbtVar.zzi(null, z ? f8924a : null, 0, this.f8927d, 0L, zzb.zza, false);
        return zzbtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbv
    public final zzbu zze(int i, zzbu zzbuVar, long j) {
        zzdb.zza(i, 0, 1);
        zzbuVar.zza(zzbu.zza, this.f8925b, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, this.f8929f, false, this.f8926c, 0L, this.f8928e, 0, 0, 0L);
        return zzbuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbv
    public final Object zzf(int i) {
        zzdb.zza(i, 0, 1);
        return f8924a;
    }
}
