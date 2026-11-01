package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.dcq;
import g.dyn;
import g.edt;
import g.fc;
import g.gxv;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes3.dex */
public final class zzauu implements zzaux {

    /* renamed from: a, reason: collision with root package name */
    public static zzauu f4499a;

    /* renamed from: b, reason: collision with root package name */
    public final fc f4500b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f4501c;

    /* renamed from: d, reason: collision with root package name */
    public final Executor f4502d;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f4503e;

    /* renamed from: f, reason: collision with root package name */
    public final zzawo f4504f;

    /* renamed from: g, reason: collision with root package name */
    public final zzfrl f4505g;
    public final zzavx h;
    public final zzawg i;
    public final zzfrn j;
    public final gxv k;
    public final Context l;
    public final zzfre n;
    public final int p;
    public final zzfpp r;
    public volatile long q = 0;
    public final Object o = new Object();
    public final CountDownLatch m = new CountDownLatch(1);

    public zzauu(Context context, zzfpp zzfppVar, zzfre zzfreVar, zzfrl zzfrlVar, zzfrn zzfrnVar, gxv gxvVar, Executor executor, zzfpk zzfpkVar, int i, zzawo zzawoVar, zzawg zzawgVar, zzavx zzavxVar) {
        this.f4501c = false;
        this.l = context;
        this.r = zzfppVar;
        this.n = zzfreVar;
        this.f4505g = zzfrlVar;
        this.j = zzfrnVar;
        this.k = gxvVar;
        this.f4502d = executor;
        this.p = i;
        this.f4504f = zzawoVar;
        this.i = zzawgVar;
        this.h = zzavxVar;
        this.f4501c = false;
        this.f4500b = new fc(26, zzfpkVar);
    }

