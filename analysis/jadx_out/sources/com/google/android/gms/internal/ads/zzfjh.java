package com.google.android.gms.internal.ads;

import g.dcy;
import g.fdy;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzfjh {

    /* renamed from: a, reason: collision with root package name */
    public final List f7915a;

    /* renamed from: b, reason: collision with root package name */
    public final dcy f7916b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f7917c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ zzfjj f7918d;

    /* renamed from: e, reason: collision with root package name */
    public final String f7919e;

    /* renamed from: f, reason: collision with root package name */
    public final dcy f7920f;

    public zzfjh(zzfjj zzfjjVar, Object obj, String str, dcy dcyVar, List list, dcy dcyVar2) {
        this.f7918d = zzfjjVar;
        this.f7917c = obj;
        this.f7919e = str;
        this.f7920f = dcyVar;
        this.f7915a = list;
        this.f7916b = dcyVar2;
    }

    public final zzfix zza() {
        zzfjj zzfjjVar = this.f7918d;
        Object obj = this.f7917c;
        String str = this.f7919e;
        if (str == null) {
            str = zzfjjVar.e(obj);
        }
        final zzfix zzfixVar = new zzfix(obj, str, this.f7916b);
        zzfjjVar.f7924d.zza(zzfixVar);
        Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzfjf
            @Override // java.lang.Runnable
            public final void run() {
                zzfjh.this.f7918d.f7924d.zzc(zzfixVar);
            }
        };
        zzges zzgesVar = zzcaj.zzf;
        this.f7920f.addListener(runnable, zzgesVar);
        zzgei.zzr(zzfixVar, new fdy(29, this, zzfixVar, false), zzgesVar);
        return zzfixVar;
    }

    public final zzfjh zzb(Object obj) {
        return this.f7918d.zzb(obj, zza());
    }

    public final zzfjh zzc(Class cls, zzgdp zzgdpVar) {
        dcy zzf = zzgei.zzf(this.f7916b, cls, zzgdpVar, this.f7918d.f7922b);
        return new zzfjh(this.f7918d, this.f7917c, this.f7919e, this.f7920f, this.f7915a, zzf);
    }

    public final zzfjh zzd(final dcy dcyVar) {
        return zzg(new zzgdp() { // from class: com.google.android.gms.internal.ads.zzfje
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                return dcy.this;
            }
        }, zzcaj.zzf);
    }

    public final zzfjh zze(final zzfiv zzfivVar) {
        return zzf(new zzgdp() { // from class: com.google.android.gms.internal.ads.zzfjd
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                return zzgei.zzh(zzfiv.this.zza(obj));
            }
        });
    }

    public final zzfjh zzf(zzgdp zzgdpVar) {
        return zzg(zzgdpVar, this.f7918d.f7922b);
    }

    public final zzfjh zzg(zzgdp zzgdpVar, Executor executor) {
        return new zzfjh(this.f7918d, this.f7917c, this.f7919e, this.f7920f, this.f7915a, zzgei.zzn(this.f7916b, zzgdpVar, executor));
    }

    public final zzfjh zzh(String str) {
        return new zzfjh(this.f7918d, this.f7917c, str, this.f7920f, this.f7915a, this.f7916b);
    }

    public final zzfjh zzi(long j, TimeUnit timeUnit) {
        dcy zzo = zzgei.zzo(this.f7916b, j, timeUnit, this.f7918d.f7923c);
        return new zzfjh(this.f7918d, this.f7917c, this.f7919e, this.f7920f, this.f7915a, zzo);
    }
}
