package com.google.android.gms.internal.ads;

import android.os.Build;
import android.os.ext.SdkExtensions;
import g.akx;
import g.dcy;
import g.edt;
import g.esy;
import g.ti;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzepv implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzges f7376a;

    /* renamed from: b, reason: collision with root package name */
    public final akx f7377b;

    public zzepv(akx akxVar, zzges zzgesVar) {
        this.f7377b = akxVar;
        this.f7376a = zzgesVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 54;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return this.f7376a.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzepu
            @Override // java.util.concurrent.Callable
            public final Object call() {
                int i;
                int extensionVersion;
                int extensionVersion2;
                akx akxVar = zzepv.this.f7377b;
                zzbce zzbceVar = zzbcn.zzjI;
                zzbcl zzbclVar = edt.f15376a.f15379d;
                if (!((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
                    return new zzepw(null);
                }
                esy esyVar = ti.f20033a.z;
                int i2 = 0;
                try {
                    i = Build.VERSION.SDK_INT;
                } catch (Exception e2) {
                    ti.f20033a.f20034ab.zzw(e2, "AdUtil.getAdServicesExtensionVersion");
                }
                if (i >= 30) {
                    extensionVersion2 = SdkExtensions.getExtensionVersion(30);
                    if (extensionVersion2 > 3) {
                        i2 = SdkExtensions.getExtensionVersion(1000000);
                        return new zzepw(Integer.valueOf(i2));
                    }
                }
                if (((Boolean) zzbclVar.zza(zzbcn.zzjL)).booleanValue() && akxVar.clientJarVersion >= ((Integer) zzbclVar.zza(zzbcn.zzjK)).intValue() && i >= 31) {
                    extensionVersion = SdkExtensions.getExtensionVersion(31);
                    if (extensionVersion >= 9) {
                        i2 = SdkExtensions.getExtensionVersion(31);
                    }
                }
                return new zzepw(Integer.valueOf(i2));
            }
        });
    }
}
