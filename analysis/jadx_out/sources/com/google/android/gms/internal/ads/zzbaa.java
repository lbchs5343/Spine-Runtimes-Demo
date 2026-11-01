package com.google.android.gms.internal.ads;

import g.abz;
import g.fle;

/* loaded from: classes3.dex */
public final class zzbaa extends zzbah {

    /* renamed from: a, reason: collision with root package name */
    public final fle f4663a;

    /* renamed from: b, reason: collision with root package name */
    public final String f4664b;

    public zzbaa(fle fleVar, String str) {
        this.f4663a = fleVar;
        this.f4664b = str;
    }

    @Override // com.google.android.gms.internal.ads.zzbai
    public final void zzb(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbai
    public final void zzc(abz abzVar) {
        fle fleVar = this.f4663a;
        if (fleVar != null) {
            fleVar.c(abzVar.zzb());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbai
    public final void zzd(zzbaf zzbafVar) {
        fle fleVar = this.f4663a;
        if (fleVar != null) {
            fleVar.d(new zzbab(zzbafVar, this.f4664b));
        }
    }
}
