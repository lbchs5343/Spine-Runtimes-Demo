package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.Pair;
import android.view.Surface;
import g.aks;
import g.ddb;
import g.gyf;
import g.pn;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzaaa implements zzch {

    /* renamed from: a, reason: collision with root package name */
    public static final zzzn f3999a = new Executor() { // from class: com.google.android.gms.internal.ads.zzzn
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
        }
    };

    /* renamed from: b, reason: collision with root package name */
    public zzad f4000b;

    /* renamed from: c, reason: collision with root package name */
    public Pair f4001c;

    /* renamed from: d, reason: collision with root package name */
    public final ddb f4002d;

    /* renamed from: e, reason: collision with root package name */
    public int f4003e;

    /* renamed from: f, reason: collision with root package name */
    public final pn f4004f;

    /* renamed from: g, reason: collision with root package name */
    public final Context f4005g;
    public final zzdc h;
    public int i;
    public zzaam j;
    public final aks k;
    public zzdm l;
    public final zzaap m;
    public final CopyOnWriteArraySet n;

    public /* synthetic */ zzaaa(zzzp zzzpVar) {
        Context context = zzzpVar.f8983c;
        this.f4005g = context;
        aks aksVar = new aks(this, context);
        this.k = aksVar;
        zzdc zzdcVar = zzzpVar.f8982b;
        this.h = zzdcVar;
        zzaap zzaapVar = zzzpVar.f8985e;
        this.m = zzaapVar;
        zzaapVar.zzk(zzdcVar);
        this.f4002d = new ddb(new gyf(this), zzaapVar);
        pn pnVar = zzzpVar.f8981a;
        zzdb.zzb(pnVar);
        this.f4004f = pnVar;
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        this.n = copyOnWriteArraySet;
        this.i = 0;
        copyOnWriteArraySet.add(aksVar);
    }

    public static void o(zzaaa zzaaaVar, long j, long j2) {
        if (zzaaaVar.f4003e == 0) {
            ddb ddbVar = zzaaaVar.f4002d;
            zzaap zzaapVar = ddbVar.f14004d;
            zzaaa zzaaaVar2 = (zzaaa) ddbVar.h.f18999a;
            zzdv zzdvVar = ddbVar.f14003c;
            if (zzdvVar.zzd()) {
                return;
            }
            zzej zzejVar = ddbVar.f14002b;
            long zza = zzdvVar.zza();
            Long l = (Long) zzejVar.zzc(zza);
            if (l != null && l.longValue() != ddbVar.f14001a) {
                ddbVar.f14001a = l.longValue();
                zzaapVar.zzf();
            }
            int zza2 = ddbVar.f14004d.zza(zza, j, j2, ddbVar.f14001a, false, ddbVar.f14007g);
            if (zza2 != 0 && zza2 != 1) {
                if (zza2 == 2 || zza2 == 3 || zza2 == 4) {
                    ddbVar.f14006f = zza;
                    zzdvVar.zzb();
                    Iterator it = zzaaaVar2.n.iterator();
                    while (it.hasNext()) {
                        ((zzzr) it.next()).zzb(zzaaaVar2);
                    }
                    zzdb.zzb(null);
                    throw null;
                }
                return;
            }
            ddbVar.f14006f = zza;
            long zzb = zzdvVar.zzb();
            zzci zzciVar = (zzci) ddbVar.i.zzc(zzb);
            if (zzciVar != null && !zzciVar.equals(zzci.zza) && !zzciVar.equals(ddbVar.j)) {
                ddbVar.j = zzciVar;
                zzab zzabVar = new zzab();
                zzabVar.zzae(zzciVar.zzb);
                zzabVar.zzJ(zzciVar.zzc);
                zzabVar.zzZ("video/raw");
                zzaaaVar2.f4000b = zzabVar.zzaf();
                Iterator it2 = zzaaaVar2.n.iterator();
                while (it2.hasNext()) {
                    ((zzzr) it2.next()).zzc(zzaaaVar2, zzciVar);
                }
            }
            if (zzaapVar.zzp() && zzaaaVar2.f4001c != null) {
                Iterator it3 = zzaaaVar2.n.iterator();
                while (it3.hasNext()) {
                    ((zzzr) it3.next()).zza(zzaaaVar2);
                }
            }
            if (zzaaaVar2.j != null) {
                zzad zzadVar = zzaaaVar2.f4000b;
                if (zzadVar == null) {
                    zzadVar = new zzab().zzaf();
                }
                zzaaaVar2.j.zza(zzb, zzaaaVar2.h.zzc(), zzadVar, null);
            }
            zzdb.zzb(null);
            throw null;
        }
    }

    public static /* synthetic */ void zzk(zzaaa zzaaaVar) {
        int i = zzaaaVar.f4003e - 1;
        zzaaaVar.f4003e = i;
        if (i > 0) {
            return;
        }
        if (i < 0) {
            throw new IllegalStateException(String.valueOf(i));
        }
        zzaaaVar.f4002d.k();
    }

    public final zzabl zzh() {
        return this.k;
    }

    public final void zzr() {
        zzee zzeeVar = zzee.zza;
        zzeeVar.zzb();
        zzeeVar.zza();
        this.f4001c = null;
    }

    public final void zzs() {
        if (this.i == 2) {
            return;
        }
        zzdm zzdmVar = this.l;
        if (zzdmVar != null) {
            zzdmVar.zze(null);
        }
        this.f4001c = null;
        this.i = 2;
    }

    public final void zzt(Surface surface, zzee zzeeVar) {
        Pair pair = this.f4001c;
        if (pair != null && ((Surface) pair.first).equals(surface) && ((zzee) this.f4001c.second).equals(zzeeVar)) {
            return;
        }
        this.f4001c = Pair.create(surface, zzeeVar);
        zzeeVar.zzb();
        zzeeVar.zza();
    }
}
