package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import g.agd;
import g.dcy;
import g.ti;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzeam extends zzeap {

    /* renamed from: a, reason: collision with root package name */
    public zzbuv f6743a;

    @Override // com.google.android.gms.internal.ads.zzeap, g.bjb
    public final synchronized void onConnected(Bundle bundle) {
        if (this.f6748c) {
            return;
        }
        this.f6748c = true;
        try {
            this.f6749d.zzp().zzf(this.f6743a, new zzeao(this));
        } catch (RemoteException unused) {
            this.f6751f.zzd(new zzdyw(1));
        } catch (Throwable th) {
            ti.f20033a.f20034ab.zzw(th, "RemoteAdsServiceSignalClientTask.onConnected");
            this.f6751f.zzd(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeap, g.bjb
    public final void onConnectionSuspended(int i) {
        Locale locale = Locale.US;
        String str = "Remote ad service connection suspended, cause: " + i + ".";
        agd.c(str);
        this.f6751f.zzd(new zzdyw(1, str));
    }

    public final synchronized dcy zza(zzbuv zzbuvVar, long j) {
        if (this.f6752g) {
            return zzgei.zzo(this.f6751f, j, TimeUnit.MILLISECONDS, this.f6747b);
        }
        this.f6752g = true;
        this.f6743a = zzbuvVar;
        i();
        dcy zzo = zzgei.zzo(this.f6751f, j, TimeUnit.MILLISECONDS, this.f6747b);
        zzo.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeal
            @Override // java.lang.Runnable
            public final void run() {
                zzeam.this.j();
            }
        }, zzcaj.zzf);
        return zzo;
    }
}
