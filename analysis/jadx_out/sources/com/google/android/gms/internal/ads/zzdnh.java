package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import g.bjq;
import g.bpp;
import g.cbz;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzdnh extends zzbgo {

    /* renamed from: a, reason: collision with root package name */
    public final zzdiy f6237a;

    /* renamed from: b, reason: collision with root package name */
    public final String f6238b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdit f6239c;

    public zzdnh(String str, zzdit zzditVar, zzdiy zzdiyVar) {
        this.f6238b = str;
        this.f6239c = zzditVar;
        this.f6237a = zzdiyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgp
    public final Bundle zzb() throws RemoteException {
        return this.f6237a.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzbgp
    public final cbz zzc() throws RemoteException {
        return this.f6237a.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbgp
    public final zzbfr zzd() throws RemoteException {
        return this.f6237a.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzbgp
    public final zzbfy zze() throws RemoteException {
        return this.f6237a.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzbgp
    public final bjq zzf() throws RemoteException {
        return this.f6237a.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzbgp
    public final bjq zzg() throws RemoteException {
        return new bpp(this.f6239c);
    }

    @Override // com.google.android.gms.internal.ads.zzbgp
    public final String zzh() throws RemoteException {
        return this.f6237a.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzbgp
    public final String zzi() throws RemoteException {
        return this.f6237a.zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzbgp
    public final String zzj() throws RemoteException {
        return this.f6237a.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzbgp
    public final String zzk() throws RemoteException {
        return this.f6237a.zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzbgp
    public final String zzl() throws RemoteException {
        return this.f6238b;
    }

    @Override // com.google.android.gms.internal.ads.zzbgp
    public final List zzm() throws RemoteException {
        return this.f6237a.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzbgp
    public final void zzn() throws RemoteException {
        this.f6239c.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbgp
    public final void zzo(Bundle bundle) throws RemoteException {
        this.f6239c.zzG(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbgp
    public final void zzp(Bundle bundle) throws RemoteException {
        this.f6239c.zzM(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbgp
    public final boolean zzq(Bundle bundle) throws RemoteException {
        return this.f6239c.zzZ(bundle);
    }
}
