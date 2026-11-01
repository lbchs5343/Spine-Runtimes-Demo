package com.bytedance.sdk.component.utils;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class i implements SensorEventListener {
    private float cd;
    private JSONObject ce;
    private ox cv;

    /* renamed from: d, reason: collision with root package name */
    private volatile long f2188d;
    private boolean dc;

    /* renamed from: f, reason: collision with root package name */
    private Sensor f2190f;
    private Sensor fw;
    private int gh;
    private float j;
    private Context jw;
    private Sensor jy;
    private float kx;
    private float l;
    private volatile long mn;
    private SensorManager no;
    private float ox;
    private float p;
    private Sensor q;
    private float s;
    private float vf;
    private int wp;
    private long dq = 2000;
    private boolean iw = false;
    private float ia = 13.0f;
    private float kk = 50.0f;
    private int o = 0;
    private dq ig = null;
    private d mp = null;
    private final long r = 500;
    private volatile long i = 0;
    private volatile boolean le = false;
    private volatile boolean k = false;

    /* renamed from: e, reason: collision with root package name */
    private final float f2189e = 1.0E-9f;
    private float[] h = new float[3];
    private long ji = 0;
    private float bl = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    private float n = 4.0f;
    private float op = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    private int ir = 1;
    private float[] u = new float[3];

    /* renamed from: c, reason: collision with root package name */
    private final float f2187c = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    private boolean er = false;
    private boolean wn = false;
    private boolean nh = false;
    private boolean ob = false;
    private int t = 0;
    private int gx = 0;
    private int by = 0;
    private int uh = 0;
    private int xz = 0;
    private int yy = 0;
    private boolean v = false;
    private int ds = 0;
    private int vw = 0;
    private float ha = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;

    public interface d {
        void dq(float f2, float f3, float f4);
    }

    public interface dq {
        void dq(int i);
    }

    public interface ox {
        void dq();
    }

    public i(Context context, int i, boolean z) {
        this.no = null;
        this.dc = z;
        this.wp = i;
        this.jw = context;
        ig.dq("xgc_cus", "cus:" + z);
        if (z) {
            this.no = (SensorManager) context.getSystemService("sensor");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void d(SensorEvent sensorEvent) {
        d dVar;
        float f2 = this.kx;
        if (f2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            float f3 = (sensorEvent.timestamp - f2) * 1.0E-9f;
            float[] fArr = this.h;
            float f4 = fArr[0];
            float[] fArr2 = sensorEvent.values;
            float f5 = (fArr2[0] * f3) + f4;
            fArr[0] = f5;
            fArr[1] = (fArr2[1] * f3) + fArr[1];
            fArr[2] = (fArr2[2] * f3) + fArr[2];
            float abs = Math.abs((float) Math.toDegrees(f5));
            float abs2 = Math.abs((float) Math.toDegrees(this.h[1]));
            float abs3 = Math.abs((float) Math.toDegrees(this.h[2]));
            if (this.er) {
                boolean z = this.wn && dq(abs, this.j);
                boolean z2 = this.nh && dq(abs2, this.vf);
                boolean z3 = this.ob && dq(abs3, this.l);
                if (z || z2 || z3) {
                    float[] fArr3 = this.h;
                    fArr3[0] = 0.0f;
                    fArr3[1] = 0.0f;
                    fArr3[2] = 0.0f;
                    if (System.currentTimeMillis() - this.mn > this.dq) {
                        this.ig.dq(2);
                        this.mn = System.currentTimeMillis();
                    }
                }
                dVar = this.mp;
                if (dVar != null) {
                    float[] fArr4 = this.h;
                    dVar.dq(fArr4[0], fArr4[1], fArr4[2]);
                }
            } else {
                if (dq(abs, this.kk) || dq(abs2, this.kk) || dq(abs3, this.kk)) {
                    float[] fArr5 = this.h;
                    fArr5[0] = 0.0f;
                    fArr5[1] = 0.0f;
                    fArr5[2] = 0.0f;
                    if (System.currentTimeMillis() - this.mn > this.dq) {
                    }
                }
                dVar = this.mp;
                if (dVar != null) {
                }
            }
        }
        this.kx = sensorEvent.timestamp;
    }

    private void d(boolean z, SensorEvent sensorEvent) {
        if (z) {
            float[] fArr = sensorEvent.values;
            int dq2 = dq(fArr[0], this.t);
            int dq3 = dq(fArr[1], this.gx);
            int dq4 = dq(fArr[2], this.by);
            if (d(dq2, dq3, dq4, true)) {
                dq(dq2, dq3, dq4, true);
                ig();
            } else if (this.vw == 1) {
                this.t = dq2;
                this.gx = dq3;
                this.by = dq4;
            } else {
                this.t = dq2 | this.t;
                this.gx |= dq3;
                this.by = dq4 | this.by;
            }
        }
    }

    private boolean d(float f2, float f3) {
        return Math.abs(f3) < f2;
    }

    private boolean d(int i, int i2, int i3, boolean z) {
        boolean dq2;
        boolean dq3;
        boolean dq4;
        int i4 = this.ds;
        if (i4 == 1) {
            int i5 = this.by;
            return z ? dq(i3, i5) : dq(i3, i5, this.yy);
        }
        if (i4 == 2) {
            int i6 = this.gx;
            return z ? dq(i2, i6) : dq(i2, i6, this.xz);
        }
        if (i4 == 4) {
            int i7 = this.t;
            return z ? dq(i, i7) : dq(i, i7, this.uh);
        }
        if (i4 == 7) {
            return z ? dq(i, this.t) && dq(i2, this.gx) && dq(i3, this.by) : dq(i, this.t, this.uh) && dq(i2, this.gx, this.xz) && dq(i3, this.by, this.yy);
        }
        if (z) {
            dq2 = dq(i, this.t);
            dq3 = dq(i2, this.gx);
            dq4 = dq(i3, this.by);
        } else {
            dq2 = dq(i, this.t, this.uh);
            dq3 = dq(i2, this.gx, this.xz);
            dq4 = dq(i3, this.by, this.yy);
        }
        return dq2 || dq3 || dq4;
    }

    private float dq(double d2) {
        if (d2 <= 0.0d || d2 > 180.0d) {
            d2 = 50.0d;
        }
        return (float) d2;
    }

    private float dq(float f2, float f3, float f4) {
        return Math.max(Math.max(f3, f2), f4);
    }

    private int dq(float f2, int i) {
        if (f2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            return iw(f2);
        }
        if (i == 0) {
            return 0;
        }
        return i == 2 ? 1 : 2;
    }

    private void dq(float f2, float f3, float f4, float f5) {
        float[] fArr = this.u;
        fArr[0] = (f2 * f5) + fArr[0];
        fArr[1] = (f3 * f5) + fArr[1];
        fArr[2] = (f4 * f5) + fArr[2];
    }

    private void dq(int i, int i2, int i3, boolean z) {
        if (z) {
            this.t = 0;
            this.gx = 0;
            this.by = 0;
            this.uh = 0;
            this.xz = 0;
            this.yy = 0;
            return;
        }
        if (i == 0) {
            i = this.t;
        }
        this.t = i;
        if (i2 == 0) {
            i2 = this.gx;
        }
        this.gx = i2;
        if (i3 == 0) {
            i3 = this.by;
        }
        this.by = i3;
    }

    private void dq(SensorEvent sensorEvent) {
        if (this.ji != 0) {
            float[] fArr = sensorEvent.values;
            float f2 = fArr[0];
            float f3 = fArr[1];
            float f4 = fArr[2];
            float f5 = (sensorEvent.timestamp - r0) * 1.0E-9f;
            float f6 = this.bl;
            if (f6 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                float f7 = this.ha;
                if (f7 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || this.op < f7) {
                    dq(f2, f3, f4, f5);
                } else {
                    ia();
                }
            } else if (d(f6, f2) && d(this.bl, f3) && d(this.bl, f4)) {
                dq(f2, f3, f4, f5);
            } else {
                ia();
            }
            p(this.kk);
            d dVar = this.mp;
            if (dVar != null) {
                float[] fArr2 = this.u;
                dVar.dq(fArr2[0], fArr2[1], fArr2[2]);
            }
        }
        this.ji = sensorEvent.timestamp;
    }

    private void dq(boolean z, double d2) {
        if (!no() && z) {
            ig();
            return;
        }
        if (z) {
            this.i = System.currentTimeMillis();
            this.k = true;
            s((float) d2);
        } else {
            if (!this.k || System.currentTimeMillis() - this.i < 500) {
                return;
            }
            this.le = false;
            mp();
        }
    }

    private void dq(boolean z, SensorEvent sensorEvent) {
        if (z) {
            float[] fArr = sensorEvent.values;
            int dq2 = dq(fArr[0], this.t);
            int dq3 = dq(fArr[1], this.gx);
            int dq4 = dq(fArr[2], this.by);
            if (d(dq2, dq3, dq4, false)) {
                dq(dq2, dq3, dq4, true);
                ig();
                return;
            }
            this.t |= dq2;
            if (dq2 <= 0) {
                dq2 = this.uh;
            }
            this.uh = dq2;
            this.gx |= dq3;
            if (dq3 <= 0) {
                dq3 = this.xz;
            }
            this.xz = dq3;
            this.by |= dq4;
            if (dq4 <= 0) {
                dq4 = this.yy;
            }
            this.yy = dq4;
        }
    }

    private boolean dq(float f2, float f3) {
        return f3 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && f2 > f3;
    }

    private boolean dq(int i, int i2) {
        return (i | i2) == 3;
    }

    private boolean dq(int i, int i2, int i3) {
        return i2 == 3 && (i | i3) == 3;
    }

    private boolean dq(boolean z, boolean z2, boolean z3, boolean z4) {
        if (!z) {
            float[] fArr = this.u;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            fArr[2] = 0.0f;
            return true;
        }
        int iw = z2 ? iw(this.u[0]) : 0;
        int iw2 = z3 ? iw(this.u[1]) : 0;
        int iw3 = z4 ? iw(this.u[2]) : 0;
        float[] fArr2 = this.u;
        fArr2[0] = 0.0f;
        fArr2[1] = 0.0f;
        fArr2[2] = 0.0f;
        if (dq(iw, this.t) || dq(iw2, this.gx) || dq(iw3, this.by)) {
            dq(iw, iw2, iw3, true);
            return true;
        }
        if (this.vw != 1) {
            dq(iw, iw2, iw3, false);
        } else if (z2 || z3 || z4) {
            this.t = iw;
            this.gx = iw2;
            this.by = iw3;
        }
        return false;
    }

    private void ia() {
        if (this.ir == 1) {
            float[] fArr = this.u;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            fArr[2] = 0.0f;
        }
    }

    private void ig() {
        this.ig.dq(1);
        this.f2188d = System.currentTimeMillis();
    }

    private int iw(float f2) {
        return f2 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? 1 : 2;
    }

    private boolean iw() {
        SensorManager sensorManager = this.no;
        boolean z = false;
        if (sensorManager == null) {
            return false;
        }
        try {
            if (this.q == null) {
                this.q = sensorManager.getDefaultSensor(1);
            }
            z = this.no.registerListener(this, this.q, 3);
            kk();
            return z;
        } catch (Throwable unused) {
            return z;
        }
    }

    private void kk() {
        this.i = 0L;
        this.le = false;
        this.k = false;
        this.t = 0;
        this.gx = 0;
        this.by = 0;
        this.uh = 0;
        this.xz = 0;
        this.yy = 0;
    }

    private boolean mn() {
        int i;
        SensorManager sensorManager = this.no;
        boolean z = false;
        if (sensorManager == null) {
            return false;
        }
        try {
            if (this.gh == 0) {
                if (this.jy == null) {
                    this.jy = sensorManager.getDefaultSensor(15);
                }
                this.iw = false;
                z = this.no.registerListener(this, this.jy, 1);
            }
            int i2 = this.gh;
            if (i2 == 3 || i2 == 2 || i2 == 4) {
                if (this.f2190f == null) {
                    this.f2190f = this.no.getDefaultSensor(4);
                }
                float f2 = this.n;
                if (f2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && ((i = this.gh) == 2 || i == 4)) {
                    this.ha = (float) Math.pow(f2, 2.0d);
                    if (this.fw == null) {
                        this.fw = this.no.getDefaultSensor(10);
                    }
                    this.no.registerListener(this, this.fw, 1);
                }
                z = this.no.registerListener(this, this.f2190f, 1);
            }
            o();
        } catch (Throwable unused) {
        }
        return z;
    }

    private void mp() {
        this.ig.dq(1);
        this.f2188d = System.currentTimeMillis();
        this.i = 0L;
        this.k = false;
    }

    private boolean no() {
        return this.cd > this.ia;
    }

    private void o() {
        this.t = 0;
        this.gx = 0;
        this.by = 0;
    }

    private void p(float f2) {
        boolean z = false;
        boolean z2 = this.gh == 4;
        float abs = Math.abs((float) Math.toDegrees(this.u[0]));
        float abs2 = Math.abs((float) Math.toDegrees(this.u[1]));
        float abs3 = Math.abs((float) Math.toDegrees(this.u[2]));
        if (this.er) {
            boolean z3 = this.wn && dq(abs, this.j);
            boolean z4 = this.nh && dq(abs2, this.vf);
            boolean z5 = this.ob && dq(abs3, this.l);
            if (z3 || z4 || z5) {
                z = dq(z2, z3, z4, z5);
            }
        } else {
            boolean dq2 = dq(abs, f2);
            boolean dq3 = dq(abs2, f2);
            boolean dq4 = dq(abs3, f2);
            if (dq2 || dq3 || dq4) {
                z = dq(z2, dq2, dq3, dq4);
            }
        }
        if (!z || System.currentTimeMillis() - this.mn <= this.dq) {
            return;
        }
        this.ig.dq(2);
        this.mn = System.currentTimeMillis();
    }

    private void s(float f2) {
        if (System.currentTimeMillis() - this.i >= 500) {
            this.le = false;
            mp();
        } else if (f2 >= this.cd) {
            this.le = true;
            mp();
        }
    }

    public void d() {
        SensorManager sensorManager = this.no;
        if (sensorManager == null) {
            return;
        }
        sensorManager.unregisterListener(this);
    }

    public void d(float f2) {
        this.kk = f2;
    }

    public void d(int i) {
        SensorManager sensorManager = this.no;
        if (sensorManager == null) {
            return;
        }
        if (i == 3 || i == 2 || i == 4) {
            if (this.f2190f == null && sensorManager != null) {
                this.f2190f = sensorManager.getDefaultSensor(4);
            }
            if (this.f2190f != null) {
                this.gh = i;
                return;
            }
        }
        this.gh = 0;
    }

    public void d(JSONObject jSONObject) {
        if (this.wp != 2) {
            return;
        }
        if (jSONObject == null) {
            this.vw = 0;
        } else {
            this.vw = jSONObject.optInt("double_direct_match", 0);
        }
    }

    public void dq(float f2) {
        this.ia = f2;
    }

    public void dq(int i) {
        this.o = i;
    }

    public void dq(d dVar) {
        this.mp = dVar;
    }

    public void dq(dq dqVar) {
        this.ig = dqVar;
    }

    public void dq(ox oxVar) {
        this.cv = oxVar;
    }

    public void dq(JSONObject jSONObject) {
        if (this.wp != 2) {
            return;
        }
        this.ce = jSONObject;
        if (jSONObject == null) {
            this.wn = false;
            this.nh = false;
            this.ob = false;
        } else {
            this.wn = jSONObject.has("x_threshold");
            this.j = dq(this.ce.optDouble("x_threshold", 50.0d));
            this.nh = this.ce.has("y_threshold");
            this.vf = dq(this.ce.optDouble("y_threshold", 50.0d));
            this.ob = this.ce.has("z_threshold");
            this.l = dq(this.ce.optDouble("z_threshold", 50.0d));
        }
        this.er = this.wn || this.nh || this.ob;
    }

    public void dq(boolean z) {
        Context context;
        StringBuilder sb = new StringBuilder("cus:");
        sb.append(z);
        sb.append(" m:");
        sb.append(this.dc);
        sb.append(" equ:");
        sb.append(this.no != null);
        ig.dq("xgcc", sb.toString());
        if (z) {
            if (this.dc || this.no != null || (context = this.jw) == null) {
                return;
            }
            this.no = (SensorManager) context.getSystemService("sensor");
            return;
        }
        SensorManager sensorManager = this.no;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this);
            this.no = null;
        }
    }

    public boolean dq() {
        if (this.no == null || this.v) {
            return false;
        }
        int i = this.wp;
        if (i == 1) {
            return iw();
        }
        if (i == 2) {
            return mn();
        }
        return false;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        ox oxVar = this.cv;
        if (oxVar != null) {
            oxVar.dq();
        }
        int type = sensorEvent.sensor.getType();
        float[] fArr = sensorEvent.values;
        float abs = Math.abs(fArr[0]);
        float abs2 = Math.abs(fArr[1]);
        float abs3 = Math.abs(fArr[2]);
        if (type == 1) {
            if (this.ig == null || System.currentTimeMillis() - this.f2188d <= this.dq) {
                return;
            }
            int i = this.o;
            if (i == 1) {
                double sqrt = Math.sqrt(Math.pow(abs3, 2.0d) + Math.pow(abs2, 2.0d) + Math.pow(abs, 2.0d));
                dq(sqrt > ((double) this.ia), sqrt);
                return;
            } else if (i == 2) {
                d(Math.sqrt(Math.pow((double) abs3, 2.0d) + (Math.pow((double) abs2, 2.0d) + Math.pow((double) abs, 2.0d))) > ((double) this.ia), sensorEvent);
                return;
            } else if (i == 3) {
                dq(Math.sqrt(Math.pow((double) abs3, 2.0d) + (Math.pow((double) abs2, 2.0d) + Math.pow((double) abs, 2.0d))) > ((double) this.ia), sensorEvent);
                return;
            } else {
                double dq2 = dq(abs, abs2, abs3);
                dq(dq2 > ((double) this.ia), dq2);
                return;
            }
        }
        if (type == 4) {
            int i2 = this.gh;
            if (i2 == 3) {
                d(sensorEvent);
                return;
            } else {
                if (i2 == 2 || i2 == 4) {
                    dq(sensorEvent);
                    return;
                }
                return;
            }
        }
        if (type == 10) {
            float[] fArr2 = sensorEvent.values;
            this.op = (float) (Math.pow(fArr2[2], 2.0d) + Math.pow(fArr2[1], 2.0d) + Math.pow(fArr2[0], 2.0d));
            return;
        }
        if (type != 15) {
            return;
        }
        float abs4 = Math.abs(fArr[0]);
        float abs5 = Math.abs(fArr[1]);
        float abs6 = Math.abs(fArr[2]);
        d dVar = this.mp;
        if (dVar != null) {
            dVar.dq(fArr[0], fArr[1], fArr[2]);
        }
        if (abs4 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && abs5 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && abs6 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            return;
        }
        if (!this.iw) {
            this.iw = true;
            this.ox = abs4;
            this.p = abs5;
            this.s = abs6;
            return;
        }
        float abs7 = Math.abs(abs4 - this.ox) * 180.0f;
        float abs8 = Math.abs(abs5 - this.p) * 180.0f;
        float abs9 = Math.abs(abs6 - this.s) * 180.0f;
        if (!this.er) {
            float f2 = this.kk;
            if ((abs7 > f2 || abs8 > f2 || abs9 > f2) && this.ig != null && System.currentTimeMillis() - this.mn > this.dq) {
                this.ig.dq(2);
                this.mn = System.currentTimeMillis();
                this.iw = false;
                return;
            }
            return;
        }
        boolean z = this.wn && abs7 > this.j;
        boolean z2 = this.nh && abs8 > this.vf;
        boolean z3 = this.ob && abs9 > this.l;
        if ((z || z2 || z3) && this.ig != null && System.currentTimeMillis() - this.mn > this.dq) {
            this.ig.dq(2);
            this.mn = System.currentTimeMillis();
            this.iw = false;
        }
    }

    public void ox() {
        this.v = false;
        dq();
    }

    public void ox(float f2) {
        this.cd = f2;
    }

    public void ox(JSONObject jSONObject) {
        if (this.wp != 1) {
            return;
        }
        if (jSONObject == null) {
            this.ds = 0;
            this.vw = 0;
        } else {
            this.ds = jSONObject.optInt("double_direct_conf", 0);
            this.vw = jSONObject.optInt("double_direct_match", 0);
        }
    }

    public void p() {
        this.v = true;
        d();
    }

    public boolean s() {
        return this.le;
    }
}
