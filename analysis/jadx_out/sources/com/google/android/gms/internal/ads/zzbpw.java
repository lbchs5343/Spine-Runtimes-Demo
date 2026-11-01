package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import g.chh;
import g.fvh;

/* loaded from: classes3.dex */
public final class zzbpw extends chh {

    /* renamed from: a, reason: collision with root package name */
    public final Object f4914a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public volatile fvh f4915b;

    @Override // g.cbz
    public final float zze() throws RemoteException {
        throw new RemoteException();
    }

    @Override // g.cbz
    public final float zzf() throws RemoteException {
        throw new RemoteException();
    }

    @Override // g.cbz
    public final float zzg() throws RemoteException {
        throw new RemoteException();
    }

    @Override // g.cbz
    public final int zzh() throws RemoteException {
        throw new RemoteException();
    }

    @Override // g.cbz
    public final fvh zzi() throws RemoteException {
        fvh fvhVar;
        synchronized (this.f4914a) {
            fvhVar = this.f4915b;
        }
        return fvhVar;
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
        synchronized (this.f4914a) {
            this.f4915b = fvhVar;
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
