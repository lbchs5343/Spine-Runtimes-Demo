package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import g.agd;

/* loaded from: classes3.dex */
public final class zzbbp {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f4694a;

    /* renamed from: b, reason: collision with root package name */
    public int f4695b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbbr f4696c;

    public /* synthetic */ zzbbp(zzbbr zzbbrVar, byte[] bArr) {
        this.f4696c = zzbbrVar;
        this.f4694a = bArr;
    }

    public static void zzb(zzbbp zzbbpVar) {
        synchronized (zzbbpVar) {
            try {
                zzbbr zzbbrVar = zzbbpVar.f4696c;
                if (zzbbrVar.f4698b) {
                    zzbbrVar.f4697a.zzj(zzbbpVar.f4694a);
                    zzbbpVar.f4696c.f4697a.zzi(0);
                    zzbbpVar.f4696c.f4697a.zzg(zzbbpVar.f4695b);
                    zzbbpVar.f4696c.f4697a.zzh(null);
                    zzbbpVar.f4696c.f4697a.zzf();
                }
            } catch (RemoteException unused) {
                zzfxd zzfxdVar = agd.f10175a;
            }
        }
    }

    public final zzbbp zza(int i) {
        this.f4695b = i;
        return this;
    }

    public final synchronized void zzc() {
        this.f4696c.f4699c.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbbo
            @Override // java.lang.Runnable
            public final void run() {
                zzbbp.zzb(zzbbp.this);
            }
        });
    }
}
