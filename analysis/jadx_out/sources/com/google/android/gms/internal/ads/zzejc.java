package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import g.awf;
import g.dcy;
import g.dub;
import g.edt;
import g.ti;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzejc implements zzgdp {

    /* renamed from: a, reason: collision with root package name */
    public final zzeiv f7096a;

    /* renamed from: b, reason: collision with root package name */
    public final zzfkl f7097b;

    /* renamed from: c, reason: collision with root package name */
    public final zzflr f7098c;

    /* renamed from: d, reason: collision with root package name */
    public final zzeif f7099d;

    /* renamed from: e, reason: collision with root package name */
    public final Executor f7100e;

    /* renamed from: f, reason: collision with root package name */
    public final zzfjr f7101f;

    /* renamed from: g, reason: collision with root package name */
    public final ScheduledExecutorService f7102g;
    public final zzdsh h;
    public final zzefg i;
    public final zzcwo j;
    public final Context k;
    public final zzfln l;
    public final zzcrt m;

    public zzejc(Context context, zzfjr zzfjrVar, zzeiv zzeivVar, zzcwo zzcwoVar, zzfln zzflnVar, zzflr zzflrVar, zzcrt zzcrtVar, zzges zzgesVar, ScheduledExecutorService scheduledExecutorService, zzefg zzefgVar, zzfkl zzfklVar, zzeif zzeifVar, zzdsh zzdshVar) {
        this.k = context;
        this.f7101f = zzfjrVar;
        this.f7096a = zzeivVar;
        this.j = zzcwoVar;
        this.l = zzflnVar;
        this.f7098c = zzflrVar;
        this.m = zzcrtVar;
        this.f7100e = zzgesVar;
        this.f7102g = scheduledExecutorService;
        this.i = zzefgVar;
        this.f7097b = zzfklVar;
        this.f7099d = zzeifVar;
        this.h = zzdshVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0037, code lost:
    
        if (((java.lang.Boolean) r1.f15379d.zza(com.google.android.gms.internal.ads.zzbcn.zzfu)).booleanValue() == false) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0058 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String n(zzfff zzfffVar) {
        zzbce zzbceVar = zzbcn.zzfv;
        edt edtVar = edt.f15376a;
        String str = "No fill.";
        String str2 = true != ((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() ? "No ad config." : "No fill.";
        int i = zzfffVar.zzb.zzb.zzf;
        if (i != 0) {
            if (i < 200 || i >= 300) {
                str = (i < 300 || i >= 400) ? awf.ac(i, "Received error HTTP response code: ") : "No location header to follow redirect or too many redirects.";
            }
            zzfev zzfevVar = zzfffVar.zzb.zzb.zzj;
            return zzfevVar == null ? zzfevVar.zza() : str;
        }
        str = str2;
        zzfev zzfevVar2 = zzfffVar.zzb.zzb.zzj;
        if (zzfevVar2 == null) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0105  */
    @Override // com.google.android.gms.internal.ads.zzgdp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final dcy zza(Object obj) throws Exception {
        int i;
        zzbvx zzbvxVar;
        Bundle bundle;
        final zzfff zzfffVar = (zzfff) obj;
        zzbce zzbceVar = zzbcn.zzci;
        edt edtVar = edt.f15376a;
        zzbcl zzbclVar = edtVar.f15379d;
        zzbcl zzbclVar2 = edtVar.f15379d;
        boolean booleanValue = ((Boolean) zzbclVar.zza(zzbceVar)).booleanValue();
        zzdsh zzdshVar = this.h;
        if (booleanValue && (zzbvxVar = zzfffVar.zzb.zzd) != null && (bundle = zzbvxVar.zzm) != null) {
            zzdshVar.zza().putAll(bundle);
        }
        if (((Boolean) zzbclVar2.zza(zzbcn.zzcj)).booleanValue()) {
            dub.m(ti.f20033a.v, zzdshVar.zza(), zzdrv.RENDERING_START.zza());
        }
        String n = n(zzfffVar);
        zzfew zzfewVar = zzfffVar.zzb.zzb;
        zzefg zzefgVar = this.i;
        zzefgVar.zzi(zzfewVar);
        if (((Boolean) zzbclVar2.zza(zzbcn.zzhW)).booleanValue() && (i = zzfffVar.zzb.zzb.zzf) != 0 && (i < 200 || i >= 300)) {
            return zzgei.zzg(new zzeiz(3, n));
        }
        zzfew zzfewVar2 = zzfffVar.zzb.zzb;
        boolean booleanValue2 = ((Boolean) zzbclVar2.zza(zzbcn.zzdG)).booleanValue();
        zzcrt zzcrtVar = this.m;
        if (booleanValue2) {
            String str = zzfewVar2.zzq;
            if (!TextUtils.isEmpty(str)) {
                zzefgVar.zzh(str, zzfffVar.zzb.zza);
                zzcnf zzcnfVar = new zzcnf(zzfffVar, this.f7098c, this.l);
                zzcwo zzcwoVar = this.j;
                Executor executor = this.f7100e;
                zzcwoVar.zzo(zzcnfVar, executor);
                if (zzfffVar.zzb.zzb.zzr <= 1) {
                    return this.f7099d.zzb(zzfffVar);
                }
                String n2 = n(zzfffVar);
                zzfjl zzfjlVar = zzfjl.RENDER_CONFIG_INIT;
                dcy zzg = zzgei.zzg(new zzeiz(3, n2));
                zzfjr zzfjrVar = this.f7101f;
                zzfix zza = zzfjb.zzc(zzg, zzfjlVar, zzfjrVar).zza();
                final zzeiv zzeivVar = this.f7096a;
                zzeivVar.zzl();
                int i2 = 0;
                for (final zzfet zzfetVar : zzfffVar.zzb.zza) {
                    Iterator it = zzfetVar.zza.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        String str2 = (String) it.next();
                        final zzefb zza2 = zzcrtVar.zza(zzfetVar.zzb, str2);
                        if (zza2 != null && zza2.zzb(zzfffVar, zzfetVar)) {
                            zza = zzfjrVar.zzb(zzfjl.RENDER_CONFIG_WATERFALL, zza).zzh("render-config-" + i2 + "-" + str2).zzc(Throwable.class, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzeja
                                @Override // com.google.android.gms.internal.ads.zzgdp
                                public final dcy zza(Object obj2) {
                                    zzejc zzejcVar = zzejc.this;
                                    zzfet zzfetVar2 = zzfetVar;
                                    zzfff zzfffVar2 = zzfffVar;
                                    zzefb zzefbVar = zza2;
                                    zzfka zza3 = zzfjz.zza(zzejcVar.k, 12);
                                    zza3.zzd(zzfetVar2.zzE);
                                    zza3.zzi();
                                    dcy zzo = zzgei.zzo(zzefbVar.zza(zzfffVar2, zzfetVar2), zzfetVar2.zzR, TimeUnit.MILLISECONDS, zzejcVar.f7102g);
                                    zzejcVar.f7096a.k(zzfffVar2, zzfetVar2, zzo, zzejcVar.l);
                                    zzfkk.zza(zzo, zzejcVar.f7097b, zza3);
                                    return zzo;
                                }
                            }).zza();
                            break;
                        }
                    }
                    i2++;
                }
                zza.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzejb
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzeiv.this.zzj();
                    }
                }, executor);
                return zza;
            }
        }
        for (zzfet zzfetVar2 : zzfffVar.zzb.zza) {
            zzefgVar.zzd(zzfetVar2);
            Iterator it2 = zzfetVar2.zza.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    zzefgVar.zzf(zzfetVar2, 0L, zzfgq.zzd(1, null, null));
                    break;
                }
                zzefb zza3 = zzcrtVar.zza(zzfetVar2.zzb, (String) it2.next());
                if (zza3 == null || !zza3.zzb(zzfffVar, zzfetVar2)) {
                }
            }
        }
        zzcnf zzcnfVar2 = new zzcnf(zzfffVar, this.f7098c, this.l);
        zzcwo zzcwoVar2 = this.j;
        Executor executor2 = this.f7100e;
        zzcwoVar2.zzo(zzcnfVar2, executor2);
        if (zzfffVar.zzb.zzb.zzr <= 1) {
        }
    }
}
