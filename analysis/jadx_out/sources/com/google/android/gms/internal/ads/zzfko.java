package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Build;
import android.os.RemoteException;
import g.akx;
import g.edt;
import g.esy;
import g.gna;
import g.ti;
import java.util.AbstractCollection;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzfko implements Runnable {
    public static Boolean zzb;

    /* renamed from: d, reason: collision with root package name */
    public final AbstractCollection f7965d;

    /* renamed from: g, reason: collision with root package name */
    public int f7968g;
    public final Context h;
    public final zzbwf i;
    public final akx j;
    public final zzdqa k;
    public static final Object zza = new Object();

    /* renamed from: a, reason: collision with root package name */
    public static final Object f7962a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static final Object f7963b = new Object();

    /* renamed from: e, reason: collision with root package name */
    public final zzfkt f7966e = zzfkx.zzb();

    /* renamed from: f, reason: collision with root package name */
    public String f7967f = "";

    /* renamed from: c, reason: collision with root package name */
    public boolean f7964c = false;

    public zzfko(Context context, akx akxVar, zzdqa zzdqaVar, zzebv zzebvVar, zzbwf zzbwfVar) {
        this.h = context;
        this.j = akxVar;
        this.k = zzdqaVar;
        this.i = zzbwfVar;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziv)).booleanValue()) {
            this.f7965d = esy.aa();
        } else {
            this.f7965d = zzfzo.zzn();
        }
    }

    public static boolean zza() {
        boolean booleanValue;
        synchronized (zza) {
            try {
                if (zzb == null) {
                    if (((Boolean) zzbeg.zzb.zze()).booleanValue()) {
                        zzb = Boolean.valueOf(Math.random() < ((Double) zzbeg.zza.zze()).doubleValue());
                    } else {
                        zzb = Boolean.FALSE;
                    }
                }
                booleanValue = zzb.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue;
    }

    @Override // java.lang.Runnable
    public final void run() {
        byte[] zzaV;
        if (zza()) {
            Object obj = f7962a;
            synchronized (obj) {
                try {
                    if (this.f7966e.zza() == 0) {
                        return;
                    }
                    try {
                        synchronized (obj) {
                            zzaV = ((zzfkx) this.f7966e.zzbr()).zzaV();
                            this.f7966e.zzc();
                        }
                        new zzebu(this.h, this.j.afmaVersion, this.i, Binder.getCallingUid()).zza(new zzebs((String) edt.f15376a.f15379d.zza(zzbcn.zzip), 60000, new HashMap(), zzaV, "application/x-protobuf", false));
                    } catch (Exception e2) {
                        if ((e2 instanceof zzdwn) && ((zzdwn) e2).zza() == 3) {
                            return;
                        }
                        ti.f20033a.f20034ab.zzv(e2, "CuiMonitor.sendCuiPing");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void zzb(final zzfke zzfkeVar) {
        zzcaj.zza.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfkn
            @Override // java.lang.Runnable
            public final void run() {
                zzfko zzfkoVar = zzfko.this;
                zzfke zzfkeVar2 = zzfkeVar;
                zzfkoVar.getClass();
                synchronized (zzfko.f7963b) {
                    try {
                        if (!zzfkoVar.f7964c) {
                            zzfkoVar.f7964c = true;
                            if (zzfko.zza()) {
                                try {
                                    esy esyVar = ti.f20033a.z;
                                    zzfkoVar.f7967f = esy.y(zzfkoVar.h);
                                } catch (RemoteException | RuntimeException e2) {
                                    ti.f20033a.f20034ab.zzw(e2, "CuiMonitor.gettingAppIdFromManifest");
                                }
                                gna gnaVar = gna.i;
                                Context context = zzfkoVar.h;
                                gnaVar.getClass();
                                zzfkoVar.f7968g = gna.j(context);
                                zzbce zzbceVar = zzbcn.zziq;
                                edt edtVar = edt.f15376a;
                                int intValue = ((Integer) edtVar.f15379d.zza(zzbceVar)).intValue();
                                if (((Boolean) edtVar.f15379d.zza(zzbcn.zzlB)).booleanValue()) {
                                    long j = intValue;
                                    zzcaj.zzd.scheduleWithFixedDelay(zzfkoVar, j, j, TimeUnit.MILLISECONDS);
                                } else {
                                    long j2 = intValue;
                                    zzcaj.zzd.scheduleAtFixedRate(zzfkoVar, j2, j2, TimeUnit.MILLISECONDS);
                                }
                            }
                        }
                    } finally {
                    }
                }
                if (zzfko.zza() && zzfkeVar2 != null) {
                    synchronized (zzfko.f7962a) {
                        try {
                            int zza2 = zzfkoVar.f7966e.zza();
                            zzbce zzbceVar2 = zzbcn.zzir;
                            edt edtVar2 = edt.f15376a;
                            if (zza2 >= ((Integer) edtVar2.f15379d.zza(zzbceVar2)).intValue()) {
                                return;
                            }
                            zzfkp zza3 = zzfks.zza();
                            zza3.zzu(zzfkeVar2.zzm());
                            zza3.zzq(zzfkeVar2.zzl());
                            zza3.zzg(zzfkeVar2.zzb());
                            zza3.zzw(3);
                            zza3.zzn(zzfkoVar.j.afmaVersion);
                            zza3.zzb(zzfkoVar.f7967f);
                            zza3.zzk(Build.VERSION.RELEASE);
                            zza3.zzr(Build.VERSION.SDK_INT);
                            zza3.zzv(zzfkeVar2.zzo());
                            zza3.zzj(zzfkeVar2.zza());
                            zza3.zze(zzfkoVar.f7968g);
                            zza3.zzt(zzfkeVar2.zzn());
                            zza3.zzc(zzfkeVar2.zze());
                            zza3.zzf(zzfkeVar2.zzg());
                            zza3.zzh(zzfkeVar2.zzh());
                            zza3.zzi(zzfkoVar.k.zzb(zzfkeVar2.zzh()));
                            zza3.zzl(zzfkeVar2.zzi());
                            zza3.zzm(zzfkeVar2.zzd());
                            zza3.zzd(zzfkeVar2.zzf());
                            zza3.zzs(zzfkeVar2.zzk());
                            zza3.zzo(zzfkeVar2.zzj());
                            zza3.zzp(zzfkeVar2.zzc());
                            if (((Boolean) edtVar2.f15379d.zza(zzbcn.zziv)).booleanValue()) {
                                zza3.zza(zzfkoVar.f7965d);
                            }
                            zzfkt zzfktVar = zzfkoVar.f7966e;
                            zzfku zza4 = zzfkv.zza();
                            zza4.zza(zza3);
                            zzfktVar.zzb(zza4);
                        } finally {
                        }
                    }
                }
            }
        });
    }
}
