package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzcob implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5420a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5421b;

    public zzcob(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3) {
        this.f5420a = zzhgpVar;
        this.f5421b = zzhgpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton = ((JSONObject) this.f5421b.zzb()) == null ? Collections.EMPTY_SET : Collections.singleton(new zzded((zzcny) this.f5420a.zzb(), zzfin.zzc()));
        zzhgf.zzb(singleton);
        return singleton;
    }
}
