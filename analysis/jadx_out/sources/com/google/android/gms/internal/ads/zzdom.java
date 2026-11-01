package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import g.agd;
import g.bcl;
import g.cbz;
import g.fvh;

/* loaded from: classes3.dex */
public final class zzdom extends bcl {

    /* renamed from: a, reason: collision with root package name */
    public final zzdiy f6318a;

    public zzdom(zzdiy zzdiyVar) {
        this.f6318a = zzdiyVar;
    }

    @Override // g.bcl
    public final void onVideoEnd() {
        cbz zzj = this.f6318a.zzj();
        fvh fvhVar = null;
        if (zzj != null) {
            try {
                fvhVar = zzj.zzi();
            } catch (RemoteException unused) {
            }
        }
        if (fvhVar == null) {
            return;
        }
        try {
            fvhVar.zze();
        } catch (RemoteException unused2) {
            zzfxd zzfxdVar = agd.f10175a;
        }
    }

    @Override // g.bcl
    public final void onVideoPause() {
        cbz zzj = this.f6318a.zzj();
        fvh fvhVar = null;
        if (zzj != null) {
            try {
                fvhVar = zzj.zzi();
            } catch (RemoteException unused) {
            }
        }
        if (fvhVar == null) {
            return;
        }
        try {
            fvhVar.zzg();
        } catch (RemoteException unused2) {
            zzfxd zzfxdVar = agd.f10175a;
        }
    }

    @Override // g.bcl
    public final void onVideoStart() {
        cbz zzj = this.f6318a.zzj();
        fvh fvhVar = null;
        if (zzj != null) {
            try {
                fvhVar = zzj.zzi();
            } catch (RemoteException unused) {
            }
        }
        if (fvhVar == null) {
            return;
        }
        try {
            fvhVar.zzi();
        } catch (RemoteException unused2) {
            zzfxd zzfxdVar = agd.f10175a;
        }
    }
}
