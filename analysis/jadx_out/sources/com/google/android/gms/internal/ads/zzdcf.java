package com.google.android.gms.internal.ads;

import java.util.HashSet;
import java.util.Set;

/* loaded from: classes3.dex */
public final class zzdcf {

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f5859a;

    /* renamed from: b, reason: collision with root package name */
    public final HashSet f5860b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfch f5861c;

    /* renamed from: d, reason: collision with root package name */
    public final HashSet f5862d;

    /* renamed from: e, reason: collision with root package name */
    public final HashSet f5863e;

    /* renamed from: f, reason: collision with root package name */
    public final HashSet f5864f;

    /* renamed from: g, reason: collision with root package name */
    public final HashSet f5865g;
    public final HashSet h;
    public final HashSet i;
    public zzcwo j;
    public final HashSet k;
    public final HashSet l;
    public final HashSet m;
    public final HashSet n;
    public final HashSet o;
    public final HashSet p;

    public /* synthetic */ zzdcf(zzdcd zzdcdVar) {
        this.h = zzdcdVar.n;
        this.m = zzdcdVar.f5856e;
        this.f5863e = zzdcdVar.i;
        this.f5865g = zzdcdVar.o;
        this.o = zzdcdVar.f5858g;
        this.i = zzdcdVar.f5852a;
        this.p = zzdcdVar.h;
        this.f5859a = zzdcdVar.k;
        this.l = zzdcdVar.f5857f;
        this.n = zzdcdVar.m;
        this.f5860b = zzdcdVar.f5853b;
        this.f5864f = zzdcdVar.j;
        this.f5861c = zzdcdVar.f5854c;
        this.k = zzdcdVar.f5855d;
        this.f5862d = zzdcdVar.l;
    }

    public final zzcwo zza(Set set) {
        if (this.j == null) {
            this.j = new zzcwo(set);
        }
        return this.j;
    }

    public final zzfch zzb() {
        return this.f5861c;
    }

    public final Set zzc() {
        return this.k;
    }

    public final Set zzd() {
        return this.h;
    }

    public final Set zze() {
        return this.f5859a;
    }

    public final Set zzf() {
        return this.l;
    }

    public final Set zzg() {
        return this.f5863e;
    }

    public final Set zzi() {
        return this.i;
    }

    public final Set zzl() {
        return this.f5865g;
    }

    public final Set zzm() {
        return this.f5864f;
    }

    public final Set zzn() {
        return this.f5862d;
    }

    public final Set zzo() {
        return this.f5860b;
    }
}
