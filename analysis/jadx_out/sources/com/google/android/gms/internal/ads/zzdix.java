package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.cbz;
import g.chh;
import g.fvh;

/* loaded from: classes3.dex */
public final class zzdix extends chh {

    /* renamed from: a, reason: collision with root package name */
    public final zzbpv f6055a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f6056b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final cbz f6057c;

    public zzdix(cbz cbzVar, zzbpv zzbpvVar) {
        this.f6057c = cbzVar;
        this.f6055a = zzbpvVar;
    }

    @Override // g.cbz
    public final float zze() throws RemoteException {
        throw new RemoteException();
    }

    @Override // g.cbz
    public final float zzf() throws RemoteException {
        zzbpv zzbpvVar = this.f6055a;
        return zzbpvVar != null ? zzbpvVar.zzg() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    @Override // g.cbz
    public final float zzg() throws RemoteException {
        zzbpv zzbpvVar = this.f6055a;
        return zzbpvVar != null ? zzbpvVar.zzh() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    @Override // g.cbz
    public final int zzh() throws RemoteException {
        throw new RemoteException();
    }

    @Override // g.cbz
    public final fvh zzi() throws RemoteException {
        synchronized (this.f6056b) {
            try {
                cbz cbzVar = this.f6057c;
                if (cbzVar == null) {
                    return null;
                }
                return cbzVar.zzi();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.cbz
    public final void zzj(boolean z) throws RemoteException {
        throw new RemoteException();
    }

    @Override // g.cbz
    public final void zzk() throws RemoteException {
        throw new RemoteException();
    }

    @Override // g.cbz
    public final void zzl() throws RemoteException {
        throw new RemoteException();
    }

    @Override // g.cbz
    public final void zzm(fvh fvhVar) throws RemoteException {
        synchronized (this.f6056b) {
            try {
                cbz cbzVar = this.f6057c;
                if (cbzVar != null) {
                    cbzVar.zzm(fvhVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.cbz
    public final void zzn() throws RemoteException {
        throw new RemoteException();
    }

    @Override // g.cbz
    public final boolean zzo() throws RemoteException {
        throw new RemoteException();
    }

    @Override // g.cbz
    public final boolean zzp() throws RemoteException {
        throw new RemoteException();
    }

    @Override // g.cbz
    public final boolean zzq() throws RemoteException {
        throw new RemoteException();
    }
}
