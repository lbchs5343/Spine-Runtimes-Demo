package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes3.dex */
public final class zzgng {

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f8493a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public zzgnd f8494b = zzgnd.zza;

    /* renamed from: c, reason: collision with root package name */
    public Integer f8495c = null;

    public final zzgng zza(zzgfy zzgfyVar, int i, String str, String str2) {
        ArrayList arrayList = this.f8493a;
        if (arrayList == null) {
            throw new IllegalStateException("addEntry cannot be called after build()");
        }
        arrayList.add(new zzgnh(zzgfyVar, i, str, str2));
        return this;
    }

    public final zzgng zzb(zzgnd zzgndVar) {
        if (this.f8493a == null) {
            throw new IllegalStateException("setAnnotations cannot be called after build()");
        }
        this.f8494b = zzgndVar;
        return this;
    }

    public final zzgng zzc(int i) {
        if (this.f8493a == null) {
            throw new IllegalStateException("setPrimaryKeyId cannot be called after build()");
        }
        this.f8495c = Integer.valueOf(i);
        return this;
    }

    public final zzgnj zzd() throws GeneralSecurityException {
        if (this.f8493a == null) {
            throw new IllegalStateException("cannot call build() twice");
        }
        Integer num = this.f8495c;
        if (num != null) {
            int intValue = num.intValue();
            ArrayList arrayList = this.f8493a;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                int zza = ((zzgnh) arrayList.get(i)).zza();
                i++;
                if (zza == intValue) {
                }
            }
            throw new GeneralSecurityException("primary key ID is not present in entries");
        }
        zzgnj zzgnjVar = new zzgnj(this.f8494b, Collections.unmodifiableList(this.f8493a), this.f8495c);
        this.f8493a = null;
        return zzgnjVar;
    }
}