    public static void s(zzauu zzauuVar) {
        String str;
        String str2;
        int length;
        boolean zza;
        long currentTimeMillis = System.currentTimeMillis();
        zzfrd u = zzauuVar.u();
        if (u != null) {
            String zzk = u.zza().zzk();
            str2 = u.zza().zzj();
            str = zzk;
        } else {
            str = null;
            str2 = null;
        }
        try {
            try {
                zzfri zza2 = zzfpz.zza(zzauuVar.l, 1, zzauuVar.p, str, str2, "1", zzauuVar.r);
                byte[] bArr = zza2.zzb;
                if (bArr == null || (length = bArr.length) == 0) {
                    zzauuVar.r.zzd(5009, System.currentTimeMillis() - currentTimeMillis);
                } else {
                    try {
                        zzaxy zzb = zzaxy.zzb(zzgxp.zzv(bArr, 0, length), zzgyh.zza());
                        if (!zzb.zzc().zzk().isEmpty() && !zzb.zzc().zzj().isEmpty() && zzb.zzd().zzA().length != 0) {
                            zzfrd u2 = zzauuVar.u();
                            if (u2 != null) {
                                zzayb zza3 = u2.zza();
                                if (zzb.zzc().zzk().equals(zza3.zzk())) {
                                    if (!zzb.zzc().zzj().equals(zza3.zzj())) {
                                    }
                                }
                            }
                            fc fcVar = zzauuVar.f4500b;
                            int i = zza2.zzc;
                            if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzct)).booleanValue()) {
                                zza = zzauuVar.n.zza(zzb, fcVar);
                            } else if (i == 3) {
                                zza = zzauuVar.f4505g.zza(zzb);
                            } else {
                                if (i == 4) {
                                    zza = zzauuVar.f4505g.zzb(zzb, fcVar);
                                }
                                zzauuVar.r.zzd(4009, System.currentTimeMillis() - currentTimeMillis);
                            }
                            if (zza) {
                                zzfrd u3 = zzauuVar.u();
                                if (u3 != null) {
                                    if (zzauuVar.j.zzc(u3)) {
                                        zzauuVar.f4501c = true;
                                    }
                                    zzauuVar.q = System.currentTimeMillis() / 1000;
                                }
                            }
                            zzauuVar.r.zzd(4009, System.currentTimeMillis() - currentTimeMillis);
                        }
                        zzauuVar.r.zzd(5010, System.currentTimeMillis() - currentTimeMillis);
                    } catch (NullPointerException unused) {
                        zzauuVar.r.zzd(2030, System.currentTimeMillis() - currentTimeMillis);
                    }
                }
            } catch (zzgzm e2) {
                zzauuVar.r.zzc(4002, System.currentTimeMillis() - currentTimeMillis, e2);
            }
            zzauuVar.m.countDown();
        } catch (Throwable th) {
            zzauuVar.m.countDown();
            throw th;
        }
    }

    public static synchronized zzauu t(Context context, ExecutorService executorService, zzfpr zzfprVar, boolean z) {
        zzauu zzauuVar;
        synchronized (zzauu.class) {
            try {
                if (f4499a == null) {
                    zzfpp zza = zzfpp.zza(context, executorService, z);
                    zzbce zzbceVar = zzbcn.zzdv;
                    edt edtVar = edt.f15376a;
                    zzavi zzc = ((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() ? zzavi.zzc(context) : null;
                    zzawo zzd = ((Boolean) edtVar.f15379d.zza(zzbcn.zzdw)).booleanValue() ? zzawo.zzd(context, executorService) : null;
                    zzawg zzawgVar = ((Boolean) edtVar.f15379d.zza(zzbcn.zzcL)).booleanValue() ? new zzawg() : null;
                    zzavx zzavxVar = ((Boolean) edtVar.f15379d.zza(zzbcn.zzcS)).booleanValue() ? new zzavx() : null;
                    zzfqi zze = zzfqi.zze(context, executorService, zza, zzfprVar);
                    zzavy zzavyVar = new zzavy(context);
                    gxv gxvVar = new gxv(zzfprVar, zze, new zzawm(context, zzavyVar), zzavyVar, zzc, zzd, zzawgVar, zzavxVar);
                    int zzb = zzfqr.zzb(context, zza);
                    zzfpk zzfpkVar = new zzfpk();
                    zzauu zzauuVar2 = new zzauu(context, zza, new zzfre(context, zzb), new zzfrl(context, zzb, new dcq(26, zza), ((Boolean) edtVar.f15379d.zza(zzbcn.zzcv)).booleanValue()), new zzfrn(context, gxvVar, zza, zzfpkVar), gxvVar, executorService, zzfpkVar, zzb, zzd, zzawgVar, zzavxVar);
                    f4499a = zzauuVar2;
                    zzauuVar2.v();
                    f4499a.zzp();
                }
                zzauuVar = f4499a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzauuVar;
    }

    public static synchronized zzauu zza(Context context, zzarj zzarjVar, boolean z) {
        zzauu t;
        synchronized (zzauu.class) {
            zzfpq zzc = zzfpr.zzc();
            zzc.zza(zzarjVar.zzf());
            zzc.zzg(zzarjVar.zzi());
            t = t(context, Executors.newCachedThreadPool(), zzc.zzh(), z);
        }
        return t;
    }

    public final zzfrd u() {
        if (zzfqr.zza(this.p)) {
            return ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzct)).booleanValue() ? this.f4505g.zzc(1) : this.n.zzc(1);
        }
        return null;
    }

    public final synchronized void v() {
        long currentTimeMillis = System.currentTimeMillis();
        zzfrd u = u();
        if (u == null) {
            this.r.zzd(4013, System.currentTimeMillis() - currentTimeMillis);
        } else if (this.j.zzc(u)) {
            this.f4501c = true;
            this.m.countDown();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final String zzd(Context context, String str, View view) {
        return zze(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final String zze(Context context, String str, View view, Activity activity) {
        zzawo zzawoVar = this.f4504f;
        if (zzawoVar != null) {
            zzawoVar.zzh();
        }
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcL)).booleanValue()) {
            this.i.zzi();
        }
        zzp();
        zzfps zza = this.j.zza();
        if (zza == null) {
            return "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        String zza2 = zza.zza(context, null, str, view, activity);
        this.r.zzf(MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE, System.currentTimeMillis() - currentTimeMillis, zza2, null);
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final String zzf(Context context) {
        zzawo zzawoVar = this.f4504f;
        if (zzawoVar != null) {
            zzawoVar.zzh();
        }
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcL)).booleanValue()) {
            this.i.zzj();
        }
        zzp();
        zzfps zza = this.j.zza();
        if (zza == null) {
            return "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        String zzc = zza.zzc(context, null);
        this.r.zzf(MediaPlayer.MEDIA_PLAYER_OPTION_CRASH_INFO, System.currentTimeMillis() - currentTimeMillis, zzc, null);
        return zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final String zzg(Context context) {
        return "19";
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final String zzh(Context context, View view, Activity activity) {
        zzawo zzawoVar = this.f4504f;
        if (zzawoVar != null) {
            zzawoVar.zzh();
        }
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcL)).booleanValue()) {
            this.i.zzk(context, view);
        }
        zzp();
        zzfps zza = this.j.zza();
        if (zza == null) {
            return "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        String zzb = zza.zzb(context, null, view, activity);
        this.r.zzf(MediaPlayer.MEDIA_PLAYER_OPTION_PLAY_LOG_INFO, System.currentTimeMillis() - currentTimeMillis, zzb, null);
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final void zzk(MotionEvent motionEvent) {
        zzfps zza = this.j.zza();
        if (zza != null) {
            try {
                zza.zzd(null, motionEvent);
            } catch (zzfrm e2) {
                this.r.zzc(e2.zza(), -1L, e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final void zzl(int i, int i2, int i3) {
        DisplayMetrics displayMetrics;
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlG)).booleanValue() || (displayMetrics = this.l.getResources().getDisplayMetrics()) == null) {
            return;
        }
        float f2 = i;
        float f3 = displayMetrics.density;
        float f4 = i2;
        MotionEvent obtain = MotionEvent.obtain(0L, 0L, 0, f2 * f3, f4 * f3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0, 0);
        zzk(obtain);
        obtain.recycle();
        float f5 = displayMetrics.density;
        MotionEvent obtain2 = MotionEvent.obtain(0L, 0L, 2, f2 * f5, f4 * f5, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0, 0);
        zzk(obtain2);
        obtain2.recycle();
        float f6 = displayMetrics.density;
        MotionEvent obtain3 = MotionEvent.obtain(0L, i3, 1, f2 * f6, f4 * f6, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0, 0);
        zzk(obtain3);
        obtain3.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final void zzn(StackTraceElement[] stackTraceElementArr) {
        zzavx zzavxVar = this.h;
        if (zzavxVar != null) {
            zzavxVar.zzb(Arrays.asList(stackTraceElementArr));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final void zzo(View view) {
        ((zzawm) this.k.f18978b).p(view);
    }

    public final void zzp() {
        if (this.f4503e) {
            return;
        }
        synchronized (this.o) {
            try {
                if (!this.f4503e) {
                    if ((System.currentTimeMillis() / 1000) - this.q < 3600) {
                        return;
                    }
                    zzfrd zzb = this.j.zzb();
                    if ((zzb == null || zzb.zzd(3600L)) && zzfqr.zza(this.p)) {
                        this.f4502d.execute(new dyn(23, this));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized boolean zzr() {
        return this.f4501c;
    }
}
