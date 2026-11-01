package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import g.abz;
import g.bpp;
import g.dn;

/* loaded from: classes3.dex */
public final class zzbqk extends zzbpl {

    /* renamed from: a, reason: collision with root package name */
    public final dn f4931a;

    /* renamed from: b, reason: collision with root package name */
    public final zzbwu f4932b;

    public zzbqk(dn dnVar, zzbwu zzbwuVar) {
        this.f4931a = dnVar;
        this.f4932b = zzbwuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zze() throws RemoteException {
        zzbwu zzbwuVar = this.f4932b;
        if (zzbwuVar != null) {
            zzbwuVar.zze(new bpp(this.f4931a));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzf() throws RemoteException {
        zzbwu zzbwuVar = this.f4932b;
        if (zzbwuVar != null) {
            zzbwuVar.zzf(new bpp(this.f4931a));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzg(int i) throws RemoteException {
        zzbwu zzbwuVar = this.f4932b;
        if (zzbwuVar != null) {
            zzbwuVar.zzg(new bpp(this.f4931a), i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzh(abz abzVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzi(int i, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzj(int i) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzk(abz abzVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzl(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzm() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzn() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzo() throws RemoteException {
        zzbwu zzbwuVar = this.f4932b;
        if (zzbwuVar != null) {
            zzbwuVar.zzi(new bpp(this.f4931a));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzp() throws RemoteException {
        zzbwu zzbwuVar = this.f4932b;
        if (zzbwuVar != null) {
            zzbwuVar.zzj(new bpp(this.f4931a));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzq(String str, String str2) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzr(zzbgs zzbgsVar, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzs(zzbwv zzbwvVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzt(zzbwz zzbwzVar) throws RemoteException {
        zzbwu zzbwuVar = this.f4932b;
        if (zzbwuVar != null) {
            zzbwuVar.zzm(new bpp(this.f4931a), new zzbwv(zzbwzVar.zzf(), zzbwzVar.zze()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzu() throws RemoteException {
        zzbwu zzbwuVar = this.f4932b;
        if (zzbwuVar != null) {
            zzbwuVar.zzn(new bpp(this.f4931a));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzv() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzw() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzx() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzy() throws RemoteException {
        zzbwu zzbwuVar = this.f4932b;
        if (zzbwuVar != null) {
            zzbwuVar.zzo(new bpp(this.f4931a));
        }
    }
}
