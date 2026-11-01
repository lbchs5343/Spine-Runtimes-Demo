package com.google.android.gms.internal.ads;

import g.eus;
import g.evo;
import g.fim;
import java.util.HashSet;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzdcd {

    /* renamed from: c, reason: collision with root package name */
    public zzfch f5854c;
    public final HashSet h = new HashSet();
    public final HashSet l = new HashSet();
    public final HashSet n = new HashSet();

    /* renamed from: e, reason: collision with root package name */
    public final HashSet f5856e = new HashSet();

    /* renamed from: g, reason: collision with root package name */
    public final HashSet f5858g = new HashSet();
    public final HashSet i = new HashSet();
    public final HashSet o = new HashSet();

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f5852a = new HashSet();
    public final HashSet k = new HashSet();
    public final HashSet m = new HashSet();

    /* renamed from: b, reason: collision with root package name */
    public final HashSet f5853b = new HashSet();

    /* renamed from: f, reason: collision with root package name */
    public final HashSet f5857f = new HashSet();
    public final HashSet j = new HashSet();

    /* renamed from: d, reason: collision with root package name */
    public final HashSet f5855d = new HashSet();

    public final zzdcd zza(evo evoVar, Executor executor) {
        this.n.add(new zzded(evoVar, executor));
        return this;
    }

    public final zzdcd zzb(zzcwp zzcwpVar, Executor executor) {
        this.k.add(new zzded(zzcwpVar, executor));
        return this;
    }

    public final zzdcd zzc(zzcxc zzcxcVar, Executor executor) {
        this.f5857f.add(new zzded(zzcxcVar, executor));
        return this;
    }

    public final zzdcd zzd(zzcxg zzcxgVar, Executor executor) {
        this.i.add(new zzded(zzcxgVar, executor));
        return this;
    }

    public final zzdcd zze(zzcwm zzcwmVar, Executor executor) {
        this.f5858g.add(new zzded(zzcwmVar, executor));
        return this;
    }

    public final zzdcd zzf(zzcya zzcyaVar, Executor executor) {
        this.f5852a.add(new zzded(zzcyaVar, executor));
        return this;
    }

    public final zzdcd zzg(zzcyl zzcylVar, Executor executor) {
        this.o.add(new zzded(zzcylVar, executor));
        return this;
    }

    public final zzdcd zzh(fim fimVar, Executor executor) {
        this.f5855d.add(new zzded(fimVar, executor));
        return this;
    }

    public final zzdcd zzi(zzcyx zzcyxVar, Executor executor) {
        this.j.add(new zzded(zzcyxVar, executor));
        return this;
    }

    public final zzdcd zzj(zzczj zzczjVar, Executor executor) {
        this.l.add(new zzded(zzczjVar, executor));
        return this;
    }

    public final zzdcd zzk(eus eusVar, Executor executor) {
        this.f5853b.add(new zzded(eusVar, executor));
        return this;
    }

    public final zzdcd zzl(zzdel zzdelVar, Executor executor) {
        this.f5856e.add(new zzded(zzdelVar, executor));
        return this;
    }

    public final zzdcd zzm(zzfch zzfchVar) {
        this.f5854c = zzfchVar;
        return this;
    }

    public final zzdcf zzn() {
        return new zzdcf(this);
    }
}
