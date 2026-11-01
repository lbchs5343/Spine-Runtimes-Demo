package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.InputEvent;
import g.cmo;
import g.dcy;
import g.edt;
import g.gil;
import g.gym;
import g.he;
import java.util.Random;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzcnb {

    /* renamed from: a, reason: collision with root package name */
    public zzbul f5360a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdps f5361b;

    /* renamed from: c, reason: collision with root package name */
    public final zzges f5362c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f5363d;

    /* renamed from: e, reason: collision with root package name */
    public final zzges f5364e;

    /* renamed from: f, reason: collision with root package name */
    public zzbul f5365f;

    /* renamed from: g, reason: collision with root package name */
    public final gil f5366g;
    public final zzeex h;
    public final ScheduledExecutorService i;

    public zzcnb(Context context, gil gilVar, zzeex zzeexVar, zzdps zzdpsVar, zzges zzgesVar, zzges zzgesVar2, ScheduledExecutorService scheduledExecutorService) {
        this.f5363d = context;
        this.f5366g = gilVar;
        this.h = zzeexVar;
        this.f5361b = zzdpsVar;
        this.f5362c = zzgesVar;
        this.f5364e = zzgesVar2;
        this.i = scheduledExecutorService;
    }

    public static boolean zzj(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains((CharSequence) edt.f15376a.f15379d.zza(zzbcn.zzjP));
    }

    public final dcy j(final String str, final InputEvent inputEvent, Random random) {
        try {
            zzbce zzbceVar = zzbcn.zzjP;
            edt edtVar = edt.f15376a;
            zzbcl zzbclVar = edtVar.f15379d;
            zzbcl zzbclVar2 = edtVar.f15379d;
            if (!str.contains((CharSequence) zzbclVar.zza(zzbceVar)) || ((cmo) this.f5366g).ax()) {
                return zzgei.zzh(str);
            }
            final Uri.Builder buildUpon = Uri.parse(str).buildUpon();
            buildUpon.appendQueryParameter((String) zzbclVar2.zza(zzbcn.zzjQ), String.valueOf(random.nextInt(he.UNDEFINED_ITEM_ID)));
            if (inputEvent != null) {
                return (zzgdz) zzgei.zzf((zzgdz) zzgei.zzn(zzgdz.zzu(this.h.zza()), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzcmv
                    @Override // com.google.android.gms.internal.ads.zzgdp
                    public final dcy zza(Object obj) {
                        zzcnb zzcnbVar = zzcnb.this;
                        final Uri.Builder builder = buildUpon;
                        String str2 = str;
                        InputEvent inputEvent2 = inputEvent;
                        zzcnbVar.getClass();
                        if (((Integer) obj).intValue() != 1) {
                            builder.appendQueryParameter((String) edt.f15376a.f15379d.zza(zzbcn.zzjR), "10");
                            return zzgei.zzh(builder.toString());
                        }
                        Uri.Builder buildUpon2 = builder.build().buildUpon();
                        zzbce zzbceVar2 = zzbcn.zzjS;
                        zzbcl zzbclVar3 = edt.f15376a.f15379d;
                        buildUpon2.appendQueryParameter((String) zzbclVar3.zza(zzbceVar2), "1");
                        buildUpon2.appendQueryParameter((String) zzbclVar3.zza(zzbcn.zzjR), "12");
                        if (str2.contains((CharSequence) zzbclVar3.zza(zzbcn.zzjT))) {
                            buildUpon2.authority((String) zzbclVar3.zza(zzbcn.zzjU));
                        }
                        return (zzgdz) zzgei.zzn(zzgdz.zzu(zzcnbVar.h.zzb(buildUpon2.build(), inputEvent2)), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzcmx
                            @Override // com.google.android.gms.internal.ads.zzgdp
                            public final dcy zza(Object obj2) {
                                String str3 = (String) edt.f15376a.f15379d.zza(zzbcn.zzjR);
                                Uri.Builder builder2 = builder;
                                builder2.appendQueryParameter(str3, "12");
                                return zzgei.zzh(builder2.toString());
                            }
                        }, zzcnbVar.f5364e);
                    }
                }, this.f5364e), Throwable.class, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzcmw
                    @Override // com.google.android.gms.internal.ads.zzgdp
                    public final dcy zza(Object obj) {
                        final zzcnb zzcnbVar = zzcnb.this;
                        Uri.Builder builder = buildUpon;
                        final Throwable th = (Throwable) obj;
                        zzcnbVar.getClass();
                        zzcnbVar.f5362c.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmt
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzcnb zzcnbVar2 = zzcnb.this;
                                Throwable th2 = th;
                                Context context = zzcnbVar2.f5363d;
                                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzjW)).booleanValue()) {
                                    zzbul zzc = zzbuj.zzc(context);
                                    zzcnbVar2.f5365f = zzc;
                                    zzc.zzh(th2, "AttributionReporting");
                                } else {
                                    zzbul zza = zzbuj.zza(context);
                                    zzcnbVar2.f5360a = zza;
                                    zza.zzh(th2, "AttributionReportingSampled");
                                }
                            }
                        });
                        builder.appendQueryParameter((String) edt.f15376a.f15379d.zza(zzbcn.zzjR), "9");
                        return zzgei.zzh(builder.toString());
                    }
                }, this.f5362c);
            }
            buildUpon.appendQueryParameter((String) zzbclVar2.zza(zzbcn.zzjR), "11");
            return zzgei.zzh(buildUpon.toString());
        } catch (Exception e2) {
            return zzgei.zzg(e2);
        }
    }

    public final dcy zzb(final String str, Random random) {
        return TextUtils.isEmpty(str) ? zzgei.zzh(str) : zzgei.zzf(j(str, this.f5361b.zza(), random), Throwable.class, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzcms
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                final zzcnb zzcnbVar = zzcnb.this;
                String str2 = str;
                final Throwable th = (Throwable) obj;
                zzcnbVar.getClass();
                zzcnbVar.f5362c.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmu
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcnb zzcnbVar2 = zzcnb.this;
                        Throwable th2 = th;
                        Context context = zzcnbVar2.f5363d;
                        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzjW)).booleanValue()) {
                            zzbul zzc = zzbuj.zzc(context);
                            zzcnbVar2.f5365f = zzc;
                            zzc.zzh(th2, "AttributionReporting.getUpdatedUrlAndRegisterSource");
                        } else {
                            zzbul zza = zzbuj.zza(context);
                            zzcnbVar2.f5360a = zza;
                            zza.zzh(th2, "AttributionReportingSampled.getUpdatedUrlAndRegisterSource");
                        }
                    }
                });
                return zzgei.zzh(str2);
            }
        }, this.f5362c);
    }

    public final void zzi(String str, zzflr zzflrVar, Random random) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        zzgei.zzr(zzgei.zzo(j(str, this.f5361b.zza(), random), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzjV)).intValue(), TimeUnit.MILLISECONDS, this.i), new gym(this, zzflrVar, str), this.f5362c);
    }
}
