package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import g.aeh;
import g.ao;
import g.bme;
import g.bpp;
import g.bun;
import g.cbv;
import g.ddh;
import g.emg;
import g.ph;
import g.qo;
import g.xe;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class zzbtx {

    /* renamed from: a, reason: collision with root package name */
    public static zzbzh f4991a;

    /* renamed from: b, reason: collision with root package name */
    public final String f4992b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f4993c;

    /* renamed from: d, reason: collision with root package name */
    public final bme f4994d;

    /* renamed from: e, reason: collision with root package name */
    public final qo f4995e;

    public zzbtx(Context context, bme bmeVar, qo qoVar, String str) {
        this.f4993c = context;
        this.f4994d = bmeVar;
        this.f4995e = qoVar;
        this.f4992b = str;
    }

    public static zzbzh zza(Context context) {
        zzbzh zzbzhVar;
        synchronized (zzbtx.class) {
            try {
                if (f4991a == null) {
                    ph phVar = cbv.f12612a.f12616e;
                    zzbpc zzbpcVar = new zzbpc();
                    phVar.getClass();
                    f4991a = (zzbzh) new bun(context, zzbpcVar).j(context, false);
                }
                zzbzhVar = f4991a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzbzhVar;
    }

    public final void zzb(emg emgVar) {
        zzbzh zzbzhVar;
        bpp bppVar;
        aeh ai;
        long currentTimeMillis = System.currentTimeMillis();
        Context context = this.f4993c;
        zzbzh zza = zza(context);
        if (zza == null) {
            emgVar.d("Internal Error, query info generator is null.");
            return;
        }
        bpp bppVar2 = new bpp(context);
        qo qoVar = this.f4995e;
        if (qoVar == null) {
            zzbzhVar = zza;
            bppVar = bppVar2;
            ai = new aeh(8, -1L, new Bundle(), -1, new ArrayList(), false, -1, false, null, null, null, null, new Bundle(), new Bundle(), new ArrayList(), null, null, false, null, -1, null, new ArrayList(), 60000, null, ddh.DEFAULT.b(), currentTimeMillis);
        } else {
            zzbzhVar = zza;
            bppVar = bppVar2;
            qoVar.h = currentTimeMillis;
            ai = ao.ai(context, qoVar);
        }
        try {
            zzbzhVar.zzf(bppVar, new zzbzl(this.f4992b, this.f4994d.name(), null, ai), new xe(emgVar));
        } catch (RemoteException unused) {
            emgVar.d("Internal Error.");
        }
    }
}
