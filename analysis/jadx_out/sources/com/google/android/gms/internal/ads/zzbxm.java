package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import g.agd;
import g.coc;

/* loaded from: classes3.dex */
public final class zzbxm implements coc {

    /* renamed from: a, reason: collision with root package name */
    public final zzbwz f5039a;

    public zzbxm(zzbwz zzbwzVar) {
        this.f5039a = zzbwzVar;
    }

    @Override // g.coc
    public final int getAmount() {
        zzbwz zzbwzVar = this.f5039a;
        if (zzbwzVar != null) {
            try {
                return zzbwzVar.zze();
            } catch (RemoteException unused) {
                zzfxd zzfxdVar = agd.f10175a;
            }
        }
        return 0;
    }

    @Override // g.coc
    public final String getType() {
        zzbwz zzbwzVar = this.f5039a;
        if (zzbwzVar != null) {
            try {
                return zzbwzVar.zzf();
            } catch (RemoteException unused) {
                zzfxd zzfxdVar = agd.f10175a;
            }
        }
        return null;
    }
}
