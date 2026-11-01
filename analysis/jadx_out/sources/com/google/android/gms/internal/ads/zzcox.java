package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import g.agd;
import g.edt;
import g.esy;
import g.ti;

/* loaded from: classes3.dex */
public final class zzcox extends zzcrq {

    /* renamed from: a, reason: collision with root package name */
    public final int f5454a;

    /* renamed from: b, reason: collision with root package name */
    public final zzddp f5455b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdgv f5456c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f5457d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f5458e;

    /* renamed from: f, reason: collision with root package name */
    public final zzcwz f5459f;

    /* renamed from: g, reason: collision with root package name */
    public final zzcol f5460g;
    public final zzcfk h;
    public final boolean i;
    public final zzcad j;

    public zzcox(zzcrp zzcrpVar, Context context, zzcfk zzcfkVar, int i, zzcol zzcolVar, zzdgv zzdgvVar, zzddp zzddpVar, zzcwz zzcwzVar, zzcad zzcadVar) {
        super(zzcrpVar);
        this.f5458e = false;
        this.h = zzcfkVar;
        this.f5457d = context;
        this.f5454a = i;
        this.f5460g = zzcolVar;
        this.f5456c = zzdgvVar;
        this.f5455b = zzddpVar;
        this.f5459f = zzcwzVar;
        this.i = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfp)).booleanValue();
        this.j = zzcadVar;
    }

    public final int zza() {
        return this.f5454a;
    }

    @Override // com.google.android.gms.internal.ads.zzcrq
    public final void zzb() {
        super.zzb();
        zzcfk zzcfkVar = this.h;
        if (zzcfkVar != null) {
            zzcfkVar.destroy();
        }
    }

    public final void zzc(zzazz zzazzVar) {
        zzcfk zzcfkVar = this.h;
        if (zzcfkVar != null) {
            zzcfkVar.zzak(zzazzVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v12, types: [android.content.Context] */
    public final void zzd(Activity activity, zzbam zzbamVar, boolean z) throws RemoteException {
        zzcfk zzcfkVar;
        zzfet zzD;
        Activity activity2 = activity;
        if (activity == null) {
            activity2 = this.f5457d;
        }
        zzddp zzddpVar = this.f5455b;
        boolean z2 = this.i;
        if (z2) {
            zzddpVar.zzb();
        }
        zzbce zzbceVar = zzbcn.zzaJ;
        edt edtVar = edt.f15376a;
        zzbcl zzbclVar = edtVar.f15379d;
        zzbcl zzbclVar2 = edtVar.f15379d;
        boolean booleanValue = ((Boolean) zzbclVar.zza(zzbceVar)).booleanValue();
        zzcwz zzcwzVar = this.f5459f;
        if (booleanValue) {
            ti tiVar = ti.f20033a;
            esy esyVar = tiVar.z;
            if (esy.v(activity2)) {
                agd.b("Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies");
                zzcwzVar.zzb();
                if (((Boolean) zzbclVar2.zza(zzbcn.zzaK)).booleanValue()) {
                    new zzfqa(activity2.getApplicationContext(), tiVar.q.f()).zza(this.n.zzb.zzb.zzb);
                    return;
                }
                return;
            }
        }
        if (((Boolean) zzbclVar2.zza(zzbcn.zzlC)).booleanValue() && (zzcfkVar = this.h) != null && (zzD = zzcfkVar.zzD()) != null && zzD.zzar && zzD.zzas != this.j.zzb()) {
            agd.b("The app open consent form has been shown.");
            zzcwzVar.zza(zzfgq.zzd(12, "The consent form has already been shown.", null));
            return;
        }
        if (this.f5458e) {
            agd.b("App open interstitial ad is already visible.");
            zzcwzVar.zza(zzfgq.zzd(10, null, null));
        }
        if (this.f5458e) {
            return;
        }
        try {
            this.f5456c.zza(z, activity2, zzcwzVar);
            if (z2) {
                zzddpVar.zza();
            }
            this.f5458e = true;
        } catch (zzdgu e2) {
            zzcwzVar.zzc(e2);
        }
    }

    public final void zze(long j, int i) {
        this.f5460g.zza(j, i);
    }
}
