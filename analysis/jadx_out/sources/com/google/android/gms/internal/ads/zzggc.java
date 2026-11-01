package com.google.android.gms.internal.ads;

import g.awf;
import g.bfy;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class zzggc {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f8269a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final zzgnd f8270b = zzgnd.zza;

    /* renamed from: c, reason: collision with root package name */
    public boolean f8271c = false;

    public final zzggc zza(zzgga zzggaVar) {
        if (zzggaVar.f8265b != null) {
            throw new IllegalStateException("Entry has already been added to a KeysetHandle.Builder");
        }
        boolean z = zzggaVar.f8266c;
        ArrayList arrayList = this.f8269a;
        if (z) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((zzgga) it.next()).f8266c = false;
            }
        }
        zzggaVar.f8265b = this;
        arrayList.add(zzggaVar);
        return this;
    }

    public final zzggf zzb() throws GeneralSecurityException {
        int i;
        int i2;
        bfy bfyVar = bfy.h;
        if (this.f8271c) {
            throw new GeneralSecurityException("KeysetHandle.Builder#build must only be called once");
        }
        char c2 = 1;
        this.f8271c = true;
        zzgui zzc = zzgum.zzc();
        ArrayList arrayList = this.f8269a;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int i3 = 0;
        while (i3 < arrayList.size() - 1) {
            int i4 = i3 + 1;
            if (((zzgga) arrayList.get(i3)).f8264a == bfyVar && ((zzgga) arrayList.get(i4)).f8264a != bfyVar) {
                throw new GeneralSecurityException("Entries with 'withRandomId()' may only be followed by other entries with 'withRandomId()'.");
            }
            i3 = i4;
        }
        HashSet hashSet = new HashSet();
        Iterator it = arrayList.iterator();
        Integer num = null;
        while (it.hasNext()) {
            zzgga zzggaVar = (zzgga) it.next();
            zzgfy zzgfyVar = zzggaVar.f8267d;
            zzgfy zzgfyVar2 = zzggaVar.f8267d;
            zzggj zzggjVar = zzggaVar.f8268e;
            bfy bfyVar2 = zzggaVar.f8264a;
            if (bfyVar2 == null) {
                throw new GeneralSecurityException("No ID was set (with withFixedId or withRandomId)");
            }
            int i5 = 4;
            if (bfyVar2 == bfyVar) {
                i = 0;
                while (true) {
                    if (i != 0 && !hashSet.contains(Integer.valueOf(i))) {
                        break;
                    }
                    SecureRandom secureRandom = new SecureRandom();
                    byte[] bArr = new byte[i5];
                    int i6 = 0;
                    while (i6 == 0) {
                        secureRandom.nextBytes(bArr);
                        i6 = ((bArr[0] & 255) << 24) | ((bArr[c2] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255);
                        c2 = 1;
                        i5 = 4;
                    }
                    i = i6;
                }
            } else {
                i = 0;
            }
            Integer valueOf = Integer.valueOf(i);
            if (hashSet.contains(valueOf)) {
                throw new GeneralSecurityException(awf.b(i, "Id ", " is used twice in the keyset"));
            }
            hashSet.add(valueOf);
            zzgfw zza = zzgnp.zzb().zza(zzggjVar, true != zzggjVar.zza() ? null : valueOf);
            zzggd zzggdVar = new zzggd(zza);
            zzgow zzgowVar = (zzgow) zzgnz.zzc().zzd(zza, zzgow.class, zzggn.f8277a);
            Integer zzf = zzgowVar.zzf();
            if (zzf != null && zzf.intValue() != i) {
                throw new GeneralSecurityException("Wrong ID set for key with ID requirement");
            }
            zzgfy zzgfyVar3 = zzgfy.zza;
            if (zzgfyVar3.equals(zzgfyVar2)) {
                i2 = 3;
            } else if (zzgfy.zzb.equals(zzgfyVar2)) {
                i2 = 4;
            } else {
                if (!zzgfy.zzc.equals(zzgfyVar2)) {
                    throw new IllegalStateException("Unknown key status");
                }
                i2 = 5;
            }
            zzguj zzc2 = zzguk.zzc();
            bfy bfyVar3 = bfyVar;
            zzgtx zza2 = zzgua.zza();
            zza2.zzb(zzgowVar.zzg());
            zza2.zzc(zzgowVar.zze());
            zza2.zza(zzgowVar.zzb());
            zzc2.zza(zza2);
            zzc2.zzd(i2);
            zzc2.zzb(i);
            zzc2.zzc(zzgowVar.zzc());
            zzc.zza((zzguk) zzc2.zzbr());
            if (zzggaVar.f8266c) {
                if (num != null) {
                    throw new GeneralSecurityException("Two primaries were set");
                }
                if (zzgfyVar2 != zzgfyVar3) {
                    throw new GeneralSecurityException("Primary key is not enabled");
                }
                num = valueOf;
            }
            arrayList2.add(zzggdVar);
            bfyVar = bfyVar3;
            c2 = 1;
        }
        if (num == null) {
            throw new GeneralSecurityException("No primary was set");
        }
        zzc.zzb(num.intValue());
        zzgum zzgumVar = (zzgum) zzc.zzbr();
        if (zzgumVar == null || zzgumVar.zza() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        return new zzggf(zzgumVar, arrayList2, this.f8270b);
    }
}
