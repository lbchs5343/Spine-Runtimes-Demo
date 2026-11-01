package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzcoe implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5426a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5427b;

    public zzcoe(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3) {
        this.f5426a = zzhgpVar;
        this.f5427b = zzhgpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton = ((JSONObject) this.f5427b.zzb()) == null ? Collections.EMPTY_SET : Collections.singleton(new zzded((zzcny) this.f5426a.zzb(), zzfin.zzc()));
        zzhgf.zzb(singleton);
        return singleton;
    }
}
