package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import g.agd;
import g.bcp;
import g.bjq;
import g.bpp;
import g.cbz;
import g.eie;
import g.ti;
import g.tl;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzdnk extends zzbgr {

    /* renamed from: a, reason: collision with root package name */
    public zzdjy f6243a;

    /* renamed from: b, reason: collision with root package name */
    public zzdit f6244b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f6245c;

    /* renamed from: d, reason: collision with root package name */
    public final zzdiy f6246d;

    public zzdnk(Context context, zzdiy zzdiyVar, zzdjy zzdjyVar, zzdit zzditVar) {
        this.f6245c = context;
        this.f6246d = zzdiyVar;
        this.f6243a = zzdjyVar;
        this.f6244b = zzditVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final cbz zze() {
        return this.f6246d.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final zzbfv zzf() throws RemoteException {
        try {
            return this.f6244b.zzc().zza();
        } catch (NullPointerException e2) {
            ti.f20033a.f20034ab.zzw(e2, "InternalNativeCustomTemplateAdShim.getMediaContent");
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final zzbfy zzg(String str) {
        return (zzbfy) this.f6246d.zzh().get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final bjq zzh() {
        return new bpp(this.f6245c);
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final String zzi() {
        return this.f6246d.zzA();
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final String zzj(String str) {
        return (String) this.f6246d.zzi().get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final List zzk() {
        zzdiy zzdiyVar = this.f6246d;
        try {
            bcp zzh = zzdiyVar.zzh();
            bcp zzi = zzdiyVar.zzi();
            String[] strArr = new String[zzh.f11294g + zzi.f11294g];
            int i = 0;
            for (int i2 = 0; i2 < zzh.f11294g; i2++) {
                strArr[i] = (String) zzh.n(i2);
                i++;
            }
            for (int i3 = 0; i3 < zzi.f11294g; i3++) {
                strArr[i] = (String) zzi.n(i3);
                i++;
            }
            return Arrays.asList(strArr);
        } catch (NullPointerException e2) {
            ti.f20033a.f20034ab.zzw(e2, "InternalNativeCustomTemplateAdShim.getAvailableAssetNames");
            return new ArrayList();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final void zzl() {
        zzdit zzditVar = this.f6244b;
        if (zzditVar != null) {
            zzditVar.zzb();
        }
        this.f6244b = null;
        this.f6243a = null;
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final void zzm() {
        try {
            String zzC = this.f6246d.zzC();
            if (Objects.equals(zzC, "Google")) {
                agd.b("Illegal argument specified for omid partner name.");
                return;
            }
            if (TextUtils.isEmpty(zzC)) {
                agd.b("Not starting OMID session. OM partner name has not been configured.");
                return;
            }
            zzdit zzditVar = this.f6244b;
            if (zzditVar != null) {
                zzditVar.zzf(zzC, false);
            }
        } catch (NullPointerException e2) {
            ti.f20033a.f20034ab.zzw(e2, "InternalNativeCustomTemplateAdShim.initializeDisplayOpenMeasurement");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final void zzn(String str) {
        zzdit zzditVar = this.f6244b;
        if (zzditVar != null) {
            zzditVar.zzF(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final void zzo() {
        zzdit zzditVar = this.f6244b;
        if (zzditVar != null) {
            zzditVar.zzJ();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final void zzp(bjq bjqVar) {
        zzdit zzditVar;
        Object b2 = bpp.b(bjqVar);
        if (!(b2 instanceof View) || this.f6246d.zzu() == null || (zzditVar = this.f6244b) == null) {
            return;
        }
        zzditVar.zzK((View) b2);
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final boolean zzq() {
        zzdit zzditVar = this.f6244b;
        if (zzditVar != null && !zzditVar.zzX()) {
            return false;
        }
        zzdiy zzdiyVar = this.f6246d;
        return zzdiyVar.zzr() != null && zzdiyVar.zzs() == null;
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final boolean zzr(bjq bjqVar) {
        zzdjy zzdjyVar;
        Object b2 = bpp.b(bjqVar);
        if (!(b2 instanceof ViewGroup) || (zzdjyVar = this.f6243a) == null || !zzdjyVar.zzf((ViewGroup) b2)) {
            return false;
        }
        this.f6246d.zzq().zzar(new eie(29, this));
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final boolean zzs(bjq bjqVar) {
        zzdjy zzdjyVar;
        Object b2 = bpp.b(bjqVar);
        if (!(b2 instanceof ViewGroup) || (zzdjyVar = this.f6243a) == null || !zzdjyVar.zzg((ViewGroup) b2)) {
            return false;
        }
        this.f6246d.zzs().zzar(new eie(29, this));
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final boolean zzt() {
        zzdiy zzdiyVar = this.f6246d;
        zzeew zzu = zzdiyVar.zzu();
        if (zzu == null) {
            agd.b("Trying to start OMID session before creation.");
            return false;
        }
        ti.f20033a.aa.zzk(zzu.zza());
        if (zzdiyVar.zzr() == null) {
            return true;
        }
        zzdiyVar.zzr().zzd("onSdkLoaded", new tl(0));
        return true;
    }
}
