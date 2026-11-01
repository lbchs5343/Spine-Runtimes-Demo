package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import java.text.DecimalFormat;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class o0 implements SensorEventListener {

    /* renamed from: a, reason: collision with root package name */
    public static volatile o0 f21178a;

    /* renamed from: d, reason: collision with root package name */
    public final SensorManager f21181d;

    /* renamed from: e, reason: collision with root package name */
    public int f21182e;

    /* renamed from: f, reason: collision with root package name */
    public int f21183f = 0;

    /* renamed from: b, reason: collision with root package name */
    public float[] f21179b = new float[3];

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f21180c = new ArrayList();

    static {
        new DecimalFormat((String) pblk.a(16777217, 0, 0L, "9acf08", new byte[]{120, 45, 64}));
        f21178a = null;
    }

    public o0(Context context) {
        this.f21181d = null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            this.f21181d = (SensorManager) applicationContext.getSystemService((String) pblk.a(16777217, 0, 0L, "25515f", new byte[]{48, 50, 72, 86, 5, 99}));
        }
    }

    public static o0 g(Context context) {
        if (f21178a == null) {
            synchronized (o0.class) {
                try {
                    if (f21178a == null) {
                        f21178a = new o0(context);
                    }
                } finally {
                }
            }
        }
        return f21178a;
    }

    public final synchronized void h() {
        try {
            SensorManager sensorManager = this.f21181d;
            if (sensorManager != null) {
                int i = this.f21182e - 1;
                this.f21182e = i;
                if (i == 0) {
                    sensorManager.unregisterListener(this);
                }
            }
        } catch (Exception unused) {
            pblk.a(16777217, 0, 0L, "e05361", new byte[]{103, 33, 69, 120, 28});
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        this.f21179b = sensorEvent.values;
        this.f21183f = 1;
    }
}
