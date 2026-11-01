package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import g.aga;

/* loaded from: classes3.dex */
public final class zzfqa {

    /* renamed from: a, reason: collision with root package name */
    public final Context f8151a;

    /* renamed from: b, reason: collision with root package name */
    public final Looper f8152b;

    public zzfqa(Context context, Looper looper) {
        this.f8151a = context;
        this.f8152b = looper;
    }

    public final void zza(String str) {
        zzfqn zza = zzfqq.zza();
        zza.zza(this.f8151a.getPackageName());
        zza.zzc(2);
        zzfqk zza2 = zzfqm.zza();
        zza2.zza(str);
        zza2.zzb(2);
        zza.zzb(zza2);
        aga agaVar = new aga(this.f8151a, this.f8152b, (zzfqq) zza.zzbr());
        synchronized (agaVar.f10171c) {
            try {
                if (!agaVar.f10172d) {
                    agaVar.f10172d = true;
                    ((zzfqw) agaVar.f10169a).checkAvailabilityAndConnect();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
