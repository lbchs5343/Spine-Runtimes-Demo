package com.google.android.gms.internal.ads;

import android.content.Context;
import g.ccp;
import g.dcy;
import g.edt;
import java.io.InputStreamReader;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class zzdxv implements zzdyv {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f6648a = Pattern.compile("Received error HTTP response code: (.*)");

    /* renamed from: b, reason: collision with root package name */
    public final ScheduledExecutorService f6649b;

    /* renamed from: c, reason: collision with root package name */
    public final zzecl f6650c;

    /* renamed from: d, reason: collision with root package name */
    public final zzdwv f6651d;

    /* renamed from: e, reason: collision with root package name */
    public final zzfkl f6652e;

    /* renamed from: f, reason: collision with root package name */
    public final zzges f6653f;

    /* renamed from: g, reason: collision with root package name */
    public final zzffo f6654g;
    public final Context h;

    public zzdxv(Context context, zzffo zzffoVar, zzdwv zzdwvVar, zzges zzgesVar, ScheduledExecutorService scheduledExecutorService, zzecl zzeclVar, zzfkl zzfklVar) {
        this.h = context;
        this.f6654g = zzffoVar;
        this.f6651d = zzdwvVar;
        this.f6653f = zzgesVar;
        this.f6649b = scheduledExecutorService;
        this.f6650c = zzeclVar;
        this.f6652e = zzfklVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyv
    public final dcy zzb(zzbvx zzbvxVar) {
        dcy zzc = this.f6651d.zzc(zzbvxVar);
        zzfka zza = zzfjz.zza(this.h, 11);
        zzfkk.zzd(zzc, zza);
        dcy zzn = zzgei.zzn(zzc, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdxs
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                zzdyx zzdyxVar = (zzdyx) obj;
                return zzgei.zzh(new zzfff(new zzffc(zzdxv.this.f6654g), zzffe.zza(new InputStreamReader(zzdyxVar.zzb()), zzdyxVar.zza())));
            }
        }, this.f6653f);
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfw)).booleanValue()) {
            zzn = zzgei.zzf(zzgei.zzo(zzn, ((Integer) r2.f15379d.zza(zzbcn.zzfx)).intValue(), TimeUnit.SECONDS, this.f6649b), TimeoutException.class, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdxt
                @Override // com.google.android.gms.internal.ads.zzgdp
                public final dcy zza(Object obj) {
                    return zzgei.zzg(new zzdwn(5));
                }
            }, zzcaj.zzf);
        }
        zzfkk.zza(zzn, this.f6652e, zza);
        zzgei.zzr(zzn, new ccp(0, this), zzcaj.zzf);
        return zzn;
    }
}
