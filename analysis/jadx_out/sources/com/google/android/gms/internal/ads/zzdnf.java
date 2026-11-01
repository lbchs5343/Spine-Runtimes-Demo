package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import g.bjq;
import g.bpp;
import g.cbz;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzdnf extends zzbgm {

    /* renamed from: a, reason: collision with root package name */
    public final zzdiy f6231a;

    /* renamed from: b, reason: collision with root package name */
    public final String f6232b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdit f6233c;

    public zzdnf(String str, zzdit zzditVar, zzdiy zzdiyVar) {
        this.f6232b = str;
        this.f6233c = zzditVar;
        this.f6231a = zzdiyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final double zzb() throws RemoteException {
        return this.f6231a.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final Bundle zzc() throws RemoteException {
        return this.f6231a.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final cbz zzd() throws RemoteException {
        return this.f6231a.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final zzbfr zze() throws RemoteException {
        return this.f6231a.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final zzbfy zzf() throws RemoteException {
        return this.f6231a.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final bjq zzg() throws RemoteException {
        return this.f6231a.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final bjq zzh() throws RemoteException {
        return new bpp(this.f6233c);
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final String zzi() throws RemoteException {
        return this.f6231a.zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final String zzj() throws RemoteException {
        return this.f6231a.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final String zzk() throws RemoteException {
        return this.f6231a.zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final String zzl() throws RemoteException {
        return this.f6232b;
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final String zzm() throws RemoteException {
        return this.f6231a.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final String zzn() throws RemoteException {
        return this.f6231a.zzE();
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final List zzo() throws RemoteException {
        return this.f6231a.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final void zzp() throws RemoteException {
        this.f6233c.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final void zzq(Bundle bundle) throws RemoteException {
        this.f6233c.zzG(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final void zzr(Bundle bundle) throws RemoteException {
        this.f6233c.zzM(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final boolean zzs(Bundle bundle) throws RemoteException {
        return this.f6233c.zzZ(bundle);
    }
}
