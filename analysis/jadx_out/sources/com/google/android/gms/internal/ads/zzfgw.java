package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import g.abz;
import java.util.HashSet;

/* loaded from: classes3.dex */
public final class zzfgw implements zzcwp {

    /* renamed from: a, reason: collision with root package name */
    public final zzcad f7889a;

    /* renamed from: b, reason: collision with root package name */
    public final HashSet f7890b = new HashSet();

    /* renamed from: c, reason: collision with root package name */
    public final Context f7891c;

    public zzfgw(Context context, zzcad zzcadVar) {
        this.f7891c = context;
        this.f7889a = zzcadVar;
    }

    public final Bundle zzb() {
        return this.f7889a.zzn(this.f7891c, this);
    }

    public final synchronized void zzc(HashSet hashSet) {
        this.f7890b.clear();
        this.f7890b.addAll(hashSet);
    }

    @Override // com.google.android.gms.internal.ads.zzcwp
    public final synchronized void zzdB(abz abzVar) {
        if (abzVar.zza != 3) {
            this.f7889a.zzl(this.f7890b);
        }
    }
}
