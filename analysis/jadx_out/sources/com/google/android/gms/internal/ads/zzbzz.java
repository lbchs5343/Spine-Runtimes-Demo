package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import g.agd;
import g.akx;
import g.bbu;
import g.cah;
import g.cbv;
import g.chk;
import g.cmo;
import g.dcy;
import g.dyd;
import g.edt;
import g.eof;
import g.fzu;
import g.gil;
import g.kj;
import g.ti;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class zzbzz {

    /* renamed from: a, reason: collision with root package name */
    public zzbcs f5105a;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicInteger f5106b;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f5107c;

    /* renamed from: d, reason: collision with root package name */
    public dcy f5108d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f5109e;

    /* renamed from: f, reason: collision with root package name */
    public final cah f5110f;

    /* renamed from: g, reason: collision with root package name */
    public Context f5111g;
    public final Object h = new Object();
    public akx i;
    public final Object j;
    public Boolean k;
    public final cmo l;
    public final AtomicInteger m;
    public final zzcad n;
    public String o;

    public zzbzz() {
        cmo cmoVar = new cmo();
        this.l = cmoVar;
        this.n = new zzcad(cbv.f12612a.f12617f, cmoVar);
        this.f5109e = false;
        this.f5105a = null;
        this.k = null;
        this.m = new AtomicInteger(0);
        this.f5106b = new AtomicInteger(0);
        this.f5110f = new cah();
        this.j = new Object();
        this.f5107c = new AtomicBoolean();
    }

    public final boolean zzA(Context context) {
        if (dyd.bj()) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzib)).booleanValue()) {
                return this.f5107c.get();
            }
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public final int zza() {
        return this.f5106b.get();
    }

    public final int zzb() {
        return this.m.get();
    }

    public final Context zzd() {
        return this.f5111g;
    }

    public final Resources zze() {
        if (this.i.isClientJar) {
            return this.f5111g.getResources();
        }
        try {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkA)).booleanValue()) {
                return kj.p(this.f5111g).n.getResources();
            }
            kj.p(this.f5111g).n.getResources();
            return null;
        } catch (eof unused) {
            zzfxd zzfxdVar = agd.f10175a;
            return null;
        }
    }

    public final zzbcs zzg() {
        zzbcs zzbcsVar;
        synchronized (this.h) {
            zzbcsVar = this.f5105a;
        }
        return zzbcsVar;
    }

    public final zzcad zzh() {
        return this.n;
    }

    public final gil zzi() {
        cmo cmoVar;
        synchronized (this.h) {
            cmoVar = this.l;
        }
        return cmoVar;
    }

    public final dcy zzk() {
        if (this.f5111g != null) {
            if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcV)).booleanValue()) {
                synchronized (this.j) {
                    try {
                        dcy dcyVar = this.f5108d;
                        if (dcyVar != null) {
                            return dcyVar;
                        }
                        dcy zzb = zzcaj.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzbzu
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                Context zza = zzbwh.zza(zzbzz.this.f5111g);
                                ArrayList arrayList = new ArrayList();
                                try {
                                    PackageInfo c2 = chk.c(zza).c(4096, zza.getApplicationInfo().packageName);
                                    if (c2.requestedPermissions != null && c2.requestedPermissionsFlags != null) {
                                        int i = 0;
                                        while (true) {
                                            String[] strArr = c2.requestedPermissions;
                                            if (i >= strArr.length) {
                                                break;
                                            }
                                            if ((c2.requestedPermissionsFlags[i] & 2) != 0) {
                                                arrayList.add(strArr[i]);
                                            }
                                            i++;
                                        }
                                    }
                                } catch (PackageManager.NameNotFoundException unused) {
                                }
                                return arrayList;
                            }
                        });
                        this.f5108d = zzb;
                        return zzb;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
        return zzgei.zzh(new ArrayList());
    }

    public final Boolean zzl() {
        Boolean bool;
        synchronized (this.h) {
            bool = this.k;
        }
        return bool;
    }

    public final String zzn() {
        return this.o;
    }

    public final void zzq() {
        cah cahVar = this.f5110f;
        cahVar.getClass();
        ti tiVar = ti.f20033a;
        tiVar.v.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (cahVar.f12546a) {
            try {
                if (cahVar.f12548c == 3) {
                    if (cahVar.f12547b + ((Long) edt.f15376a.f15379d.zza(zzbcn.zzfQ)).longValue() <= currentTimeMillis) {
                        cahVar.f12548c = 1;
                    }
                }
            } finally {
            }
        }
        tiVar.v.getClass();
        long currentTimeMillis2 = System.currentTimeMillis();
        synchronized (cahVar.f12546a) {
            try {
                if (cahVar.f12548c != 2) {
                    return;
                }
                cahVar.f12548c = 3;
                if (cahVar.f12548c == 3) {
                    cahVar.f12547b = currentTimeMillis2;
                }
            } finally {
            }
        }
    }

    public final void zzr() {
        this.m.decrementAndGet();
    }

    public final void zzs() {
        this.f5106b.incrementAndGet();
    }

    public final void zzt() {
        this.m.incrementAndGet();
    }

    @TargetApi(23)
    public final void zzu(Context context, akx akxVar) {
        zzbcs zzbcsVar;
        synchronized (this.h) {
            try {
                if (!this.f5109e) {
                    this.f5111g = context.getApplicationContext();
                    this.i = akxVar;
                    ti.f20033a.p.zzc(this.n);
                    this.l.bf(this.f5111g);
                    zzbuj.zzb(this.f5111g, this.i);
                    zzbce zzbceVar = zzbcn.zzcd;
                    edt edtVar = edt.f15376a;
                    if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                        zzbcsVar = new zzbcs();
                    } else {
                        agd.e("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
                        zzbcsVar = null;
                    }
                    this.f5105a = zzbcsVar;
                    if (zzbcsVar != null) {
                        zzcam.zza(new bbu(0, this).zzb(), "AppState.registerCsiReporter");
                    }
                    Context context2 = this.f5111g;
                    if (dyd.bj()) {
                        if (((Boolean) edtVar.f15379d.zza(zzbcn.zzib)).booleanValue()) {
                            try {
                                ((ConnectivityManager) context2.getSystemService("connectivity")).registerDefaultNetworkCallback(new fzu(2, this));
                            } catch (RuntimeException unused) {
                                zzfxd zzfxdVar = agd.f10175a;
                                this.f5107c.set(true);
                            }
                        }
                    }
                    this.f5109e = true;
                    zzk();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ti.f20033a.z.at(context, akxVar.afmaVersion);
    }

    public final void zzv(Throwable th, String str) {
        zzbuj.zzb(this.f5111g, this.i).zzi(th, str, ((Double) zzbew.zzg.zze()).floatValue());
    }

    public final void zzw(Throwable th, String str) {
        zzbuj.zzb(this.f5111g, this.i).zzh(th, str);
    }

    public final void zzx(Throwable th, String str) {
        zzbuj.zzd(this.f5111g, this.i).zzh(th, str);
    }

    public final void zzy(Boolean bool) {
        synchronized (this.h) {
            this.k = bool;
        }
    }

    public final void zzz(String str) {
        this.o = str;
    }
}
