package com.bytedance.sdk.component.panglearmor.d;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.o.mn;
import com.bytedance.sdk.component.panglearmor.iw;
import com.bytedance.sdk.component.utils.q;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class p implements SensorEventListener {
    private static volatile p dq;
    private volatile dq gh;
    private Sensor jy;
    private Sensor q;

    /* renamed from: d, reason: collision with root package name */
    private volatile boolean f2170d = false;
    private final List<Float> ox = new ArrayList(1);
    private final List<Float> p = new ArrayList(1);
    private final List<Float> s = new ArrayList(1);
    private final List<Float> iw = new ArrayList(1);
    private final List<Float> mn = new ArrayList(1);
    private final List<Float> ia = new ArrayList(1);
    private final int kk = 0;
    private final int o = 1;
    private final int no = 2;
    private final int ig = 16;
    private final int mp = 32;

    /* renamed from: f, reason: collision with root package name */
    private long f2171f = 0;
    private volatile boolean fw = false;
    private volatile AtomicInteger cd = new AtomicInteger(0);
    private volatile int r = 0;

    public interface dq {
        void dq(JSONObject jSONObject);
    }

    private p() {
        this.q = null;
        this.jy = null;
        SensorManager sensorManager = (SensorManager) iw.p().getApplicationContext().getSystemService("sensor");
        if (sensorManager != null) {
            try {
                this.q = sensorManager.getDefaultSensor(1);
                this.jy = sensorManager.getDefaultSensor(2);
            } catch (Exception unused) {
            }
        }
    }

    public static p dq() {
        if (dq == null) {
            synchronized (p.class) {
                try {
                    if (dq == null) {
                        dq = new p();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(float[] fArr) {
        this.f2171f = System.currentTimeMillis();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("t", p());
            jSONObject.put("val", new JSONArray(fArr));
            d.dq().dq(jSONObject, "sp_angle");
            d.dq().dq(q.ox(iw.p()));
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    private synchronized void iw() {
        if (!this.f2170d && this.ox.size() > 0 && this.iw.size() > 0) {
            this.f2170d = true;
            s();
            mn.d(new kk("har") { // from class: com.bytedance.sdk.component.panglearmor.d.p.1
                @Override // java.lang.Runnable
                public void run() {
                    float[] dq2 = ox.dq(p.this.ox, p.this.p, p.this.s, p.this.iw, p.this.mn, p.this.ia);
                    p.this.dq(dq2);
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    try {
                        long iw = s.dq().iw();
                        long mn = s.dq().mn();
                        int ox = (int) (((s.dq().ox() / 1000) / 60) / 60);
                        if (ox <= 0) {
                            ox = 1;
                        }
                        jSONObject.put("azimuth_unit", iw);
                        jSONObject.put("angle_unit", mn);
                        LinkedList<JSONObject> dq3 = d.dq().dq(0L);
                        jSONObject.put("active", Arrays.toString(ox.dq(dq3, ox)));
                        com.bytedance.sdk.component.panglearmor.d.dq.dq().dq(ox);
                        jSONObject.put("screen", Arrays.toString(com.bytedance.sdk.component.panglearmor.d.dq.dq().ox()));
                        jSONObject.put("network", Arrays.toString(com.bytedance.sdk.component.panglearmor.d.dq.dq().d()));
                        jSONObject.put("support_net", com.bytedance.sdk.component.panglearmor.d.dq.dq().p());
                        jSONObject.put("sim_status", com.bytedance.sdk.component.panglearmor.d.dq.dq().s());
                        int[][] dq4 = ox.dq(dq3, iw, mn);
                        jSONObject.put("ax", Arrays.toString(dq4[0]));
                        jSONObject.put("ay", Arrays.toString(dq4[1]));
                        jSONObject.put("az", Arrays.toString(dq4[2]));
                        int[][] dq5 = ox.dq(d.dq().dq(10800000L), iw, mn);
                        jSONObject.put("ax3", Arrays.toString(dq5[0]));
                        jSONObject.put("ay3", Arrays.toString(dq5[1]));
                        jSONObject.put("az3", Arrays.toString(dq5[2]));
                        int[][] dq6 = ox.dq(d.dq().dq(21600000L), iw, mn);
                        jSONObject.put("ax6", Arrays.toString(dq6[0]));
                        jSONObject.put("ay6", Arrays.toString(dq6[1]));
                        jSONObject.put("az6", Arrays.toString(dq6[2]));
                        jSONObject.put("angleAvg", Arrays.toString(dq2));
                        jSONObject.put("timestamp", currentTimeMillis);
                    } catch (Exception unused) {
                        jSONObject = null;
                    }
                    if (p.this.gh != null) {
                        p.this.gh.dq(jSONObject);
                    }
                    p.this.mn();
                    p.this.fw = false;
                }
            });
        } else {
            if (this.cd.get() > 3) {
                s();
                mn();
                this.fw = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mn() {
        this.ox.clear();
        this.p.clear();
        this.s.clear();
        this.iw.clear();
        this.mn.clear();
        this.ia.clear();
    }

    private void s() {
        this.cd = new AtomicInteger(0);
        SensorManager sensorManager = (SensorManager) iw.p().getApplicationContext().getSystemService("sensor");
        if (sensorManager != null) {
            Sensor sensor = this.q;
            if (sensor != null) {
                sensorManager.unregisterListener(this, sensor);
            }
            Sensor sensor2 = this.jy;
            if (sensor2 != null) {
                sensorManager.unregisterListener(this, sensor2);
            }
        }
    }

    public synchronized boolean d() {
        int i;
        int i2;
        boolean registerListener;
        boolean registerListener2;
        try {
            this.r = 0;
            if (this.fw) {
                return false;
            }
            if (this.q == null || this.jy == null) {
                this.r |= this.q == null ? 2 : 0;
                int i3 = this.r;
                if (this.jy == null) {
                    i = i3;
                    i2 = 16;
                } else {
                    i = i3;
                    i2 = 0;
                }
            } else {
                this.fw = false;
                SensorManager sensorManager = (SensorManager) iw.p().getApplicationContext().getSystemService("sensor");
                i2 = 1;
                if (sensorManager != null) {
                    try {
                        registerListener = sensorManager.registerListener(this, this.q, 1);
                        registerListener2 = sensorManager.registerListener(this, this.jy, 1);
                    } catch (Exception unused) {
                        i = this.r;
                        i2 = 32;
                    }
                    if (registerListener && registerListener2) {
                        this.fw = true;
                        this.f2170d = false;
                        return this.fw;
                    }
                    this.r |= 32;
                    s();
                    mn();
                    return this.fw;
                }
                i = this.r;
            }
            this.r = i | i2;
            return this.fw;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void dq(dq dqVar) {
        this.gh = dqVar;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        this.cd.incrementAndGet();
        int type = sensorEvent.sensor.getType();
        if (type == 1) {
            if (this.ox.size() > 0) {
                iw();
                return;
            }
            this.ox.add(Float.valueOf(sensorEvent.values[0]));
            this.p.add(Float.valueOf(sensorEvent.values[1]));
            this.s.add(Float.valueOf(sensorEvent.values[2]));
            return;
        }
        if (type != 2) {
            return;
        }
        if (this.iw.size() > 0) {
            iw();
            return;
        }
        this.iw.add(Float.valueOf(sensorEvent.values[0]));
        this.mn.add(Float.valueOf(sensorEvent.values[1]));
        this.ia.add(Float.valueOf(sensorEvent.values[2]));
    }

    public boolean ox() {
        return this.fw;
    }

    public long p() {
        return this.f2171f;
    }
}
