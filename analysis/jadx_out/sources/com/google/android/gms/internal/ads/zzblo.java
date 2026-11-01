package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.SystemClock;
import g.agd;
import g.aku;
import g.dcq;
import g.dcy;
import g.edt;
import g.fdy;
import g.ti;
import g.yj;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzblo implements zzapi {

    /* renamed from: a, reason: collision with root package name */
    public volatile zzblb f4867a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f4868b;

    public zzblo(Context context) {
        this.f4868b = context;
    }

    @Override // com.google.android.gms.internal.ads.zzapi
    public final zzapl zza(zzapp zzappVar) throws zzapy {
        Parcelable.Creator<zzblc> creator = zzblc.CREATOR;
        Map zzl = zzappVar.zzl();
        int size = zzl.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        int i = 0;
        int i2 = 0;
        for (Map.Entry entry : zzl.entrySet()) {
            strArr[i2] = (String) entry.getKey();
            strArr2[i2] = (String) entry.getValue();
            i2++;
        }
        zzblc zzblcVar = new zzblc(zzappVar.zzk(), strArr, strArr2);
        ti tiVar = ti.f20033a;
        tiVar.v.getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        try {
            zzcao zzcaoVar = new zzcao();
            this.f4867a = new zzblb(zzbwh.zza(this.f4868b), tiVar.q.f(), new fdy(23, this, zzcaoVar, false), new dcq(27, zzcaoVar), 166);
            this.f4867a.checkAvailabilityAndConnect();
            yj yjVar = new yj(zzblcVar, 1);
            zzges zzgesVar = zzcaj.zza;
            dcy zzo = zzgei.zzo(zzgei.zzn(zzcaoVar, yjVar, zzgesVar), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzex)).intValue(), TimeUnit.MILLISECONDS, zzcaj.zzd);
            zzo.addListener(new aku(0, this), zzgesVar);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) zzo.get();
            tiVar.v.getClass();
            agd.e("Http assets remote cache took " + (SystemClock.elapsedRealtime() - elapsedRealtime) + "ms");
            zzble zzbleVar = (zzble) new zzbvv(parcelFileDescriptor).zza(zzble.CREATOR);
            if (zzbleVar != null) {
                if (zzbleVar.zza) {
                    throw new zzapy(zzbleVar.zzb);
                }
                if (zzbleVar.zze.length == zzbleVar.zzf.length) {
                    HashMap hashMap = new HashMap();
                    while (true) {
                        String[] strArr3 = zzbleVar.zze;
                        if (i >= strArr3.length) {
                            return new zzapl(zzbleVar.zzc, zzbleVar.zzd, hashMap, zzbleVar.zzg, zzbleVar.zzh);
                        }
                        hashMap.put(strArr3[i], zzbleVar.zzf[i]);
                        i++;
                    }
                }
            }
            return null;
        } catch (InterruptedException | ExecutionException unused) {
            ti.f20033a.v.getClass();
            agd.e("Http assets remote cache took " + (SystemClock.elapsedRealtime() - elapsedRealtime) + "ms");
            return null;
        } catch (Throwable th) {
            ti.f20033a.v.getClass();
            agd.e("Http assets remote cache took " + (SystemClock.elapsedRealtime() - elapsedRealtime) + "ms");
            throw th;
        }
    }
}
