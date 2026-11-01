package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;
import g.agd;
import g.aiz;
import g.edt;
import g.ti;

/* loaded from: classes3.dex */
public final class zzdwm extends zzftg {

    /* renamed from: a, reason: collision with root package name */
    public long f6608a;

    /* renamed from: b, reason: collision with root package name */
    public int f6609b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f6610c;

    /* renamed from: d, reason: collision with root package name */
    public zzdwl f6611d;

    /* renamed from: e, reason: collision with root package name */
    public SensorManager f6612e;

    /* renamed from: f, reason: collision with root package name */
    public Sensor f6613f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f6614g;

    public zzdwm(Context context) {
        this.f6610c = context;
    }

    @Override // com.google.android.gms.internal.ads.zzftg
    public final void zza(SensorEvent sensorEvent) {
        zzbce zzbceVar = zzbcn.zziD;
        edt edtVar = edt.f15376a;
        zzbcl zzbclVar = edtVar.f15379d;
        zzbcl zzbclVar2 = edtVar.f15379d;
        if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
            float[] fArr = sensorEvent.values;
            float f2 = fArr[0] / 9.80665f;
            float f3 = fArr[1] / 9.80665f;
            float f4 = fArr[2] / 9.80665f;
            if (((float) Math.sqrt((f4 * f4) + (f3 * f3) + (f2 * f2))) >= ((Float) zzbclVar2.zza(zzbcn.zziE)).floatValue()) {
                ti.f20033a.v.getClass();
                long currentTimeMillis = System.currentTimeMillis();
                if (this.f6608a + ((Integer) zzbclVar2.zza(zzbcn.zziF)).intValue() <= currentTimeMillis) {
                    if (this.f6608a + ((Integer) zzbclVar2.zza(zzbcn.zziG)).intValue() < currentTimeMillis) {
                        this.f6609b = 0;
                    }
                    agd.e("Shake detected.");
                    this.f6608a = currentTimeMillis;
                    int i = this.f6609b + 1;
                    this.f6609b = i;
                    zzdwl zzdwlVar = this.f6611d;
                    if (zzdwlVar == null || i != ((Integer) zzbclVar2.zza(zzbcn.zziH)).intValue()) {
                        return;
                    }
                    ((zzdvk) zzdwlVar).zzh(new aiz(0), zzdvj.zzc);
                }
            }
        }
    }

    public final void zzb() {
        synchronized (this) {
            try {
                if (this.f6614g) {
                    SensorManager sensorManager = this.f6612e;
                    if (sensorManager != null) {
                        sensorManager.unregisterListener(this, this.f6613f);
                        agd.e("Stopped listening for shake gestures.");
                    }
                    this.f6614g = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzc() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            try {
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziD)).booleanValue()) {
                    if (this.f6612e == null) {
                        SensorManager sensorManager2 = (SensorManager) this.f6610c.getSystemService("sensor");
                        this.f6612e = sensorManager2;
                        if (sensorManager2 == null) {
                            agd.b("Shake detection failed to initialize. Failed to obtain accelerometer.");
                            return;
                        }
                        this.f6613f = sensorManager2.getDefaultSensor(1);
                    }
                    if (!this.f6614g && (sensorManager = this.f6612e) != null && (sensor = this.f6613f) != null) {
                        sensorManager.registerListener(this, sensor, 2);
                        ti.f20033a.v.getClass();
                        this.f6608a = System.currentTimeMillis() - ((Integer) r1.f15379d.zza(zzbcn.zziF)).intValue();
                        this.f6614g = true;
                        agd.e("Listening for shake gestures.");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzd(zzdwl zzdwlVar) {
        this.f6611d = zzdwlVar;
    }
}
