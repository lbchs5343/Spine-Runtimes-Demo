package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;
import g.agd;
import g.edt;
import g.esy;
import g.mx;
import g.ti;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class zzcea extends zzcdr implements zzcbv {
    public static final /* synthetic */ int zzd = 0;

    /* renamed from: e, reason: collision with root package name */
    public zzcdj f5218e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f5219f;

    /* renamed from: g, reason: collision with root package name */
    public long f5220g;
    public zzces h;
    public String i;
    public long j;
    public boolean k;

    public zzcea(zzccf zzccfVar, zzcce zzcceVar) {
        super(zzccfVar);
        zzces zzcesVar = new zzces(zzccfVar.getContext(), zzcceVar, (zzccf) this.f5209a.get(), null);
        agd.k("ExoPlayerAdapter initialized.");
        this.h = zzcesVar;
        zzcesVar.zzL(this);
    }

    public static final String l(String str) {
        return "cache:".concat(String.valueOf(mx.m(str, "MD5")));
    }

    public static String m(String str, Exception exc) {
        return str + "/" + exc.getClass().getCanonicalName() + ":" + exc.getMessage();
    }

    @Override // com.google.android.gms.internal.ads.zzcdr
    public final void release() {
        zzces zzcesVar = this.h;
        if (zzcesVar != null) {
            zzcesVar.zzL(null);
            this.h.zzH();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbv
    public final void zzD(int i, int i2) {
    }

    public final zzcbw zza() {
        synchronized (this) {
            this.f5219f = true;
            notify();
        }
        this.h.zzL(null);
        zzces zzcesVar = this.h;
        this.h = null;
        return zzcesVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcdr
    public final void zzf() {
        synchronized (this) {
            this.k = true;
            notify();
            release();
        }
        String str = this.i;
        if (str != null) {
            zzg(this.i, l(str), "externalAbort", "Programmatic precache abort.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbv
    public final void zzi(final boolean z, final long j) {
        final zzccf zzccfVar = (zzccf) this.f5209a.get();
        if (zzccfVar != null) {
            zzcaj.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcdy
                @Override // java.lang.Runnable
                public final void run() {
                    zzccf.this.zzv(z, j);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbv
    public final void zzk(String str, Exception exc) {
        zzfxd zzfxdVar = agd.f10175a;
        ti.f20033a.f20034ab.zzv(exc, "VideoStreamExoPlayerCache.onError");
    }

    @Override // com.google.android.gms.internal.ads.zzcbv
    public final void zzl(String str, Exception exc) {
        zzfxd zzfxdVar = agd.f10175a;
        ti.f20033a.f20034ab.zzv(exc, "VideoStreamExoPlayerCache.onException");
    }

    @Override // com.google.android.gms.internal.ads.zzcbv
    public final void zzm(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcdr
    public final void zzp(int i) {
        this.h.zzJ(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcdr
    public final void zzq(int i) {
        this.h.zzK(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcdr
    public final void zzr(int i) {
        this.h.zzM(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcdr
    public final void zzs(int i) {
        this.h.zzN(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcdr
    public final boolean zzt(String str) {
        return zzu(str, new String[]{str});
    }

    @Override // com.google.android.gms.internal.ads.zzcdr
    public final boolean zzu(String str, String[] strArr) {
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        boolean z;
        this.i = str;
        String l = l(str);
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr[i] = Uri.parse(strArr[i]);
            }
            this.h.zzF(uriArr, this.f5211c);
            zzccf zzccfVar = (zzccf) this.f5209a.get();
            if (zzccfVar != null) {
                zzccfVar.zzt(l, this);
            }
            ti.f20033a.v.getClass();
            long currentTimeMillis = System.currentTimeMillis();
            zzbce zzbceVar = zzbcn.zzI;
            edt edtVar = edt.f15376a;
            long longValue = ((Long) edtVar.f15379d.zza(zzbceVar)).longValue();
            long longValue2 = ((Long) edtVar.f15379d.zza(zzbcn.zzH)).longValue() * 1000;
            long intValue = ((Integer) edtVar.f15379d.zza(zzbcn.zzr)).intValue();
            boolean booleanValue = ((Boolean) edtVar.f15379d.zza(zzbcn.zzbW)).booleanValue();
            long j8 = -1;
            while (true) {
                synchronized (this) {
                    if (System.currentTimeMillis() - currentTimeMillis > longValue2) {
                        throw new IOException("Timeout reached. Limit: " + longValue2 + " ms");
                    }
                    if (this.k) {
                        throw new IOException("Abort requested before buffering finished. ");
                    }
                    if (this.f5219f) {
                        return true;
                    }
                    if (!this.h.zzV()) {
                        throw new IOException("ExoPlayer was released during preloading.");
                    }
                    long zzz = this.h.zzz();
                    if (zzz > 0) {
                        long zzv = this.h.zzv();
                        if (zzv != j8) {
                            if (zzv > 0) {
                                j7 = longValue2;
                                z = true;
                            } else {
                                j7 = longValue2;
                                z = false;
                            }
                            j6 = zzv;
                            long zzA = booleanValue ? this.h.zzA() : -1L;
                            j2 = intValue;
                            j4 = longValue;
                            j = j7;
                            j5 = zzz;
                            zzo(str, l, j6, j5, z, zzA, booleanValue ? this.h.zzx() : -1L, booleanValue ? this.h.zzB() : -1L, zzcbw.zzs(), zzcbw.zzu());
                            j8 = j6;
                        } else {
                            j4 = longValue;
                            j = longValue2;
                            j2 = intValue;
                            j5 = zzz;
                            j6 = zzv;
                        }
                        if (j6 >= j5) {
                            zzj(str, l, j5);
                            return true;
                        }
                        if (this.h.zzw() >= j2 && j6 > 0) {
                            return true;
                        }
                        j3 = j4;
                    } else {
                        j = longValue2;
                        j2 = intValue;
                        j3 = longValue;
                    }
                    try {
                        wait(j3);
                    } catch (InterruptedException unused) {
                        throw new IOException("Wait interrupted.");
                    }
                }
                longValue = j3;
                intValue = j2;
                longValue2 = j;
            }
        } catch (Exception e2) {
            agd.b("Failed to preload url " + str + " Exception: " + e2.getMessage());
            ti.f20033a.f20034ab.zzv(e2, "VideoStreamExoPlayerCache.preload");
            release();
            zzg(str, l, AVErrorInfo.ERROR, m(AVErrorInfo.ERROR, e2));
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbv
    public final void zzv() {
        agd.b("Precache onRenderedFirstFrame");
    }

    @Override // com.google.android.gms.internal.ads.zzcdr
    public final boolean zzw(String str, String[] strArr, zzcdj zzcdjVar) {
        this.i = str;
        this.f5218e = zzcdjVar;
        String l = l(str);
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr[i] = Uri.parse(strArr[i]);
            }
            this.h.zzF(uriArr, this.f5211c);
            zzccf zzccfVar = (zzccf) this.f5209a.get();
            if (zzccfVar != null) {
                zzccfVar.zzt(l, this);
            }
            ti.f20033a.v.getClass();
            this.j = System.currentTimeMillis();
            this.f5220g = -1L;
            esy.f16117a.postDelayed(new zzcdz(this), 0L);
            return true;
        } catch (Exception e2) {
            agd.b("Failed to preload url " + str + " Exception: " + e2.getMessage());
            ti.f20033a.f20034ab.zzv(e2, "VideoStreamExoPlayerCache.preload");
            release();
            zzg(str, l, AVErrorInfo.ERROR, m(AVErrorInfo.ERROR, e2));
            return false;
        }
    }
}
