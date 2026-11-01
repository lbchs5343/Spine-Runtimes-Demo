package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.internal.ads.zzbbs;
import g.agd;

/* loaded from: classes3.dex */
public final class zzdha implements zzcwm, zzddq {

    /* renamed from: a, reason: collision with root package name */
    public final zzbyv f5970a;

    /* renamed from: b, reason: collision with root package name */
    public final View f5971b;

    /* renamed from: c, reason: collision with root package name */
    public String f5972c;

    /* renamed from: d, reason: collision with root package name */
    public final zzbyr f5973d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f5974e;

    /* renamed from: f, reason: collision with root package name */
    public final zzbbs.zza.EnumC0207zza f5975f;

    public zzdha(zzbyr zzbyrVar, Context context, zzbyv zzbyvVar, View view, zzbbs.zza.EnumC0207zza enumC0207zza) {
        this.f5973d = zzbyrVar;
        this.f5974e = context;
        this.f5970a = zzbyvVar;
        this.f5971b = view;
        this.f5975f = enumC0207zza;
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zza() {
        this.f5973d.zzb(false);
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzc() {
        View view = this.f5971b;
        if (view != null && this.f5972c != null) {
            this.f5970a.zzo(view.getContext(), this.f5972c);
        }
        this.f5973d.zzb(true);
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzds(zzbwj zzbwjVar, String str, String str2) {
        Context context = this.f5974e;
        zzbyv zzbyvVar = this.f5970a;
        if (zzbyvVar.zzp(context)) {
            try {
                Context context2 = this.f5974e;
                zzbyvVar.zzl(context2, zzbyvVar.zza(context2), this.f5973d.zza(), zzbwjVar.zzc(), zzbwjVar.zzb());
            } catch (RemoteException unused) {
                zzfxd zzfxdVar = agd.f10175a;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void zzk() {
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void zzl() {
        zzbbs.zza.EnumC0207zza enumC0207zza = zzbbs.zza.EnumC0207zza.APP_OPEN;
        zzbbs.zza.EnumC0207zza enumC0207zza2 = this.f5975f;
        if (enumC0207zza2 == enumC0207zza) {
            return;
        }
        String zzc = this.f5970a.zzc(this.f5974e);
        this.f5972c = zzc;
        this.f5972c = String.valueOf(zzc).concat(enumC0207zza2 == zzbbs.zza.EnumC0207zza.REWARD_BASED_VIDEO_AD ? "/Rewarded" : "/Interstitial");
    }
}
