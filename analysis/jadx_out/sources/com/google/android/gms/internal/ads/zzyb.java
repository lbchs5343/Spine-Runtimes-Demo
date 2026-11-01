package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.media.AudioManager;
import android.media.Spatializer;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import g.bdq;
import g.cbw;
import g.ccx;
import g.dxb;
import g.fp;
import g.gaa;
import g.gky;
import g.haj;
import g.he;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.RandomAccess;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzyb extends zzyg implements zzlp {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgaz f8943a = zzgaz.zzb(new Comparator() { // from class: com.google.android.gms.internal.ads.zzxb
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            Integer num = (Integer) obj;
            Integer num2 = (Integer) obj2;
            zzgaz zzgazVar = zzyb.f8943a;
            if (num.intValue() == -1) {
                return num2.intValue() == -1 ? 0 : -1;
            }
            if (num2.intValue() == -1) {
                return 1;
            }
            return num.intValue() - num2.intValue();
        }
    });
    public static final /* synthetic */ int zzb = 0;

    /* renamed from: b, reason: collision with root package name */
    public final zzwx f8944b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f8945c;

    /* renamed from: d, reason: collision with root package name */
    public zzxp f8946d;

    /* renamed from: e, reason: collision with root package name */
    public final dxb f8947e;

    /* renamed from: f, reason: collision with root package name */
    public final Object f8948f;

    /* renamed from: g, reason: collision with root package name */
    public zzg f8949g;
    public final Context zza;

    public zzyb(Context context) {
        Spatializer spatializer;
        int immersiveAudioLevel;
        zzwx zzwxVar = new zzwx();
        zzxp zzd = zzxp.zzd(context);
        this.f8948f = new Object();
        dxb dxbVar = null;
        this.zza = context != null ? context.getApplicationContext() : null;
        this.f8944b = zzwxVar;
        this.f8946d = zzd;
        this.f8949g = zzg.zza;
        boolean z = false;
        if (context != null && zzen.zzM(context)) {
            z = true;
        }
        this.f8945c = z;
        if (!z && context != null && zzen.zza >= 32) {
            AudioManager audioManager = (AudioManager) context.getSystemService(MediaFormat.KEY_AUDIO);
            if (audioManager != null) {
                spatializer = audioManager.getSpatializer();
                dxbVar = new dxb();
                dxbVar.f14997c = spatializer;
                immersiveAudioLevel = spatializer.getImmersiveAudioLevel();
                dxbVar.f14996b = immersiveAudioLevel != 0;
            }
            this.f8947e = dxbVar;
        }
        if (this.f8946d.zzM && context == null) {
            zzdt.zzf("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }

    public static final Pair h(int i, zzyf zzyfVar, int[][][] iArr, zzxv zzxvVar, Comparator comparator) {
        RandomAccess randomAccess;
        zzyf zzyfVar2 = zzyfVar;
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < 2) {
            if (i == zzyfVar2.zzc(i2)) {
                zzwr zzd = zzyfVar2.zzd(i2);
                for (int i3 = 0; i3 < zzd.zzb; i3++) {
                    zzbw zzb2 = zzd.zzb(i3);
                    List zza = zzxvVar.zza(i2, zzb2, iArr[i2][i3]);
                    boolean[] zArr = new boolean[zzb2.zza];
                    int i4 = 0;
                    while (i4 < zzb2.zza) {
                        int i5 = i4 + 1;
                        cbw cbwVar = (cbw) zza.get(i4);
                        int s = cbwVar.s();
                        if (!zArr[i4] && s != 0) {
                            if (s == 1) {
                                randomAccess = zzfzo.zzo(cbwVar);
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(cbwVar);
                                for (int i6 = i5; i6 < zzb2.zza; i6++) {
                                    cbw cbwVar2 = (cbw) zza.get(i6);
                                    if (cbwVar2.s() == 2 && cbwVar.t(cbwVar2)) {
                                        arrayList2.add(cbwVar2);
                                        zArr[i6] = true;
                                    }
                                }
                                randomAccess = arrayList2;
                            }
                            arrayList.add(randomAccess);
                        }
                        i4 = i5;
                    }
                }
            }
            i2++;
            zzyfVar2 = zzyfVar;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i7 = 0; i7 < list.size(); i7++) {
            iArr2[i7] = ((cbw) list.get(i7)).v;
        }
        cbw cbwVar3 = (cbw) list.get(0);
        return Pair.create(new zzyc(cbwVar3.y, iArr2, 0), Integer.valueOf(cbwVar3.x));
    }

    public static int i(zzad zzadVar, String str, boolean z) {
        if (!TextUtils.isEmpty(str) && str.equals(zzadVar.zzd)) {
            return 4;
        }
        String j = j(str);
        String j2 = j(zzadVar.zzd);
        if (j2 == null || j == null) {
            return (z && j2 == null) ? 1 : 0;
        }
        if (j2.startsWith(j) || j.startsWith(j2)) {
            return 3;
        }
        int i = zzen.zza;
        return j2.split("-", 2)[0].equals(j.split("-", 2)[0]) ? 2 : 0;
    }

    public static String j(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "und")) {
            return null;
        }
        return str;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0053, code lost:
    
        if (r1 != 3) goto L42;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean zzm(zzyb zzybVar, zzad zzadVar) {
        boolean z;
        char c2;
        dxb dxbVar;
        boolean isAvailable;
        boolean isEnabled;
        synchronized (zzybVar.f8948f) {
            try {
                z = true;
                if (zzybVar.f8946d.zzM && !zzybVar.f8945c && zzadVar.zzC > 2) {
                    String str = zzadVar.zzo;
                    if (str != null) {
                        switch (str.hashCode()) {
                            case -2123537834:
                                if (str.equals("audio/eac3-joc")) {
                                    c2 = 2;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 187078296:
                                if (str.equals("audio/ac3")) {
                                    c2 = 0;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 187078297:
                                if (str.equals("audio/ac4")) {
                                    c2 = 3;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1504578661:
                                if (str.equals("audio/eac3")) {
                                    c2 = 1;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            default:
                                c2 = 65535;
                                break;
                        }
                        if (c2 != 0) {
                            if (c2 != 1) {
                                if (c2 != 2) {
                                }
                            }
                        }
                        if (zzen.zza >= 32) {
                            dxb dxbVar2 = zzybVar.f8947e;
                            if (dxbVar2 != null) {
                                if (!dxbVar2.f14996b) {
                                }
                            }
                        }
                    }
                    if (zzen.zza >= 32 && (dxbVar = zzybVar.f8947e) != null && dxbVar.f14996b) {
                        isAvailable = ((Spatializer) dxbVar.f14997c).isAvailable();
                        if (isAvailable) {
                            isEnabled = ((Spatializer) zzybVar.f8947e.f14997c).isEnabled();
                            if (isEnabled && zzybVar.f8947e.e(zzadVar, zzybVar.f8949g)) {
                            }
                        }
                    }
                    z = false;
                }
            } finally {
            }
        }
        return z;
    }

    public final void k() {
        boolean z;
        zzyi zzyiVar;
        dxb dxbVar;
        synchronized (this.f8948f) {
            try {
                z = false;
                if (this.f8946d.zzM && !this.f8945c && zzen.zza >= 32 && (dxbVar = this.f8947e) != null && dxbVar.f14996b) {
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z || (zzyiVar = this.m) == null) {
            return;
        }
        zzyiVar.zzj();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v20, types: [com.google.android.gms.internal.ads.zzxr] */
    @Override // com.google.android.gms.internal.ads.zzyg
    public final Pair l(zzyf zzyfVar, int[][][] iArr, final int[] iArr2) {
        final zzxp zzxpVar;
        int i;
        final boolean z;
        final String str;
        int i2;
        int i3;
        long j;
        int[] iArr3;
        int length;
        zzyd zzydVar;
        long j2;
        zzwx zzwxVar;
        dxb dxbVar;
        int[][][] iArr4 = iArr;
        synchronized (this.f8948f) {
            try {
                zzxpVar = this.f8946d;
                if (zzxpVar.zzM && zzen.zza >= 32 && (dxbVar = this.f8947e) != null) {
                    Looper myLooper = Looper.myLooper();
                    zzdb.zzb(myLooper);
                    if (((gky) dxbVar.f14995a) == null && ((Handler) dxbVar.f14998d) == null) {
                        dxbVar.f14995a = new gky(this);
                        final Handler handler = new Handler(myLooper);
                        dxbVar.f14998d = handler;
                        ((Spatializer) dxbVar.f14997c).addOnSpatializerStateChangedListener(new Executor() { // from class: com.google.android.gms.internal.ads.zzxr
                            @Override // java.util.concurrent.Executor
                            public final void execute(Runnable runnable) {
                                handler.post(runnable);
                            }
                        }, (gky) dxbVar.f14995a);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        int i4 = 2;
        zzyc[] zzycVarArr = new zzyc[2];
        Pair h = h(2, zzyfVar, iArr4, new zzxv() { // from class: com.google.android.gms.internal.ads.zzxh
            /* JADX WARN: Removed duplicated region for block: B:39:0x004f  */
            /* JADX WARN: Removed duplicated region for block: B:51:0x005b  */
            @Override // com.google.android.gms.internal.ads.zzxv
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final List zza(int i5, zzbw zzbwVar, int[] iArr5) {
                int i6;
                boolean z2;
                int i7;
                int i8;
                int i9;
                Point point;
                int i10;
                int i11;
                zzbw zzbwVar2 = zzbwVar;
                zzgaz zzgazVar = zzyb.f8943a;
                zzxp zzxpVar2 = zzxp.this;
                int i12 = iArr2[i5];
                int i13 = zzxpVar2.zzi;
                int i14 = zzxpVar2.zzj;
                boolean z3 = zzxpVar2.zzk;
                if (i13 == Integer.MAX_VALUE) {
                    i6 = he.UNDEFINED_ITEM_ID;
                } else if (i14 == Integer.MAX_VALUE) {
                    i6 = he.UNDEFINED_ITEM_ID;
                } else {
                    int i15 = he.UNDEFINED_ITEM_ID;
                    for (int i16 = 0; i16 < zzbwVar2.zza; i16++) {
                        zzad zzb2 = zzbwVar2.zzb(i16);
                        int i17 = zzb2.zzu;
                        if (i17 > 0 && (i7 = zzb2.zzv) > 0) {
                            if (z3) {
                                if ((i17 > i7) != (i13 > i14)) {
                                    i9 = i13;
                                    i8 = i14;
                                    if (i17 * i9 < i7 * i8) {
                                        int i18 = zzen.zza;
                                        point = new Point(i8, ((r8 + i17) - 1) / i17);
                                    } else {
                                        int i19 = zzen.zza;
                                        point = new Point(((r10 + i7) - 1) / i7, i9);
                                    }
                                    i10 = zzb2.zzu;
                                    int i20 = zzb2.zzv;
                                    i11 = i10 * i20;
                                    if (i10 >= ((int) (point.x * 0.98f)) && i20 >= ((int) (point.y * 0.98f)) && i11 < i15) {
                                        i15 = i11;
                                    }
                                }
                            }
                            i8 = i13;
                            i9 = i14;
                            if (i17 * i9 < i7 * i8) {
                            }
                            i10 = zzb2.zzu;
                            int i202 = zzb2.zzv;
                            i11 = i10 * i202;
                            if (i10 >= ((int) (point.x * 0.98f))) {
                                i15 = i11;
                            }
                        }
                    }
                    i6 = i15;
                }
                zzfzl zzfzlVar = new zzfzl();
                int i21 = 0;
                while (i21 < zzbwVar2.zza) {
                    int zza = zzbwVar2.zzb(i21).zza();
                    if (i6 != Integer.MAX_VALUE && (zza == -1 || zza > i6)) {
                        z2 = false;
                        zzfzlVar.zzf(new ccx(i5, zzbwVar2, i21, zzxpVar2, iArr5[i21], z2));
                        i21++;
                        zzbwVar2 = zzbwVar;
                    }
                    z2 = true;
                    zzfzlVar.zzf(new ccx(i5, zzbwVar2, i21, zzxpVar2, iArr5[i21], z2));
                    i21++;
                    zzbwVar2 = zzbwVar;
                }
                return zzfzlVar.zzi();
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxi
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                List list = (List) obj;
                List list2 = (List) obj2;
                return zzfzd.zzj().zzc((ccx) Collections.max(list, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxx
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        ccx ccxVar = (ccx) obj3;
                        ccx ccxVar2 = (ccx) obj4;
                        zzfzd zzc = zzfzd.zzj().zzd(ccxVar.f12663a, ccxVar2.f12663a).zzb(ccxVar.m, ccxVar2.m).zzd(ccxVar.k, ccxVar2.k).zzd(ccxVar.j, ccxVar2.j).zzd(ccxVar.h, ccxVar2.h).zzd(ccxVar.f12665c, ccxVar2.f12665c).zzc(Integer.valueOf(ccxVar.f12668f), Integer.valueOf(ccxVar2.f12668f), zzgaz.zzc().zza());
                        boolean z2 = ccxVar.f12664b;
                        zzfzd zzd = zzc.zzd(z2, ccxVar2.f12664b);
                        boolean z3 = ccxVar.l;
                        zzfzd zzd2 = zzd.zzd(z3, ccxVar2.l);
                        if (z2 && z3) {
                            zzd2 = zzd2.zzb(ccxVar.i, ccxVar2.i);
                        }
                        return zzd2.zza();
                    }
                }), (ccx) Collections.max(list2, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxx
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        ccx ccxVar = (ccx) obj3;
                        ccx ccxVar2 = (ccx) obj4;
                        zzfzd zzc = zzfzd.zzj().zzd(ccxVar.f12663a, ccxVar2.f12663a).zzb(ccxVar.m, ccxVar2.m).zzd(ccxVar.k, ccxVar2.k).zzd(ccxVar.j, ccxVar2.j).zzd(ccxVar.h, ccxVar2.h).zzd(ccxVar.f12665c, ccxVar2.f12665c).zzc(Integer.valueOf(ccxVar.f12668f), Integer.valueOf(ccxVar2.f12668f), zzgaz.zzc().zza());
                        boolean z2 = ccxVar.f12664b;
                        zzfzd zzd = zzc.zzd(z2, ccxVar2.f12664b);
                        boolean z3 = ccxVar.l;
                        zzfzd zzd2 = zzd.zzd(z3, ccxVar2.l);
                        if (z2 && z3) {
                            zzd2 = zzd2.zzb(ccxVar.i, ccxVar2.i);
                        }
                        return zzd2.zza();
                    }
                }), new Comparator() { // from class: com.google.android.gms.internal.ads.zzxx
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        ccx ccxVar = (ccx) obj3;
                        ccx ccxVar2 = (ccx) obj4;
                        zzfzd zzc = zzfzd.zzj().zzd(ccxVar.f12663a, ccxVar2.f12663a).zzb(ccxVar.m, ccxVar2.m).zzd(ccxVar.k, ccxVar2.k).zzd(ccxVar.j, ccxVar2.j).zzd(ccxVar.h, ccxVar2.h).zzd(ccxVar.f12665c, ccxVar2.f12665c).zzc(Integer.valueOf(ccxVar.f12668f), Integer.valueOf(ccxVar2.f12668f), zzgaz.zzc().zza());
                        boolean z2 = ccxVar.f12664b;
                        zzfzd zzd = zzc.zzd(z2, ccxVar2.f12664b);
                        boolean z3 = ccxVar.l;
                        zzfzd zzd2 = zzd.zzd(z3, ccxVar2.l);
                        if (z2 && z3) {
                            zzd2 = zzd2.zzb(ccxVar.i, ccxVar2.i);
                        }
                        return zzd2.zza();
                    }
                }).zzb(list.size(), list2.size()).zzc((ccx) Collections.max(list, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxy
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        ccx ccxVar = (ccx) obj3;
                        ccx ccxVar2 = (ccx) obj4;
                        zzgaz zza = (ccxVar.h && ccxVar.f12663a) ? zzyb.f8943a : zzyb.f8943a.zza();
                        zzfzd zzj = zzfzd.zzj();
                        boolean z2 = ccxVar.n.zzy;
                        return zzj.zzc(Integer.valueOf(ccxVar.f12669g), Integer.valueOf(ccxVar2.f12669g), zza).zzc(Integer.valueOf(ccxVar.f12667e), Integer.valueOf(ccxVar2.f12667e), zza).zza();
                    }
                }), (ccx) Collections.max(list2, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxy
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        ccx ccxVar = (ccx) obj3;
                        ccx ccxVar2 = (ccx) obj4;
                        zzgaz zza = (ccxVar.h && ccxVar.f12663a) ? zzyb.f8943a : zzyb.f8943a.zza();
                        zzfzd zzj = zzfzd.zzj();
                        boolean z2 = ccxVar.n.zzy;
                        return zzj.zzc(Integer.valueOf(ccxVar.f12669g), Integer.valueOf(ccxVar2.f12669g), zza).zzc(Integer.valueOf(ccxVar.f12667e), Integer.valueOf(ccxVar2.f12667e), zza).zza();
                    }
                }), new Comparator() { // from class: com.google.android.gms.internal.ads.zzxy
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        ccx ccxVar = (ccx) obj3;
                        ccx ccxVar2 = (ccx) obj4;
                        zzgaz zza = (ccxVar.h && ccxVar.f12663a) ? zzyb.f8943a : zzyb.f8943a.zza();
                        zzfzd zzj = zzfzd.zzj();
                        boolean z2 = ccxVar.n.zzy;
                        return zzj.zzc(Integer.valueOf(ccxVar.f12669g), Integer.valueOf(ccxVar2.f12669g), zza).zzc(Integer.valueOf(ccxVar.f12667e), Integer.valueOf(ccxVar2.f12667e), zza).zza();
                    }
                }).zza();
            }
        });
        int i5 = 4;
        Pair h2 = h == null ? h(4, zzyfVar, iArr4, new zzxv() { // from class: com.google.android.gms.internal.ads.zzxd
            @Override // com.google.android.gms.internal.ads.zzxv
            public final List zza(int i6, zzbw zzbwVar, int[] iArr5) {
                zzgaz zzgazVar = zzyb.f8943a;
                zzfzl zzfzlVar = new zzfzl();
                for (int i7 = 0; i7 < zzbwVar.zza; i7++) {
                    zzfzlVar.zzf(new gaa(i6, zzbwVar, i7, zzxp.this, iArr5[i7]));
                }
                return zzfzlVar.zzi();
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxe
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Integer.compare(((gaa) ((List) obj).get(0)).f17771b, ((gaa) ((List) obj2).get(0)).f17771b);
            }
        }) : null;
        if (h2 != null) {
            zzycVarArr[((Integer) h2.second).intValue()] = (zzyc) h2.first;
        } else if (h != null) {
            zzycVarArr[((Integer) h.second).intValue()] = (zzyc) h.first;
        }
        int i6 = 0;
        while (true) {
            i = 1;
            if (i6 >= 2) {
                z = false;
                break;
            }
            if (zzyfVar.zzc(i6) == 2 && zzyfVar.zzd(i6).zzb > 0) {
                z = true;
                break;
            }
            i6++;
        }
        Pair h3 = h(1, zzyfVar, iArr4, new zzxv() { // from class: com.google.android.gms.internal.ads.zzxf
            /* JADX WARN: Type inference failed for: r7v0, types: [com.google.android.gms.internal.ads.zzxc] */
            @Override // com.google.android.gms.internal.ads.zzxv
            public final List zza(int i7, zzbw zzbwVar, int[] iArr5) {
                final zzyb zzybVar = zzyb.this;
                ?? r7 = new zzfwr() { // from class: com.google.android.gms.internal.ads.zzxc
                    @Override // com.google.android.gms.internal.ads.zzfwr
                    public final boolean zza(Object obj) {
                        return zzyb.zzm(zzyb.this, (zzad) obj);
                    }
                };
                int i8 = iArr2[i7];
                zzfzl zzfzlVar = new zzfzl();
                for (int i9 = 0; i9 < zzbwVar.zza; i9++) {
                    zzfzlVar.zzf(new bdq(i7, zzbwVar, i9, zzxpVar, iArr5[i9], z, r7));
                }
                return zzfzlVar.zzi();
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxg
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((bdq) Collections.max((List) obj)).u((bdq) Collections.max((List) obj2));
            }
        });
        if (h3 != null) {
            zzycVarArr[((Integer) h3.second).intValue()] = (zzyc) h3.first;
        }
        if (h3 == null) {
            str = null;
        } else {
            zzyc zzycVar = (zzyc) h3.first;
            str = zzycVar.zza.zzb(zzycVar.zzb[0]).zzd;
        }
        int i7 = 3;
        Pair h4 = h(3, zzyfVar, iArr4, new zzxv() { // from class: com.google.android.gms.internal.ads.zzxj
            @Override // com.google.android.gms.internal.ads.zzxv
            public final List zza(int i8, zzbw zzbwVar, int[] iArr5) {
                zzgaz zzgazVar = zzyb.f8943a;
                zzfzl zzfzlVar = new zzfzl();
                for (int i9 = 0; i9 < zzbwVar.zza; i9++) {
                    zzfzlVar.zzf(new haj(i8, zzbwVar, i9, zzxp.this, iArr5[i9], str));
                }
                return zzfzlVar.zzi();
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxk
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((haj) ((List) obj).get(0)).j((haj) ((List) obj2).get(0));
            }
        });
        if (h4 != null) {
            zzycVarArr[((Integer) h4.second).intValue()] = (zzyc) h4.first;
        }
        int i8 = 0;
        while (i8 < i4) {
            int zzc = zzyfVar.zzc(i8);
            if (zzc != i4 && zzc != i && zzc != i7 && zzc != i5) {
                zzwr zzd = zzyfVar.zzd(i8);
                int[][] iArr5 = iArr4[i8];
                int i9 = 0;
                zzbw zzbwVar = null;
                int i10 = 0;
                fp fpVar = null;
                while (i9 < zzd.zzb) {
                    zzbw zzb2 = zzd.zzb(i9);
                    int[] iArr6 = iArr5[i9];
                    fp fpVar2 = fpVar;
                    for (int i11 = 0; i11 < zzb2.zza; i11++) {
                        if (zzlo.zza(iArr6[i11], zzxpVar.zzN)) {
                            fp fpVar3 = new fp(iArr6[i11], zzb2.zzb(i11));
                            if (fpVar2 == null || zzfzd.zzj().zzd(fpVar3.f17178b, fpVar2.f17178b).zzd(fpVar3.f17177a, fpVar2.f17177a).zza() > 0) {
                                zzbwVar = zzb2;
                                fpVar2 = fpVar3;
                                i10 = i11;
                            }
                        }
                    }
                    i9++;
                    fpVar = fpVar2;
                }
                zzycVarArr[i8] = zzbwVar == null ? null : new zzyc(zzbwVar, new int[]{i10}, 0);
            }
            i8++;
            iArr4 = iArr;
            i4 = 2;
            i5 = 4;
            i = 1;
            i7 = 3;
        }
        HashMap hashMap = new HashMap();
        for (int i12 = 0; i12 < 2; i12++) {
            zzwr zzd2 = zzyfVar.zzd(i12);
            for (int i13 = 0; i13 < zzd2.zzb; i13++) {
                if (((zzbx) zzxpVar.zzA.get(zzd2.zzb(i13))) != null) {
                    throw null;
                }
            }
        }
        zzwr zze = zzyfVar.zze();
        for (int i14 = 0; i14 < zze.zzb; i14++) {
            if (((zzbx) zzxpVar.zzA.get(zze.zzb(i14))) != null) {
                throw null;
            }
        }
        int i15 = 2;
        for (int i16 = 0; i16 < 2; i16++) {
            if (((zzbx) hashMap.get(Integer.valueOf(zzyfVar.zzc(i16)))) != null) {
                throw null;
            }
        }
        int i17 = 0;
        while (i17 < i15) {
            zzwr zzd3 = zzyfVar.zzd(i17);
            if (zzxpVar.zzg(i17, zzd3)) {
                if (zzxpVar.zze(i17, zzd3) != null) {
                    throw null;
                }
                zzycVarArr[i17] = null;
            }
            i17++;
            i15 = 2;
        }
        int i18 = 0;
        while (i18 < i15) {
            int zzc2 = zzyfVar.zzc(i18);
            if (zzxpVar.zzf(i18) || zzxpVar.zzB.contains(Integer.valueOf(zzc2))) {
                zzycVarArr[i18] = null;
            }
            i18++;
            i15 = 2;
        }
        zzwx zzwxVar2 = this.f8944b;
        zzdb.zzb(this.n);
        ArrayList arrayList = new ArrayList();
        int i19 = 0;
        int i20 = 0;
        while (true) {
            i2 = 2;
            i3 = 1;
            if (i20 >= 2) {
                break;
            }
            zzyc zzycVar2 = zzycVarArr[i20];
            if (zzycVar2 == null || zzycVar2.zzb.length <= 1) {
                arrayList.add(null);
            } else {
                zzfzl zzfzlVar = new zzfzl();
                zzfzlVar.zzf(new zzww(0L, 0L));
                arrayList.add(zzfzlVar);
            }
            i20++;
        }
        long[][] jArr = new long[2][];
        int i21 = 0;
        while (true) {
            j = -1;
            if (i21 >= 2) {
                break;
            }
            zzyc zzycVar3 = zzycVarArr[i21];
            if (zzycVar3 == null) {
                jArr[i21] = new long[i19];
            } else {
                jArr[i21] = new long[zzycVar3.zzb.length];
                int i22 = 0;
                while (true) {
                    int[] iArr7 = zzycVar3.zzb;
                    if (i22 >= iArr7.length) {
                        break;
                    }
                    long j3 = zzycVar3.zza.zzb(iArr7[i22]).zzj;
                    long[] jArr2 = jArr[i21];
                    if (j3 == -1) {
                        j3 = 0;
                    }
                    jArr2[i22] = j3;
                    i22++;
                }
                Arrays.sort(jArr[i21]);
            }
            i21++;
            i19 = 0;
        }
        int[] iArr8 = new int[2];
        long[] jArr3 = new long[2];
        for (int i23 = 0; i23 < 2; i23++) {
            long[] jArr4 = jArr[i23];
            jArr3[i23] = jArr4.length == 0 ? 0L : jArr4[0];
        }
        zzwy.a(arrayList, jArr3);
        zzfzz zza = zzgau.zzc(zzgaz.zzc()).zzb(2).zza();
        int i24 = 0;
        while (i24 < i2) {
            int length2 = jArr[i24].length;
            if (length2 <= i3) {
                zzwxVar = zzwxVar2;
                j2 = j;
            } else {
                double[] dArr = new double[length2];
                j2 = j;
                int i25 = 0;
                while (true) {
                    long[] jArr5 = jArr[i24];
                    double d2 = 0.0d;
                    if (i25 >= jArr5.length) {
                        break;
                    }
                    zzwx zzwxVar3 = zzwxVar2;
                    long j4 = jArr5[i25];
                    if (j4 != j2) {
                        d2 = Math.log(j4);
                    }
                    dArr[i25] = d2;
                    i25++;
                    zzwxVar2 = zzwxVar3;
                }
                zzwxVar = zzwxVar2;
                int i26 = length2 - 1;
                double d3 = dArr[i26] - dArr[0];
                int i27 = 0;
                while (i27 < i26) {
                    double d4 = dArr[i27];
                    i27++;
                    zza.zzq(Double.valueOf(d3 == 0.0d ? 1.0d : (((d4 + dArr[i27]) * 0.5d) - dArr[0]) / d3), Integer.valueOf(i24));
                    d3 = d3;
                }
            }
            i24++;
            zzwxVar2 = zzwxVar;
            j = j2;
            i2 = 2;
            i3 = 1;
        }
        zzwx zzwxVar4 = zzwxVar2;
        zzfzo zzl = zzfzo.zzl(zza.zzr());
        for (int i28 = 0; i28 < zzl.size(); i28++) {
            int intValue = ((Integer) zzl.get(i28)).intValue();
            int i29 = iArr8[intValue] + 1;
            iArr8[intValue] = i29;
            jArr3[intValue] = jArr[intValue][i29];
            zzwy.a(arrayList, jArr3);
        }
        for (int i30 = 0; i30 < 2; i30++) {
            if (arrayList.get(i30) != null) {
                long j5 = jArr3[i30];
                jArr3[i30] = j5 + j5;
            }
        }
        zzwy.a(arrayList, jArr3);
        zzfzl zzfzlVar2 = new zzfzl();
        for (int i31 = 0; i31 < arrayList.size(); i31++) {
            zzfzl zzfzlVar3 = (zzfzl) arrayList.get(i31);
            zzfzlVar2.zzf(zzfzlVar3 == null ? zzfzo.zzn() : zzfzlVar3.zzi());
        }
        zzfzo zzi = zzfzlVar2.zzi();
        int i32 = 2;
        zzyd[] zzydVarArr = new zzyd[2];
        int i33 = 0;
        while (i33 < i32) {
            zzyc zzycVar4 = zzycVarArr[i33];
            if (zzycVar4 != null && (length = (iArr3 = zzycVar4.zzb).length) != 0) {
                if (length == 1) {
                    zzydVar = new zzye(zzycVar4.zza, iArr3[0], 0, 0, null);
                } else {
                    zzbw zzbwVar2 = zzycVar4.zza;
                    zzfzo zzfzoVar = (zzfzo) zzi.get(i33);
                    zzwxVar4.getClass();
                    zzwy zzwyVar = new zzwy(zzbwVar2, iArr3, 0);
                    zzfzo.zzl(zzfzoVar);
                    zzydVar = zzwyVar;
                }
                zzydVarArr[i33] = zzydVar;
            }
            i33++;
            i32 = 2;
        }
        zzlr[] zzlrVarArr = new zzlr[i32];
        for (int i34 = 0; i34 < i32; i34++) {
            zzlrVarArr[i34] = (zzxpVar.zzf(i34) || zzxpVar.zzB.contains(Integer.valueOf(zzyfVar.zzc(i34))) || (zzyfVar.zzc(i34) != -2 && zzydVarArr[i34] == null)) ? null : zzlr.zza;
        }
        return Pair.create(zzlrVarArr, zzydVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzlp
    public final void zza(zzln zzlnVar) {
        synchronized (this.f8948f) {
            boolean z = this.f8946d.zzQ;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyj
    public final zzlp zze() {
        return this;
    }

    public final zzxp zzf() {
        zzxp zzxpVar;
        synchronized (this.f8948f) {
            zzxpVar = this.f8946d;
        }
        return zzxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzyj
    public final void zzj() {
        dxb dxbVar;
        gky gkyVar;
        synchronized (this.f8948f) {
            try {
                if (zzen.zza >= 32 && (dxbVar = this.f8947e) != null && (gkyVar = (gky) dxbVar.f14995a) != null && ((Handler) dxbVar.f14998d) != null) {
                    ((Spatializer) dxbVar.f14997c).removeOnSpatializerStateChangedListener(gkyVar);
                    ((Handler) dxbVar.f14998d).removeCallbacksAndMessages(null);
                    dxbVar.f14998d = null;
                    dxbVar.f14995a = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        super.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzyj
    public final void zzk(zzg zzgVar) {
        boolean equals;
        synchronized (this.f8948f) {
            equals = this.f8949g.equals(zzgVar);
            this.f8949g = zzgVar;
        }
        if (equals) {
            return;
        }
        k();
    }

    public final void zzl(zzxo zzxoVar) {
        boolean equals;
        zzxp zzxpVar = new zzxp(zzxoVar);
        synchronized (this.f8948f) {
            equals = this.f8946d.equals(zzxpVar);
            this.f8946d = zzxpVar;
        }
        if (equals) {
            return;
        }
        if (zzxpVar.zzM && this.zza == null) {
            zzdt.zzf("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
        zzyi zzyiVar = this.m;
        if (zzyiVar != null) {
            zzyiVar.zzj();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyj
    public final boolean zzn() {
        return true;
    }
}
