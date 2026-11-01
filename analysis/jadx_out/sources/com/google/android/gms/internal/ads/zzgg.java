package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzgg {

    /* renamed from: a, reason: collision with root package name */
    public final long f8259a;

    /* renamed from: b, reason: collision with root package name */
    public int f8260b;

    /* renamed from: c, reason: collision with root package name */
    public Uri f8261c;

    /* renamed from: d, reason: collision with root package name */
    public Map f8262d;

    /* renamed from: e, reason: collision with root package name */
    public long f8263e;

    public zzgg() {
        this.f8262d = Collections.EMPTY_MAP;
        this.f8259a = -1L;
    }

    public /* synthetic */ zzgg(zzgi zzgiVar) {
        this.f8261c = zzgiVar.zza;
        this.f8262d = zzgiVar.zzd;
        this.f8263e = zzgiVar.zze;
        this.f8259a = zzgiVar.zzf;
        this.f8260b = zzgiVar.zzg;
    }

    public final zzgg zza(int i) {
        this.f8260b = 6;
        return this;
    }

    public final zzgg zzb(Map map) {
        this.f8262d = map;
        return this;
    }

    public final zzgg zzc(long j) {
        this.f8263e = j;
        return this;
    }

    public final zzgg zzd(Uri uri) {
        this.f8261c = uri;
        return this;
    }

    public final zzgi zze() {
        if (this.f8261c != null) {
            return new zzgi(this.f8261c, this.f8262d, this.f8263e, this.f8259a, this.f8260b);
        }
        throw new IllegalStateException("The uri must be set.");
    }
}
