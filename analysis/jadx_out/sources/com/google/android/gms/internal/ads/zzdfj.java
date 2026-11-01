package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import g.agd;
import g.edt;
import g.esy;
import g.ti;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public final class zzdfj extends zzcrq {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f5913a;

    /* renamed from: b, reason: collision with root package name */
    public final zzfqa f5914b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcsl f5915c;

    /* renamed from: d, reason: collision with root package name */
    public final zzddp f5916d;

    /* renamed from: e, reason: collision with root package name */
    public final zzcwz f5917e;

    /* renamed from: f, reason: collision with root package name */
    public final zzdgv f5918f;

    /* renamed from: g, reason: collision with root package name */
    public final Context f5919g;
    public final zzcad h;
    public boolean i;

    public zzdfj(zzcrp zzcrpVar, Context context, zzcfk zzcfkVar, zzddp zzddpVar, zzdgv zzdgvVar, zzcsl zzcslVar, zzfqa zzfqaVar, zzcwz zzcwzVar, zzcad zzcadVar) {
        super(zzcrpVar);
        this.i = false;
        this.f5919g = context;
        this.f5913a = new WeakReference(zzcfkVar);
        this.f5916d = zzddpVar;
        this.f5918f = zzdgvVar;
        this.f5915c = zzcslVar;
        this.f5914b = zzfqaVar;
        this.f5917e = zzcwzVar;
        this.h = zzcadVar;
    }

    public final void finalize() throws Throwable {
        try {
            final zzcfk zzcfkVar = (zzcfk) this.f5913a.get();
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgB)).booleanValue()) {
                if (!this.i && zzcfkVar != null) {
                    zzcaj.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdfi
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

    public final boolean zza() {
        return this.f5915c.zzg();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean zzc(boolean z, Activity activity) {
        zzfet zzD;
        zzddp zzddpVar = this.f5916d;
        zzddpVar.zzb();
        zzbce zzbceVar = zzbcn.zzaJ;
        edt edtVar = edt.f15376a;
        zzbcl zzbclVar = edtVar.f15379d;
        zzbcl zzbclVar2 = edtVar.f15379d;
        boolean booleanValue = ((Boolean) zzbclVar.zza(zzbceVar)).booleanValue();
        Context context = this.f5919g;
        zzcwz zzcwzVar = this.f5917e;
        if (booleanValue) {
            esy esyVar = ti.f20033a.z;
            if (esy.v(context)) {
                agd.b("Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies");
                zzcwzVar.zzb();
                if (((Boolean) zzbclVar2.zza(zzbcn.zzaK)).booleanValue()) {
                    this.f5914b.zza(this.n.zzb.zzb.zzb);
                    return false;
                }
                return false;
            }
        }
        zzcfk zzcfkVar = (zzcfk) this.f5913a.get();
        if (((Boolean) zzbclVar2.zza(zzbcn.zzlC)).booleanValue() && zzcfkVar != null && (zzD = zzcfkVar.zzD()) != null && zzD.zzar && zzD.zzas != this.h.zzb()) {
            agd.b("The interstitial consent form has been shown.");
            zzcwzVar.zza(zzfgq.zzd(12, "The consent form has already been shown.", null));
            return false;
        }
        if (this.i) {
            agd.b("The interstitial ad has been shown.");
            zzcwzVar.zza(zzfgq.zzd(10, null, null));
        }
        if (!this.i) {
            if (activity == null) {
                activity = context;
            }
            try {
                this.f5918f.zza(z, activity, zzcwzVar);
                zzddpVar.zza();
                this.i = true;
                return true;
            } catch (zzdgu e2) {
                zzcwzVar.zzc(e2);
            }
        }
        return false;
    }
}
