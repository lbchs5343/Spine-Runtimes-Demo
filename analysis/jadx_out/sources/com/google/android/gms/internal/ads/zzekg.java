package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import g.agd;
import g.edt;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzekg implements zzefd {

    /* renamed from: a, reason: collision with root package name */
    public final zzelk f7160a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdqd f7161b;

    public zzekg(zzelk zzelkVar, zzdqd zzdqdVar) {
        this.f7160a = zzelkVar;
        this.f7161b = zzdqdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefd
    public final zzefe zza(String str, JSONObject jSONObject) throws zzffv {
        zzbrf zzbrfVar;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbK)).booleanValue()) {
            try {
                zzbrfVar = this.f7161b.zzb(str);
            } catch (RemoteException e2) {
                agd.f("Coundn't create RTB adapter: ", e2);
                zzbrfVar = null;
            }
        } else {
            zzbrfVar = this.f7160a.zza(str);
        }
        if (zzbrfVar == null) {
            return null;
        }
        return new zzefe(zzbrfVar, new zzegx(), str);
    }
}
