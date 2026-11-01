package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class zzgnw {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgnw f8512a = new zzgnw();

    /* renamed from: b, reason: collision with root package name */
    public final AtomicReference f8513b = new AtomicReference(new zzgoq(new zzgon()));

    public static zzgnw zza() {
        return f8512a;
    }

    public final Class zzb(Class cls) throws GeneralSecurityException {
        return ((zzgoq) this.f8513b.get()).zza(cls);
    }

    public final Object zzc(zzgfw zzgfwVar, Class cls) throws GeneralSecurityException {
        return ((zzgoq) this.f8513b.get()).zzb(zzgfwVar, cls);
    }

    public final Object zzd(zzgou zzgouVar, Class cls) throws GeneralSecurityException {
        return ((zzgoq) this.f8513b.get()).zzc(zzgouVar, cls);
    }

    public final synchronized void zze(zzgom zzgomVar) throws GeneralSecurityException {
        zzgon zzgonVar = new zzgon((zzgoq) this.f8513b.get());
        zzgonVar.zza(zzgomVar);
        this.f8513b.set(new zzgoq(zzgonVar));
    }

    public final synchronized void zzf(zzgov zzgovVar) throws GeneralSecurityException {
        zzgon zzgonVar = new zzgon((zzgoq) this.f8513b.get());
        zzgonVar.zzb(zzgovVar);
        this.f8513b.set(new zzgoq(zzgonVar));
    }
}
