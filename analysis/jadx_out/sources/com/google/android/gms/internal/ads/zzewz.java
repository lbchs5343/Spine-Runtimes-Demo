package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import g.cbv;
import g.dcy;
import g.dez;
import g.edt;
import g.mx;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzewz implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final int f7658a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f7659b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f7660c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f7661d;

    /* renamed from: e, reason: collision with root package name */
    public final ScheduledExecutorService f7662e;

    /* renamed from: f, reason: collision with root package name */
    public final Executor f7663f;

    /* renamed from: g, reason: collision with root package name */
    public final zzbzq f7664g;

    public zzewz(zzbzq zzbzqVar, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor, int i, boolean z, boolean z2) {
        this.f7664g = zzbzqVar;
        this.f7660c = context;
        this.f7662e = scheduledExecutorService;
        this.f7663f = executor;
        this.f7658a = i;
        this.f7659b = z;
        this.f7661d = z2;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 40;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        zzbce zzbceVar = zzbcn.zzbb;
        edt edtVar = edt.f15376a;
        if (!((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            return zzgei.zzg(new Exception("Did not ad Ad ID into query param."));
        }
        zzgdz zzu = zzgdz.zzu(this.f7664g.zza(this.f7660c, this.f7658a));
        zzfwh zzfwhVar = new zzfwh() { // from class: com.google.android.gms.internal.ads.zzewx
            /* JADX WARN: Code restructure failed: missing block: B:11:0x005c, code lost:
            
                r0 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:12:0x005f, code lost:
            
                g.ti.f20033a.f20034ab.zzw(r0, "AdIdInfoSignalSource.getPaidV1");
                r2 = new com.google.android.gms.internal.ads.zzfth();
             */
            /* JADX WARN: Code restructure failed: missing block: B:15:0x0033, code lost:
            
                if (((java.lang.Boolean) g.edt.f15376a.f15379d.zza(com.google.android.gms.internal.ads.zzbcn.zzdj)).booleanValue() != false) goto L17;
             */
            /* JADX WARN: Code restructure failed: missing block: B:4:0x001f, code lost:
            
                if (((java.lang.Boolean) g.edt.f15376a.f15379d.zza(com.google.android.gms.internal.ads.zzbcn.zzdi)).booleanValue() == false) goto L6;
             */
            /* JADX WARN: Code restructure failed: missing block: B:6:0x0035, code lost:
            
                r4 = com.google.android.gms.internal.ads.zzftl.zzj(r1);
                j$.util.Objects.requireNonNull(r11);
                r5 = r11.f14078a;
                j$.util.Objects.requireNonNull(r5);
                r2 = r4.zzi(r5, r1.getPackageName(), ((java.lang.Long) g.edt.f15376a.f15379d.zza(com.google.android.gms.internal.ads.zzbcn.zzdo)).longValue(), r0.f7661d);
             */
            @Override // com.google.android.gms.internal.ads.zzfwh
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object apply(Object obj) {
                zzewz zzewzVar = zzewz.this;
                dez dezVar = (dez) obj;
                Context context = zzewzVar.f7660c;
                zzfth zzfthVar = new zzfth();
                boolean z = zzewzVar.f7659b;
                if (!z) {
                }
                if (z) {
                }
                return new zzexa(dezVar, null, zzfthVar);
            }
        };
        Executor executor = this.f7663f;
        return (zzgdz) zzgei.zze((zzgdz) zzgei.zzo((zzgdz) zzgei.zzm(zzu, zzfwhVar, executor), ((Long) edtVar.f15379d.zza(zzbcn.zzbc)).longValue(), TimeUnit.MILLISECONDS, this.f7662e), Throwable.class, new zzfwh() { // from class: com.google.android.gms.internal.ads.zzewy
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                zzewz zzewzVar = zzewz.this;
                zzewzVar.getClass();
                mx mxVar = cbv.f12612a.f12615d;
                ContentResolver contentResolver = zzewzVar.f7660c.getContentResolver();
                return new zzexa(null, contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id"), new zzfth());
            }
        }, executor);
    }
}
