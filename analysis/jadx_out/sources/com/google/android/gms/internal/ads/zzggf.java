package com.google.android.gms.internal.ads;

import g.fmx;
import g.tn;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzggf {

    /* renamed from: a, reason: collision with root package name */
    public final zzgum f8273a;

    /* renamed from: b, reason: collision with root package name */
    public final List f8274b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgnd f8275c;

    public /* synthetic */ zzggf(zzgum zzgumVar, ArrayList arrayList, zzgnd zzgndVar) {
        this.f8273a = zzgumVar;
        this.f8274b = arrayList;
        this.f8275c = zzgndVar;
    }

    public zzggf(zzgum zzgumVar, List list) {
        this.f8273a = zzgumVar;
        this.f8274b = list;
        this.f8275c = zzgnd.zza;
    }

    public static final zzggf zzb(zzggj zzggjVar) throws GeneralSecurityException {
        zzggc zzggcVar = new zzggc();
        zzgga zzggaVar = new zzgga(zzggjVar);
        zzggaVar.zzd();
        zzggaVar.zzc();
        zzggcVar.zza(zzggaVar);
        return zzggcVar.zzb();
    }

    public final String toString() {
        int i = fmx.f17055a;
        zzgun zza = zzgur.zza();
        zzgum zzgumVar = this.f8273a;
        zza.zzb(zzgumVar.zzb());
        for (zzguk zzgukVar : zzgumVar.zzh()) {
            zzguo zza2 = zzgup.zza();
            zza2.zzc(zzgukVar.zzb().zzg());
            zza2.zzd(zzgukVar.zzk());
            zza2.zzb(zzgukVar.zzf());
            zza2.zza(zzgukVar.zza());
            zza.zza((zzgup) zza2.zzbr());
        }
        return ((zzgur) zza.zzbr()).toString();
    }

    public final Object zzd(zzgfq zzgfqVar, Class cls) throws GeneralSecurityException {
        zzgmn zzgmnVar = (zzgmn) zzgfqVar;
        Class zza = zzgmnVar.zza(cls);
        if (zza == null) {
            throw new GeneralSecurityException("No wrapper found for ".concat(cls.getName()));
        }
        int i = fmx.f17055a;
        zzgum zzgumVar = this.f8273a;
        int zzb = zzgumVar.zzb();
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        boolean z2 = true;
        for (zzguk zzgukVar : zzgumVar.zzh()) {
            if (zzgukVar.zzk() == 3) {
                if (!zzgukVar.zzj()) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(zzgukVar.zza())));
                }
                if (zzgukVar.zzf() == zzgve.UNKNOWN_PREFIX) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(zzgukVar.zza())));
                }
                if (zzgukVar.zzk() == 2) {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(zzgukVar.zza())));
                }
                if (zzgukVar.zza() == zzb) {
                    if (z) {
                        throw new GeneralSecurityException("keyset contains multiple primary keys");
                    }
                    z = true;
                }
                z2 &= zzgukVar.zzb().zzb() == zzgty.ASYMMETRIC_PUBLIC;
                i3++;
            }
        }
        if (i3 == 0) {
            throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
        }
        if (!z && !z2) {
            throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
        }
        zzgor zzb2 = zzgou.zzb(zza);
        zzb2.zzc(this.f8275c);
        while (true) {
            List list = this.f8274b;
            if (i2 >= list.size()) {
                return zzgmnVar.zzc(zzb2.zzd(), cls);
            }
            zzguk zzd = zzgumVar.zzd(i2);
            if (zzd.zzk() == 3) {
                zzggd zzggdVar = (zzggd) list.get(i2);
                if (zzggdVar == null) {
                    throw new GeneralSecurityException("Key parsing of key with index " + i2 + " and type_url " + zzd.zzb().zzg() + " failed, unable to get primitive");
                }
                zzgfw zza2 = zzggdVar.zza();
                try {
                    Object zzb3 = zzgmnVar.zzb(zza2, zza);
                    if (zzd.zza() == zzgumVar.zzb()) {
                        zzb2.zzb(zzb3, zza2, zzd);
                    } else {
                        zzb2.zza(zzb3, zza2, zzd);
                    }
                } catch (GeneralSecurityException e2) {
                    throw new GeneralSecurityException(tn.r("Unable to get primitive ", zza.toString(), " for key of type ", zzd.zzb().zzg(), ", see https://developers.google.com/tink/faq/registration_errors"), e2);
                }
            }
            i2++;
        }
    }
}
