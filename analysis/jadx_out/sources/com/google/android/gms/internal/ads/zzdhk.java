package com.google.android.gms.internal.ads;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Collections;
import java.util.Set;

/* loaded from: classes3.dex */
public final class zzdhk implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5991a;

    public zzdhk(zzhgp zzhgpVar) {
        this.f5991a = zzhgpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton = ((zzdhh) this.f5991a).zza().zze() != null ? Collections.singleton(MediationConstant.RIT_TYPE_BANNER) : Collections.EMPTY_SET;
        zzhgf.zzb(singleton);
        return singleton;
    }
}
