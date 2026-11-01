package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.text.TextUtils;
import g.av;
import g.bpr;
import g.eab;
import g.edt;
import g.hds;
import g.pf;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class zzbdm extends pf {
    public static final /* synthetic */ int zza = 0;

    /* renamed from: a, reason: collision with root package name */
    public Context f4757a;

    /* renamed from: b, reason: collision with root package name */
    public zzdsm f4758b;

    /* renamed from: c, reason: collision with root package name */
    public bpr f4759c;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f4760d = new AtomicBoolean(false);

    /* renamed from: e, reason: collision with root package name */
    public eab f4761e;

    @Override // g.pf
    public final void onCustomTabsServiceConnected(ComponentName componentName, eab eabVar) {
        this.f4761e = eabVar;
        eabVar.getClass();
        try {
            ((hds) eabVar.f15169a).c();
        } catch (RemoteException unused) {
        }
        this.f4759c = eabVar.d(new av(this));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f4761e = null;
        this.f4759c = null;
    }

    public final bpr zza() {
        if (this.f4759c == null) {
            zzcaj.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbdk
                @Override // java.lang.Runnable
                public final void run() {
                    String c2;
                    zzbdm zzbdmVar = zzbdm.this;
                    Context context = zzbdmVar.f4757a;
                    if (zzbdmVar.f4761e != null || context == null || (c2 = eab.c(context)) == null) {
                        return;
                    }
                    zzbdmVar.f19808f = context.getApplicationContext();
                    Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
                    if (!TextUtils.isEmpty(c2)) {
                        intent.setPackage(c2);
                    }
                    context.bindService(intent, zzbdmVar, 33);
                }
            });
        }
        return this.f4759c;
    }

    public final void zzb(Context context, zzdsm zzdsmVar) {
        String c2;
        if (this.f4760d.getAndSet(true)) {
            return;
        }
        this.f4757a = context;
        this.f4758b = zzdsmVar;
        if (this.f4761e != null || context == null || (c2 = eab.c(context)) == null) {
            return;
        }
        this.f19808f = context.getApplicationContext();
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        if (!TextUtils.isEmpty(c2)) {
            intent.setPackage(c2);
        }
        context.bindService(intent, this, 33);
    }

    public final void zze(final int i) {
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzeE)).booleanValue() || this.f4758b == null) {
            return;
        }
        zzcaj.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbdj
            @Override // java.lang.Runnable
            public final void run() {
                zzbdm zzbdmVar = zzbdm.this;
                int i2 = i;
                zzdsm zzdsmVar = zzbdmVar.f4758b;
                if (zzdsmVar != null) {
                    zzdsl zza2 = zzdsmVar.zza();
                    zza2.zzb("action", "cct_nav");
                    zza2.zzb("cct_navs", String.valueOf(i2));
                    zza2.zzf();
                }
            }
        });
    }
}
