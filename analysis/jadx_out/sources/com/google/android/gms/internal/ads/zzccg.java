package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import g.afo;
import g.agd;
import g.akx;
import g.cbv;
import g.doc;
import g.dzh;
import g.edt;
import g.esy;
import g.gtb;
import g.mx;
import g.ti;
import g.vg;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class zzccg {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f5174a;

    /* renamed from: b, reason: collision with root package name */
    public final String[] f5175b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f5176c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f5177d;

    /* renamed from: e, reason: collision with root package name */
    public zzcbl f5178e;

    /* renamed from: f, reason: collision with root package name */
    public final zzbcz f5179f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f5180g;
    public final zzbdc h;
    public final Context i;
    public final vg j;
    public boolean k;
    public boolean l;
    public boolean m;
    public final String n;
    public boolean o;
    public long p;
    public final akx q;
    public final long[] r;

    static {
        f5174a = cbv.f12612a.f12614c.nextInt(100) < ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzmr)).intValue();
    }

    public zzccg(Context context, akx akxVar, String str, zzbdc zzbdcVar, zzbcz zzbczVar) {
        dzh dzhVar = new dzh(19);
        dzhVar.u("min_1", Double.MIN_VALUE, 1.0d);
        dzhVar.u("1_5", 1.0d, 5.0d);
        dzhVar.u("5_10", 5.0d, 10.0d);
        dzhVar.u("10_20", 10.0d, 20.0d);
        dzhVar.u("20_30", 20.0d, 30.0d);
        dzhVar.u("30_max", 30.0d, Double.MAX_VALUE);
        this.j = new vg(dzhVar);
        this.m = false;
        this.o = false;
        this.f5176c = false;
        this.f5180g = false;
        this.p = -1L;
        this.i = context;
        this.q = akxVar;
        this.n = str;
        this.h = zzbdcVar;
        this.f5179f = zzbczVar;
        String str2 = (String) edt.f15376a.f15379d.zza(zzbcn.zzK);
        if (str2 == null) {
            this.f5175b = new String[0];
            this.r = new long[0];
            return;
        }
        String[] split = TextUtils.split(str2, ",");
        int length = split.length;
        this.f5175b = new String[length];
        this.r = new long[length];
        for (int i = 0; i < split.length; i++) {
            try {
                this.r[i] = Long.parseLong(split[i]);
            } catch (NumberFormatException unused) {
                zzfxd zzfxdVar = agd.f10175a;
                this.r[i] = -1;
            }
        }
    }

    public final void zza(zzcbl zzcblVar) {
        zzbcz zzbczVar = this.f5179f;
        zzbdc zzbdcVar = this.h;
        zzbcu.zza(zzbdcVar, zzbczVar, "vpc2");
        this.m = true;
        zzbdcVar.zzd("vpn", zzcblVar.zzj());
        this.f5178e = zzcblVar;
    }

    public final void zzb() {
        if (!this.m || this.o) {
            return;
        }
        zzbcu.zza(this.h, this.f5179f, "vfr2");
        this.o = true;
    }

    public final void zzc() {
        this.l = true;
        if (!this.o || this.f5176c) {
            return;
        }
        zzbcu.zza(this.h, this.f5179f, "vfp2");
        this.f5176c = true;
    }

    public final void zzd() {
        Bundle ae;
        if (!f5174a || this.f5177d) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("type", "native-player-metrics");
        bundle.putString("request", this.n);
        bundle.putString("player", this.f5178e.zzj());
        vg vgVar = this.j;
        String[] strArr = (String[]) vgVar.f20156e;
        ArrayList arrayList = new ArrayList(strArr.length);
        int i = 0;
        while (i < strArr.length) {
            String str = strArr[i];
            double[] dArr = (double[]) vgVar.f20153b;
            double[] dArr2 = (double[]) vgVar.f20152a;
            int[] iArr = (int[]) vgVar.f20154c;
            double d2 = dArr[i];
            double d3 = dArr2[i];
            int i2 = iArr[i];
            arrayList.add(new doc(str, d2, d3, i2 / vgVar.f20155d, i2));
            i++;
            vgVar = vgVar;
            strArr = strArr;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            doc docVar = (doc) it.next();
            bundle.putString("fps_c_".concat(String.valueOf(docVar.f14510c)), Integer.toString(docVar.f14509b));
            bundle.putString("fps_p_".concat(String.valueOf(docVar.f14510c)), Double.toString(docVar.f14508a));
        }
        int i3 = 0;
        while (true) {
            long[] jArr = this.r;
            if (i3 >= jArr.length) {
                break;
            }
            String str2 = this.f5175b[i3];
            if (str2 != null) {
                bundle.putString("fh_".concat(Long.valueOf(jArr[i3]).toString()), str2);
            }
            i3++;
        }
        final esy esyVar = ti.f20033a.z;
        String str3 = this.q.afmaVersion;
        AtomicReference atomicReference = esyVar.k;
        bundle.putString("device", esy.al());
        zzbce zzbceVar = zzbcn.zza;
        edt edtVar = edt.f15376a;
        bundle.putString("eids", TextUtils.join(",", edtVar.f15377b.zza()));
        boolean isEmpty = bundle.isEmpty();
        final Context context = this.i;
        if (isEmpty) {
            agd.c("Empty or null bundle.");
        } else {
            final String str4 = (String) edtVar.f15379d.zza(zzbcn.zzki);
            if (!esyVar.f16120d.getAndSet(true)) {
                SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: g.bzo
                    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str5) {
                        esy.this.k.set(afo.ae(context, str4));
                    }
                };
                if (TextUtils.isEmpty(str4)) {
                    ae = Bundle.EMPTY;
                } else {
                    PreferenceManager.getDefaultSharedPreferences(context).registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
                    ae = afo.ae(context, str4);
                }
                atomicReference.set(ae);
            }
            bundle.putAll((Bundle) atomicReference.get());
        }
        mx mxVar = cbv.f12612a.f12615d;
        mx.n(context, str3, bundle, new gtb(context, 22, str3));
        this.f5177d = true;
    }

    public final void zze() {
        this.l = false;
    }

    public final void zzf(zzcbl zzcblVar) {
        if (this.f5176c && !this.f5180g) {
            if (agd.h() && !this.f5180g) {
                agd.e("VideoMetricsMixin first frame");
            }
            zzbcu.zza(this.h, this.f5179f, "vff2");
            this.f5180g = true;
        }
        ti.f20033a.v.getClass();
        long nanoTime = System.nanoTime();
        if (this.l && this.k && this.p != -1) {
            double nanos = TimeUnit.SECONDS.toNanos(1L) / (nanoTime - this.p);
            vg vgVar = this.j;
            vgVar.f20155d++;
            int i = 0;
            while (true) {
                double[] dArr = (double[]) vgVar.f20153b;
                if (i >= dArr.length) {
                    break;
                }
                double d2 = dArr[i];
                if (d2 <= nanos && nanos < ((double[]) vgVar.f20152a)[i]) {
                    int[] iArr = (int[]) vgVar.f20154c;
                    iArr[i] = iArr[i] + 1;
                }
                if (nanos < d2) {
                    break;
                } else {
                    i++;
                }
            }
        }
        this.k = this.l;
        this.p = nanoTime;
        long longValue = ((Long) edt.f15376a.f15379d.zza(zzbcn.zzL)).longValue();
        long zza = zzcblVar.zza();
        int i2 = 0;
        while (true) {
            String[] strArr = this.f5175b;
            if (i2 >= strArr.length) {
                return;
            }
            if (strArr[i2] == null && longValue > Math.abs(zza - this.r[i2])) {
                int i3 = 8;
                Bitmap bitmap = zzcblVar.getBitmap(8, 8);
                long j = 63;
                long j2 = 0;
                int i4 = 0;
                while (i4 < i3) {
                    int i5 = 0;
                    while (i5 < i3) {
                        int pixel = bitmap.getPixel(i5, i4);
                        j2 |= (Color.green(pixel) + (Color.red(pixel) + Color.blue(pixel)) > 128 ? 1L : 0L) << ((int) j);
                        j--;
                        i5++;
                        i3 = 8;
                    }
                    i4++;
                    i3 = 8;
                }
                strArr[i2] = String.format("%016X", Long.valueOf(j2));
                return;
            }
            i2++;
        }
    }
}
