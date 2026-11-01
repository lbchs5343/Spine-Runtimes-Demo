package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzgnp {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgnp f8503a;
    public static final /* synthetic */ int zza = 0;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f8504b = new HashMap();

    static {
        zzgno zzgnoVar = new zzgno() { // from class: com.google.android.gms.internal.ads.zzgnn
            @Override // com.google.android.gms.internal.ads.zzgno
            public final zzgfw zza(zzggj zzggjVar, Integer num) {
                zzgnp zzgnpVar = zzgnp.f8503a;
                zzgue zzc = ((zzgna) zzggjVar).zzb().zzc();
                zzgfx zzb = zzgmo.zzc().zzb(zzc.zzi());
                if (!zzgmo.zzc().zze(zzc.zzi())) {
                    throw new GeneralSecurityException("Creating new keys is not allowed.");
                }
                zzgua zza2 = zzb.zza(zzc.zzh());
                return new zzgmz(zzgow.zza(zza2.zzg(), zza2.zzf(), zza2.zzb(), zzc.zzg(), num), zzgfv.zza());
            }
        };
        zzgnp zzgnpVar = new zzgnp();
        try {
            zzgnpVar.zzc(zzgnoVar, zzgna.class);
            f8503a = zzgnpVar;
        } catch (GeneralSecurityException e2) {
            throw new IllegalStateException("unexpected error.", e2);
        }
    }

    public static zzgnp zzb() {
        return f8503a;
    }

    public final zzgfw zza(zzggj zzggjVar, Integer num) throws GeneralSecurityException {
        zzgfw zza2;
        synchronized (this) {
            zzgno zzgnoVar = (zzgno) this.f8504b.get(zzggjVar.getClass());
            if (zzgnoVar == null) {
                throw new GeneralSecurityException("Cannot create a new key for parameters " + zzggjVar.toString() + ": no key creator for this class was registered.");
            }
            zza2 = zzgnoVar.zza(zzggjVar, num);
        }
        return zza2;
    }

    public final synchronized void zzc(zzgno zzgnoVar, Class cls) throws GeneralSecurityException {
        try {
            zzgno zzgnoVar2 = (zzgno) this.f8504b.get(cls);
            if (zzgnoVar2 != null && !zzgnoVar2.equals(zzgnoVar)) {
                throw new GeneralSecurityException("Different key creator for parameters class " + cls.toString() + " already inserted");
            }
            this.f8504b.put(cls, zzgnoVar);
        } catch (Throwable th) {
            throw th;
        }
    }
}
