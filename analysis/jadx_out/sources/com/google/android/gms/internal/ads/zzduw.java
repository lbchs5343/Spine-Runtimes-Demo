package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.agd;
import g.aiz;
import g.edt;
import g.ti;

/* loaded from: classes3.dex */
public final class zzduw extends zzftg {

    /* renamed from: a, reason: collision with root package name */
    public boolean f6538a;

    /* renamed from: c, reason: collision with root package name */
    public long f6540c;

    /* renamed from: d, reason: collision with root package name */
    public final SensorManager f6541d;

    /* renamed from: e, reason: collision with root package name */
    public int f6542e;

    /* renamed from: f, reason: collision with root package name */
    public zzduv f6543f;

    /* renamed from: g, reason: collision with root package name */
    public final Sensor f6544g;
    public boolean h;
    public boolean j;
    public float i = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;

    /* renamed from: b, reason: collision with root package name */
    public Float f6539b = Float.valueOf(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);

    public zzduw(Context context) {
        ti.f20033a.v.getClass();
        this.f6540c = System.currentTimeMillis();
        this.f6542e = 0;
        this.j = false;
        this.f6538a = false;
        this.f6543f = null;
        this.h = false;
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.f6541d = sensorManager;
        if (sensorManager != null) {
            this.f6544g = sensorManager.getDefaultSensor(4);
        } else {
            this.f6544g = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzftg
    public final void zza(SensorEvent sensorEvent) {
        zzbce zzbceVar = zzbcn.zziI;
        edt edtVar = edt.f15376a;
        zzbcl zzbclVar = edtVar.f15379d;
        zzbcl zzbclVar2 = edtVar.f15379d;
        if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
            ti.f20033a.v.getClass();
            long currentTimeMillis = System.currentTimeMillis();
            if (this.f6540c + ((Integer) zzbclVar2.zza(zzbcn.zziK)).intValue() < currentTimeMillis) {
                this.f6542e = 0;
                this.f6540c = currentTimeMillis;
                this.j = false;
                this.f6538a = false;
                this.i = this.f6539b.floatValue();
            }
            float floatValue = this.f6539b.floatValue() + (sensorEvent.values[1] * 4.0f);
            this.f6539b = Float.valueOf(floatValue);
            float f2 = this.i;
            zzbce zzbceVar2 = zzbcn.zziJ;
            if (floatValue > ((Float) zzbclVar2.zza(zzbceVar2)).floatValue() + f2) {
                this.i = this.f6539b.floatValue();
                this.f6538a = true;
            } else if (this.f6539b.floatValue() < this.i - ((Float) zzbclVar2.zza(zzbceVar2)).floatValue()) {
                this.i = this.f6539b.floatValue();
                this.j = true;
            }
            if (this.f6539b.isInfinite()) {
                this.f6539b = Float.valueOf(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                this.i = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            }
            if (this.j && this.f6538a) {
                agd.e("Flick detected.");
                this.f6540c = currentTimeMillis;
                int i = this.f6542e + 1;
                this.f6542e = i;
                this.j = false;
                this.f6538a = false;
                zzduv zzduvVar = this.f6543f;
                if (zzduvVar == null || i != ((Integer) zzbclVar2.zza(zzbcn.zziL)).intValue()) {
                    return;
                }
                ((zzdvk) zzduvVar).zzh(new aiz(1), zzdvj.zzc);
            }
        }
    }

    public final void zzb() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            try {
                if (this.h && (sensorManager = this.f6541d) != null && (sensor = this.f6544g) != null) {
                    sensorManager.unregisterListener(this, sensor);
                    this.h = false;
                    agd.e("Stopped listening for flick gestures.");
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
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziI)).booleanValue()) {
                    if (!this.h && (sensorManager = this.f6541d) != null && (sensor = this.f6544g) != null) {
                        sensorManager.registerListener(this, sensor, 2);
                        this.h = true;
                        agd.e("Listening for flick gestures.");
                    }
                    if (this.f6541d == null || this.f6544g == null) {
                        agd.b("Flick detection failed to initialize. Failed to obtain gyroscope.");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzd(zzduv zzduvVar) {
        this.f6543f = zzduvVar;
    }
}
