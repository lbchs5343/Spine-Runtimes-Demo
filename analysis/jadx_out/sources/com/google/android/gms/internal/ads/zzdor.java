package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import g.agd;
import g.edt;
import g.esy;
import g.ti;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public final class zzdor extends zzcrq {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f6326a;

    /* renamed from: b, reason: collision with root package name */
    public final zzcyg f6327b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcwz f6328c;

    /* renamed from: d, reason: collision with root package name */
    public final zzdgv f6329d;

    /* renamed from: e, reason: collision with root package name */
    public final zzffh f6330e;

    /* renamed from: f, reason: collision with root package name */
    public final zzcsl f6331f;

    /* renamed from: g, reason: collision with root package name */
    public final zzddp f6332g;
    public final Context h;
    public final zzbxt i;
    public boolean j;
    public final zzfqa t;

    public zzdor(zzcrp zzcrpVar, Context context, zzcfk zzcfkVar, zzdgv zzdgvVar, zzddp zzddpVar, zzcwz zzcwzVar, zzcyg zzcygVar, zzcsl zzcslVar, zzfet zzfetVar, zzfqa zzfqaVar, zzffh zzffhVar) {
        super(zzcrpVar);
        this.j = false;
        this.h = context;
        this.f6329d = zzdgvVar;
        this.f6326a = new WeakReference(zzcfkVar);
        this.f6332g = zzddpVar;
        this.f6328c = zzcwzVar;
        this.f6327b = zzcygVar;
        this.f6331f = zzcslVar;
        this.t = zzfqaVar;
        zzbwv zzbwvVar = zzfetVar.zzl;
        this.i = new zzbxt(zzbwvVar != null ? zzbwvVar.zza : "", zzbwvVar != null ? zzbwvVar.zzb : 1);
        this.f6330e = zzffhVar;
    }

    public final void finalize() throws Throwable {
        try {
            final zzcfk zzcfkVar = (zzcfk) this.f6326a.get();
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgB)).booleanValue()) {
                if (!this.j && zzcfkVar != null) {
                    zzcaj.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdoq
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzcfk.this.destroy();
                        }
                    });
                }
            } else if (zzcfkVar != null) {
                zzcfkVar.destroy();
            }
            super.finalize();
        } catch (Throwable th) {
            super.finalize();
            throw th;
        }
    }

    public final Bundle zza() {
        return this.f6327b.zzb();
    }

    public final zzbwz zzc() {
        return this.i;
    }

    public final zzffh zzd() {
        return this.f6330e;
    }

    public final boolean zze() {
        return this.f6331f.zzg();
    }

    public final boolean zzf() {
        return this.j;
    }

    public final boolean zzg() {
        zzcfk zzcfkVar = (zzcfk) this.f6326a.get();
        return (zzcfkVar == null || zzcfkVar.zzaG()) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean zzh(boolean z, Activity activity) {
        zzbce zzbceVar = zzbcn.zzaJ;
        edt edtVar = edt.f15376a;
        boolean booleanValue = ((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue();
        Context context = this.h;
        zzcwz zzcwzVar = this.f6328c;
        if (booleanValue) {
            esy esyVar = ti.f20033a.z;
            if (esy.v(context)) {
                agd.b("Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies");
                zzcwzVar.zzb();
                if (((Boolean) edtVar.f15379d.zza(zzbcn.zzaK)).booleanValue()) {
                    this.t.zza(this.n.zzb.zzb.zzb);
                }
                return false;
            }
        }
        if (this.j) {
            agd.b("The rewarded ad have been showed.");
            zzcwzVar.zza(zzfgq.zzd(10, null, null));
            return false;
        }
        this.j = true;
        zzddp zzddpVar = this.f6332g;
        zzddpVar.zzb();
        if (activity == null) {
            activity = context;
        }
        try {
            this.f6329d.zza(z, activity, zzcwzVar);
            zzddpVar.zza();
            return true;
        } catch (zzdgu e2) {
            zzcwzVar.zzc(e2);
            return false;
        }
    }
}
