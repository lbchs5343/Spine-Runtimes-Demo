package com.bytedance.sdk.openadsdk.q;

import android.content.Context;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Vibrator;

/* loaded from: classes3.dex */
public class o {
    public static dq dq;
    private static SensorManager iw;

    /* renamed from: d, reason: collision with root package name */
    protected static final float[] f3860d = new float[3];
    protected static final float[] ox = new float[3];
    protected static final float[] p = new float[9];
    protected static final float[] s = new float[3];

    public static void d(Context context, SensorEventListener sensorEventListener, int i) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            if (dq()) {
                return;
            }
            dq dqVar = dq;
            if (dqVar == null || !dqVar.ox()) {
                SensorManager dq2 = dq(context);
                dq2.registerListener(sensorEventListener, dq2.getDefaultSensor(4), dq(i));
            }
        } catch (Throwable th) {
            mn.dq("SensorHub", "startListenGyroscope error", th);
        }
    }

    private static int dq(int i) {
        if (i == 0 || i == 1 || i == 2 || i == 3) {
            return i;
        }
        return 2;
    }

    private static SensorManager dq(Context context) {
        if (iw == null) {
            synchronized (o.class) {
                try {
                    if (iw == null) {
                        iw = (SensorManager) context.getSystemService("sensor");
                    }
                } finally {
                }
            }
        }
        return iw;
    }

    public static void dq(Context context, long j) {
        if (context == null) {
            return;
        }
        ((Vibrator) context.getSystemService("vibrator")).vibrate(j);
    }

    public static void dq(Context context, SensorEventListener sensorEventListener) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            dq(context).unregisterListener(sensorEventListener);
        } catch (Throwable th) {
            mn.dq("SensorHub", "stopListen error", th);
        }
    }

    public static void dq(Context context, SensorEventListener sensorEventListener, int i) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            if (dq()) {
                return;
            }
            dq dqVar = dq;
            if (dqVar == null || !dqVar.ox()) {
                SensorManager dq2 = dq(context);
                dq2.registerListener(sensorEventListener, dq2.getDefaultSensor(1), dq(i));
            }
        } catch (Throwable th) {
            mn.dq("SensorHub", "startListenAccelerometer error", th);
        }
    }

    public static void dq(dq dqVar) {
        dq = dqVar;
    }

    private static boolean dq() {
        dq dqVar = dq;
        return dqVar == null || !dqVar.d();
    }

    public static void ox(Context context, SensorEventListener sensorEventListener, int i) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            if (dq()) {
                return;
            }
            dq dqVar = dq;
            if (dqVar == null || !dqVar.ox()) {
                SensorManager dq2 = dq(context);
                dq2.registerListener(sensorEventListener, dq2.getDefaultSensor(10), dq(i));
            }
        } catch (Throwable th) {
            mn.dq("SensorHub", "startListenLinearAcceleration error", th);
        }
    }

    public static void p(Context context, SensorEventListener sensorEventListener, int i) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            if (dq()) {
                return;
            }
            dq dqVar = dq;
            if (dqVar == null || !dqVar.ox()) {
                SensorManager dq2 = dq(context);
                dq2.registerListener(sensorEventListener, dq2.getDefaultSensor(1), dq(i));
                dq2.registerListener(sensorEventListener, dq2.getDefaultSensor(2), dq(i));
            }
        } catch (Throwable th) {
            mn.dq("SensorHub", "startListenRotationVector err", th);
        }
    }
}
