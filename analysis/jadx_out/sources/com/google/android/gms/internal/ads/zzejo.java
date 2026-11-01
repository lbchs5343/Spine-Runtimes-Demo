package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes3.dex */
public class zzejo extends zzekp {

    /* renamed from: a, reason: collision with root package name */
    public final zzdeu f7126a;

    public zzejo(zzcwk zzcwkVar, zzdej zzdejVar, zzcxe zzcxeVar, zzcxt zzcxtVar, zzcxy zzcxyVar, zzcwz zzcwzVar, zzdbi zzdbiVar, zzdfg zzdfgVar, zzcys zzcysVar, zzdeu zzdeuVar, zzdbe zzdbeVar) {
        super(zzcwkVar, zzdejVar, zzcxeVar, zzcxtVar, zzcxyVar, zzdbiVar, zzcysVar, zzdfgVar, zzdbeVar, zzcwzVar);
        this.f7126a = zzdeuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzekp, com.google.android.gms.internal.ads.zzbpm
    public final void zzs(zzbwv zzbwvVar) {
        this.f7126a.zza(zzbwvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzekp, com.google.android.gms.internal.ads.zzbpm
    public final void zzt(zzbwz zzbwzVar) throws RemoteException {
        this.f7126a.zza(new zzbwv(zzbwzVar.zzf(), zzbwzVar.zze()));
    }

    @Override // com.google.android.gms.internal.ads.zzekp, com.google.android.gms.internal.ads.zzbpm
    public final void zzu() throws RemoteException {
        this.f7126a.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzekp, com.google.android.gms.internal.ads.zzbpm
    public final void zzv() {
        this.f7126a.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzekp, com.google.android.gms.internal.ads.zzbpm
    public final void zzy() {
        this.f7126a.zzc();
    }
}
