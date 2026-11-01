package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import g.abz;

/* loaded from: classes3.dex */
public class zzekp extends zzbpl {

    /* renamed from: c, reason: collision with root package name */
    public final zzdfg f7174c;

    /* renamed from: d, reason: collision with root package name */
    public final zzcys f7175d;

    /* renamed from: e, reason: collision with root package name */
    public final zzcwz f7176e;

    /* renamed from: f, reason: collision with root package name */
    public final zzcxe f7177f;

    /* renamed from: g, reason: collision with root package name */
    public final zzcxt f7178g;
    public final zzcxy h;
    public final zzcwk i;
    public final zzdbe j;
    public final zzdej k;
    public final zzdbi m;

    public zzekp(zzcwk zzcwkVar, zzdej zzdejVar, zzcxe zzcxeVar, zzcxt zzcxtVar, zzcxy zzcxyVar, zzdbi zzdbiVar, zzcys zzcysVar, zzdfg zzdfgVar, zzdbe zzdbeVar, zzcwz zzcwzVar) {
        this.i = zzcwkVar;
        this.k = zzdejVar;
        this.f7177f = zzcxeVar;
        this.f7178g = zzcxtVar;
        this.h = zzcxyVar;
        this.m = zzdbiVar;
        this.f7175d = zzcysVar;
        this.f7174c = zzdfgVar;
        this.j = zzdbeVar;
        this.f7176e = zzcwzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zze() {
        this.i.onAdClicked();
        this.k.zzdG();
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzf() {
        this.f7175d.zzdu(4);
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzg(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzh(abz abzVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzi(int i, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    @Deprecated
    public final void zzj(int i) throws RemoteException {
        zzk(new abz(i, "", "undefined", null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzk(abz abzVar) {
        this.f7176e.zza(zzfgq.zzc(8, abzVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzl(String str) {
        zzk(new abz(0, str, "undefined", null, null));
    }

    public void zzm() {
        this.f7177f.zza();
        this.j.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzn() {
        this.f7178g.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzo() {
        this.h.zzs();
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzp() {
        this.f7175d.zzdr();
        this.j.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzq(String str, String str2) {
        this.m.zzb(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzr(zzbgs zzbgsVar, String str) {
    }

    public void zzs(zzbwv zzbwvVar) {
    }

    public void zzt(zzbwz zzbwzVar) throws RemoteException {
    }

    public void zzu() throws RemoteException {
    }

    public void zzv() {
        this.f7174c.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzw() {
        this.f7174c.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzx() throws RemoteException {
        this.f7174c.zzc();
    }

    public void zzy() {
        this.f7174c.zzd();
    }
}
