package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import g.agd;
import g.bjq;
import g.bpp;
import g.cbz;
import g.edt;
import g.gcq;
import g.gfc;
import g.gga;
import g.gwt;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzdnm extends zzbhu {

    /* renamed from: a, reason: collision with root package name */
    public final zzdiy f6251a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdsm f6252b;

    /* renamed from: c, reason: collision with root package name */
    public final String f6253c;

    /* renamed from: d, reason: collision with root package name */
    public final zzdit f6254d;

    public zzdnm(String str, zzdit zzditVar, zzdiy zzdiyVar, zzdsm zzdsmVar) {
        this.f6253c = str;
        this.f6254d = zzditVar;
        this.f6251a = zzdiyVar;
        this.f6252b = zzdsmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final void zzA() {
        this.f6254d.zzH();
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final void zzB(Bundle bundle) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzmF)).booleanValue()) {
            this.f6254d.zzI(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final void zzC(Bundle bundle) throws RemoteException {
        this.f6254d.zzM(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final void zzD() {
        this.f6254d.zzO();
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final void zzE(gfc gfcVar) throws RemoteException {
        this.f6254d.zzP(gfcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final void zzF(gwt gwtVar) throws RemoteException {
        try {
            if (!gwtVar.zzf()) {
                this.f6252b.zze();
            }
        } catch (RemoteException unused) {
            zzfxd zzfxdVar = agd.f10175a;
        }
        this.f6254d.zzQ(gwtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final void zzG(zzbhs zzbhsVar) throws RemoteException {
        this.f6254d.zzR(zzbhsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final boolean zzH() {
        return this.f6254d.zzW();
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final boolean zzI() throws RemoteException {
        zzdiy zzdiyVar = this.f6251a;
        return (zzdiyVar.zzH().isEmpty() || zzdiyVar.zzk() == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final boolean zzJ(Bundle bundle) throws RemoteException {
        return this.f6254d.zzZ(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final double zze() throws RemoteException {
        return this.f6251a.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final Bundle zzf() throws RemoteException {
        return this.f6251a.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final gcq zzg() throws RemoteException {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgD)).booleanValue()) {
            return this.f6254d.zzm();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final cbz zzh() throws RemoteException {
        return this.f6251a.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final zzbfr zzi() throws RemoteException {
        return this.f6251a.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final zzbfv zzj() throws RemoteException {
        return this.f6254d.zzc().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final zzbfy zzk() throws RemoteException {
        return this.f6251a.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final bjq zzl() throws RemoteException {
        return this.f6251a.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final bjq zzm() throws RemoteException {
        return new bpp(this.f6254d);
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final String zzn() throws RemoteException {
        return this.f6251a.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final String zzo() throws RemoteException {
        return this.f6251a.zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final String zzp() throws RemoteException {
        return this.f6251a.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final String zzq() throws RemoteException {
        return this.f6251a.zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final String zzr() throws RemoteException {
        return this.f6253c;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final String zzs() throws RemoteException {
        return this.f6251a.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final String zzt() throws RemoteException {
        return this.f6251a.zzE();
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final List zzu() throws RemoteException {
        return this.f6251a.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final List zzv() throws RemoteException {
        return zzI() ? this.f6251a.zzH() : Collections.EMPTY_LIST;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final void zzw() throws RemoteException {
        this.f6254d.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final void zzx() throws RemoteException {
        this.f6254d.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final void zzy(gga ggaVar) throws RemoteException {
        this.f6254d.zzC(ggaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final void zzz(Bundle bundle) throws RemoteException {
        this.f6254d.zzG(bundle);
    }
}
