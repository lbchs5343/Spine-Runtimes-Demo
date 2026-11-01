package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import g.dcy;
import g.ti;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzeaj extends zzeap {

    /* renamed from: a, reason: collision with root package name */
    public zzbvb f6740a;

    @Override // com.google.android.gms.internal.ads.zzeap, g.bjb
    public final synchronized void onConnected(Bundle bundle) {
        if (this.f6748c) {
            return;
        }
        this.f6748c = true;
        try {
            this.f6749d.zzp().zze(this.f6740a, new zzeao(this));
        } catch (RemoteException unused) {
            this.f6751f.zzd(new zzdyw(1));
        } catch (Throwable th) {
            ti.f20033a.f20034ab.zzw(th, "RemoteAdsServiceProxyClientTask.onConnected");
            this.f6751f.zzd(th);
        }
    }

    public final synchronized dcy zza(zzbvb zzbvbVar, long j) {
        if (this.f6752g) {
            return zzgei.zzo(this.f6751f, j, TimeUnit.MILLISECONDS, this.f6747b);
        }
        this.f6752g = true;
        this.f6740a = zzbvbVar;
        i();
        dcy zzo = zzgei.zzo(this.f6751f, j, TimeUnit.MILLISECONDS, this.f6747b);
        zzo.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeai
            @Override // java.lang.Runnable
            public final void run() {
                zzeaj.this.j();
            }
        }, zzcaj.zzf);
        return zzo;
    }
}
