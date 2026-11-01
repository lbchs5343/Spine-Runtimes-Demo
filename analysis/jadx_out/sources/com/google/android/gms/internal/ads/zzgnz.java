package com.google.android.gms.internal.ads;

import g.bnv;
import java.security.GeneralSecurityException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class zzgnz {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgnz f8514a = (zzgnz) zzgpi.zza(new zzgph() { // from class: com.google.android.gms.internal.ads.zzgnx
        @Override // com.google.android.gms.internal.ads.zzgph
        public final Object zza() {
            zzgnz zzgnzVar = new zzgnz();
            zzgnzVar.zzg(new bnv(new zzgmu() { // from class: com.google.android.gms.internal.ads.zzgny
                @Override // com.google.android.gms.internal.ads.zzgmu
                public final zzgpb zza(zzgfw zzgfwVar, zzggn zzggnVar) {
                    return ((zzgmz) zzgfwVar).zza(zzggnVar);
                }
            }, zzgmz.class, zzgow.class));
            return zzgnzVar;
        }
    });

    /* renamed from: b, reason: collision with root package name */
    public final AtomicReference f8515b = new AtomicReference(new zzgpg(new zzgpc()));

    public static zzgnz zzc() {
        return f8514a;
    }

    public final zzgfw zza(zzgpb zzgpbVar, zzggn zzggnVar) throws GeneralSecurityException {
        return ((zzgpg) this.f8515b.get()).zza(zzgpbVar, zzggnVar);
    }

    public final zzggj zzb(zzgpb zzgpbVar) throws GeneralSecurityException {
        return ((zzgpg) this.f8515b.get()).zzb(zzgpbVar);
    }

    public final zzgpb zzd(zzgfw zzgfwVar, Class cls, zzggn zzggnVar) throws GeneralSecurityException {
        return ((zzgpg) this.f8515b.get()).zzc(zzgfwVar, cls, zzggnVar);
    }

    public final zzgpb zze(zzggj zzggjVar, Class cls) throws GeneralSecurityException {
        return ((zzgpg) this.f8515b.get()).zzd(zzggjVar, cls);
    }

    public final synchronized void zzf(zzgms zzgmsVar) throws GeneralSecurityException {
        zzgpc zzgpcVar = new zzgpc((zzgpg) this.f8515b.get());
        zzgpcVar.zza(zzgmsVar);
        this.f8515b.set(new zzgpg(zzgpcVar));
    }

    public final synchronized void zzg(zzgmw zzgmwVar) throws GeneralSecurityException {
        zzgpc zzgpcVar = new zzgpc((zzgpg) this.f8515b.get());
        zzgpcVar.zzb(zzgmwVar);
        this.f8515b.set(new zzgpg(zzgpcVar));
    }

    public final synchronized void zzh(zzgoe zzgoeVar) throws GeneralSecurityException {
        zzgpc zzgpcVar = new zzgpc((zzgpg) this.f8515b.get());
        zzgpcVar.zzc(zzgoeVar);
        this.f8515b.set(new zzgpg(zzgpcVar));
    }

    public final synchronized void zzi(zzgoi zzgoiVar) throws GeneralSecurityException {
        zzgpc zzgpcVar = new zzgpc((zzgpg) this.f8515b.get());
        zzgpcVar.zzd(zzgoiVar);
        this.f8515b.set(new zzgpg(zzgpcVar));
    }

    public final boolean zzj(zzgpb zzgpbVar) {
        return ((zzgpg) this.f8515b.get()).zzi(zzgpbVar);
    }

    public final boolean zzk(zzgpb zzgpbVar) {
        return ((zzgpg) this.f8515b.get()).zzj(zzgpbVar);
    }
}
