package g;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbtf;
import com.google.android.gms.internal.ads.zzdel;

/* loaded from: classes3.dex */
public final class km extends zzbtf {

    /* renamed from: a, reason: collision with root package name */
    public boolean f19550a = false;

    /* renamed from: b, reason: collision with root package name */
    public boolean f19551b = false;

    /* renamed from: c, reason: collision with root package name */
    public boolean f19552c = false;

    /* renamed from: d, reason: collision with root package name */
    public final AdOverlayInfoParcel f19553d;

    /* renamed from: e, reason: collision with root package name */
    public final Activity f19554e;

    public km(Activity activity, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f19553d = adOverlayInfoParcel;
        this.f19554e = activity;
    }

    public final synchronized void f() {
        try {
            if (this.f19551b) {
                return;
            }
            fim fimVar = this.f19553d.zzc;
            if (fimVar != null) {
                fimVar.zzdu(4);
            }
            this.f19551b = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final boolean zzH() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzh(int i, int i2, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzi() {
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzk(bjq bjqVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzl(Bundle bundle) {
        fim fimVar;
        boolean booleanValue = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzix)).booleanValue();
        Activity activity = this.f19554e;
        if (booleanValue && !this.f19552c) {
            activity.requestWindowFeature(1);
        }
        boolean z = false;
        if (bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false)) {
            z = true;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.f19553d;
        if (adOverlayInfoParcel == null) {
            activity.finish();
            return;
        }
        if (z) {
            activity.finish();
            return;
        }
        if (bundle == null) {
            evo evoVar = adOverlayInfoParcel.zzb;
            if (evoVar != null) {
                evoVar.onAdClicked();
            }
            zzdel zzdelVar = adOverlayInfoParcel.zzu;
            if (zzdelVar != null) {
                zzdelVar.zzdG();
            }
            if (activity.getIntent() != null && activity.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true) && (fimVar = adOverlayInfoParcel.zzc) != null) {
                fimVar.zzdr();
            }
        }
        cfg cfgVar = ti.f20033a.l;
        etg etgVar = adOverlayInfoParcel.zza;
        if (cfg.j(activity, etgVar, adOverlayInfoParcel.zzi, etgVar.zzi)) {
            return;
        }
        activity.finish();
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzm() {
        if (this.f19554e.isFinishing()) {
            f();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzo() {
        fim fimVar = this.f19553d.zzc;
        if (fimVar != null) {
            fimVar.zzdk();
        }
        if (this.f19554e.isFinishing()) {
            f();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzp(int i, String[] strArr, int[] iArr) {
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzq() {
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzr() {
        if (this.f19550a) {
            this.f19554e.finish();
            return;
        }
        this.f19550a = true;
        fim fimVar = this.f19553d.zzc;
        if (fimVar != null) {
            fimVar.zzdH();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzs(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.f19550a);
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzt() {
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzu() {
        if (this.f19554e.isFinishing()) {
            f();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzv() {
        fim fimVar = this.f19553d.zzc;
        if (fimVar != null) {
            fimVar.zzdt();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzx() {
        this.f19552c = true;
    }
}
