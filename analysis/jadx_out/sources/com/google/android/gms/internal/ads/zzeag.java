package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import g.akx;
import g.dcy;
import g.emr;
import g.ti;
import j$.util.Objects;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzeag {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6726a;

    /* renamed from: b, reason: collision with root package name */
    public final zzffo f6727b;

    /* renamed from: c, reason: collision with root package name */
    public final akx f6728c;

    /* renamed from: d, reason: collision with root package name */
    public final zzczh f6729d;

    /* renamed from: e, reason: collision with root package name */
    public final zzfko f6730e;

    /* renamed from: f, reason: collision with root package name */
    public final zzges f6731f;

    /* renamed from: g, reason: collision with root package name */
    public final zzdzo f6732g;
    public final zzfjr h;
    public final zzfkl i;
    public dcy zza;

    public zzeag(zzczh zzczhVar, zzdzo zzdzoVar, zzfjr zzfjrVar, zzffo zzffoVar, akx akxVar, zzfko zzfkoVar, zzfkl zzfklVar, Context context, zzges zzgesVar) {
        this.f6729d = zzczhVar;
        this.f6732g = zzdzoVar;
        this.h = zzfjrVar;
        this.f6727b = zzffoVar;
        this.f6728c = akxVar;
        this.f6730e = zzfkoVar;
        this.i = zzfklVar;
        this.f6726a = context;
        this.f6731f = zzgesVar;
    }

    public final dcy zzc(final zzbvx zzbvxVar, final JSONObject jSONObject, final zzbvz zzbvzVar) {
        this.f6729d.zzdn(zzbvxVar);
        Context context = this.f6726a;
        zzebx zzebxVar = new zzebx(zzbvxVar.zzg, this.i, zzfjz.zza(context, 9));
        zzfjl zzfjlVar = zzfjl.PREPARE_HTTP_REQUEST;
        dcy zzh = zzgei.zzh(new zzebw(jSONObject, zzbvzVar));
        zzfjr zzfjrVar = this.h;
        zzfix zza = zzfjrVar.zzb(zzfjlVar, zzh).zze(zzebxVar).zza();
        zzfwh zzfwhVar = new zzfwh() { // from class: com.google.android.gms.internal.ads.zzeac
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                zzeag zzeagVar = zzeag.this;
                zzbvx zzbvxVar2 = zzbvxVar;
                zzebs zzebsVar = (zzebs) obj;
                zzeagVar.getClass();
                zzebsVar.zzc.put("Content-Type", zzebsVar.zze);
                zzebsVar.zzc.put("User-Agent", ti.f20033a.z.at(zzeagVar.f6726a, zzbvxVar2.zzb.afmaVersion));
                Bundle bundle = new Bundle();
                for (Map.Entry entry : zzebsVar.zzc.entrySet()) {
                    bundle.putString((String) entry.getKey(), (String) entry.getValue());
                }
                return new zzbvb(zzebsVar.zza, zzebsVar.zzb, bundle, zzebsVar.zzd, zzebsVar.zzf, zzbvxVar2.zzd, zzbvxVar2.zzh);
            }
        };
        zzges zzgesVar = this.f6731f;
        zzfjh zzb = zzfjrVar.zzb(zzfjl.PROXY, zzgei.zzm(zza, zzfwhVar, zzgesVar));
        final zzdzo zzdzoVar = this.f6732g;
        Objects.requireNonNull(zzdzoVar);
        zzfix zza2 = zzb.zzf(new zzgdp() { // from class: com.google.android.gms.internal.ads.zzead
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                return zzdzo.this.zzc((zzbvb) obj);
            }
        }).zza();
        this.zza = zza2;
        dcy zzn = zzgei.zzn(zzfjrVar.zzb(zzfjl.PRE_PROCESS, zza2).zze(new zzfiv() { // from class: com.google.android.gms.internal.ads.zzeab
            @Override // com.google.android.gms.internal.ads.zzfiv
            public final Object zza(Object obj) {
                return new zzebf(zzebt.zza(new InputStreamReader((InputStream) obj)), jSONObject, zzbvzVar);
            }
        }).zzf(ti.f20033a.w.zza(context, this.f6728c, this.f6730e).zza("google.afma.response.normalize", zzebf.zza, zzbof.zzb)).zza(), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzeae
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                return zzgei.zzh(new zzfff(new zzffc(zzeag.this.f6727b), zzffe.zza(new InputStreamReader((InputStream) obj), zzbvxVar)));
            }
        }, zzgesVar);
        zzgei.zzr(zzn, new emr(28, this), zzgesVar);
        return zzn;
    }
}
