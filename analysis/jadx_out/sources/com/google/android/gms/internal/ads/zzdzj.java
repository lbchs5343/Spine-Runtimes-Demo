package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import g.akx;
import g.dcy;
import g.doh;
import g.esy;
import g.ti;
import j$.util.Objects;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.ExecutionException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzdzj {

    /* renamed from: a, reason: collision with root package name */
    public final zzfko f6700a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f6701b;

    /* renamed from: c, reason: collision with root package name */
    public final zzges f6702c;

    /* renamed from: d, reason: collision with root package name */
    public final akx f6703d;

    /* renamed from: e, reason: collision with root package name */
    public final zzdyn f6704e;

    /* renamed from: f, reason: collision with root package name */
    public final zzhfr f6705f;

    public zzdzj(zzges zzgesVar, zzdyn zzdynVar, zzhfr zzhfrVar, zzfko zzfkoVar, Context context, akx akxVar) {
        this.f6702c = zzgesVar;
        this.f6704e = zzdynVar;
        this.f6705f = zzhfrVar;
        this.f6700a = zzfkoVar;
        this.f6701b = context;
        this.f6703d = akxVar;
    }

    public final zzgdz g(final zzbvx zzbvxVar, doh dohVar, final doh dohVar2, final zzgdp zzgdpVar) {
        String str = zzbvxVar.zzd;
        esy esyVar = ti.f20033a.z;
        boolean am = esy.am(str);
        zzges zzgesVar = this.f6702c;
        return (zzgdz) zzgei.zzf((zzgdz) zzgei.zzn((zzgdz) zzgei.zzn(zzgdz.zzu(am ? zzgei.zzg(new zzdyw(1)) : zzgei.zzf(dohVar.zza(zzbvxVar), ExecutionException.class, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdzh
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                Throwable th = (ExecutionException) obj;
                if (th.getCause() != null) {
                    th = th.getCause();
                }
                return zzgei.zzg(th);
            }
        }, zzgesVar)), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdzf
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                return zzgei.zzh(((zzdyx) obj).zzb());
            }
        }, zzgesVar), zzgdpVar, zzgesVar), zzdyw.class, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdzg
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                zzdzj zzdzjVar = zzdzj.this;
                doh dohVar3 = dohVar2;
                zzbvx zzbvxVar2 = zzbvxVar;
                return zzgei.zzn(dohVar3.zza(zzbvxVar2), zzgdpVar, zzdzjVar.f6702c);
            }
        }, zzgesVar);
    }

    public final dcy zza(final zzbvx zzbvxVar) {
        zzgdp zzgdpVar = new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdzc
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                String str = new String(zzgce.zzb((InputStream) obj), StandardCharsets.UTF_8);
                zzbvx zzbvxVar2 = zzbvx.this;
                zzbvxVar2.zzj = str;
                return zzgei.zzh(zzbvxVar2);
            }
        };
        final zzdyn zzdynVar = this.f6704e;
        Objects.requireNonNull(zzdynVar);
        return g(zzbvxVar, new doh() { // from class: com.google.android.gms.internal.ads.zzdzd
            @Override // g.doh
            public final dcy zza(zzbvx zzbvxVar2) {
                return zzdyn.this.zza(zzbvxVar2);
            }
        }, new doh() { // from class: com.google.android.gms.internal.ads.zzdze
            @Override // g.doh
            public final dcy zza(zzbvx zzbvxVar2) {
                return ((zzebg) zzdzj.this.f6705f.zzb()).zzb(zzbvxVar2, Binder.getCallingUid());
            }
        }, zzgdpVar);
    }

    public final dcy zzb(JSONObject jSONObject) {
        return (zzgdz) zzgei.zzn(zzgdz.zzu(zzgei.zzh(jSONObject)), ti.f20033a.w.zza(this.f6701b, this.f6703d, this.f6700a).zza("AFMA_getAdDictionary", zzbof.zza, new zzboa() { // from class: com.google.android.gms.internal.ads.zzdyy
            @Override // com.google.android.gms.internal.ads.zzboa
            public final Object zza(JSONObject jSONObject2) {
                return new zzbvz(jSONObject2);
            }
        }), this.f6702c);
    }

    public final dcy zzg(zzbvx zzbvxVar) {
        return g(zzbvxVar, new doh() { // from class: com.google.android.gms.internal.ads.zzdza
            @Override // g.doh
            public final dcy zza(zzbvx zzbvxVar2) {
                return zzdzj.this.f6704e.zzd(zzbvxVar2.zzh);
            }
        }, new doh() { // from class: com.google.android.gms.internal.ads.zzdzb
            @Override // g.doh
            public final dcy zza(zzbvx zzbvxVar2) {
                return ((zzebg) zzdzj.this.f6705f.zzb()).zzj(zzbvxVar2.zzh);
            }
        }, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdyz
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                return zzgei.zzh(null);
            }
        });
    }
}
