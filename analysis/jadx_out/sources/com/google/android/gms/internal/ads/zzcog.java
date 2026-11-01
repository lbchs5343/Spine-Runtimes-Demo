package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzcog implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5430a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5431b;

    public zzcog(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3) {
        this.f5430a = zzhgpVar;
        this.f5431b = zzhgpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton = ((JSONObject) this.f5431b.zzb()) == null ? Collections.EMPTY_SET : Collections.singleton(new zzded((zzcny) this.f5430a.zzb(), zzfin.zzc()));
        zzhgf.zzb(singleton);
        return singleton;
    }
}
