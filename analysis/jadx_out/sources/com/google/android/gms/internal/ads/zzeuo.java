package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.InstallSourceInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import g.agd;
import g.chk;
import g.dcy;
import g.edt;
import g.esy;
import g.gfx;
import g.ti;

/* loaded from: classes3.dex */
public final class zzeuo implements zzevz, zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final zzdsh f7563a;

    /* renamed from: b, reason: collision with root package name */
    public final ApplicationInfo f7564b;

    /* renamed from: c, reason: collision with root package name */
    public final PackageInfo f7565c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f7566d;

    public zzeuo(ApplicationInfo applicationInfo, PackageInfo packageInfo, Context context, zzdsh zzdshVar) {
        this.f7564b = applicationInfo;
        this.f7565c = packageInfo;
        this.f7566d = context;
        this.f7563a = zzdshVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 29;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return zzgei.zzh(this);
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final void zzj(Object obj) {
        InstallSourceInfo installSourceInfo;
        String installingPackageName;
        String initiatingPackageName;
        Context context = this.f7566d;
        Bundle bundle = (Bundle) obj;
        ApplicationInfo applicationInfo = this.f7564b;
        String str = applicationInfo.packageName;
        PackageInfo packageInfo = this.f7565c;
        Integer valueOf = packageInfo == null ? null : Integer.valueOf(packageInfo.versionCode);
        bundle.putString("pn", str);
        zzdsh zzdshVar = this.f7563a;
        if (valueOf != null) {
            bundle.putInt("vc", valueOf.intValue());
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzco)).booleanValue()) {
                zzdshVar.zzc("vc", valueOf.toString());
            }
        }
        String str2 = packageInfo != null ? packageInfo.versionName : null;
        if (str2 != null) {
            bundle.putString("vnm", str2);
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzco)).booleanValue()) {
                zzdshVar.zzc("vn", str2);
            }
        }
        try {
            String str3 = applicationInfo.packageName;
            gfx gfxVar = esy.f16117a;
            Context context2 = chk.c(context).f12624a;
            bundle.putString("dl", String.valueOf(context2.getPackageManager().getApplicationLabel(context2.getPackageManager().getApplicationInfo(str3, 0))));
        } catch (PackageManager.NameNotFoundException unused) {
        }
        if (Build.VERSION.SDK_INT >= 30) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzmu)).booleanValue()) {
                try {
                    installSourceInfo = context.getPackageManager().getInstallSourceInfo(str);
                    if (installSourceInfo == null) {
                        return;
                    }
                    installingPackageName = installSourceInfo.getInstallingPackageName();
                    if (TextUtils.isEmpty(installingPackageName)) {
                        agd.e("No installing package name found");
                    } else {
                        bundle.putString("ins_pn", installingPackageName);
                    }
                    initiatingPackageName = installSourceInfo.getInitiatingPackageName();
                    if (TextUtils.isEmpty(initiatingPackageName)) {
                        agd.e("No initiating package name found");
                    } else {
                        bundle.putString("ini_pn", initiatingPackageName);
                    }
                } catch (PackageManager.NameNotFoundException e2) {
                    ti.f20033a.f20034ab.zzw(e2, "PackageInfoSignalsource.compose");
                }
            }
        }
    }
}
