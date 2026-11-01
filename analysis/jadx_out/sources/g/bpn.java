package g;

import android.content.Context;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;
import android.view.Display;
import android.view.WindowManager;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzccd;
import com.google.android.gms.internal.ads.zzftd;
import com.google.android.gms.internal.ads.zzftg;

/* loaded from: classes3.dex */
public final class bpn extends zzftg {

    /* renamed from: a, reason: collision with root package name */
    public zzccd f11959a;

    /* renamed from: d, reason: collision with root package name */
    public final SensorManager f11962d;

    /* renamed from: e, reason: collision with root package name */
    public float[] f11963e;

    /* renamed from: g, reason: collision with root package name */
    public final Display f11965g;
    public zzftd h;

    /* renamed from: b, reason: collision with root package name */
    public final float[] f11960b = new float[9];

    /* renamed from: c, reason: collision with root package name */
    public final float[] f11961c = new float[9];

    /* renamed from: f, reason: collision with root package name */
    public final Object f11964f = new Object();

    public bpn(Context context) {
        this.f11962d = (SensorManager) context.getSystemService("sensor");
        this.f11965g = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    public final void i() {
        if (this.h == null) {
            return;
        }
        this.f11962d.unregisterListener(this);
        this.h.post(new foq(6));
        this.h = null;
    }

    public final boolean j(float[] fArr) {
        synchronized (this.f11964f) {
            try {
                float[] fArr2 = this.f11963e;
                if (fArr2 == null) {
                    return false;
                }
                System.arraycopy(fArr2, 0, fArr, 0, 9);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzftg
    public final void zza(SensorEvent sensorEvent) {
        float[] fArr = sensorEvent.values;
        if (fArr[0] == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && fArr[1] == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && fArr[2] == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            return;
        }
        synchronized (this.f11964f) {
            try {
                if (this.f11963e == null) {
                    this.f11963e = new float[9];
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        SensorManager.getRotationMatrixFromVector(this.f11960b, fArr);
        int rotation = this.f11965g.getRotation();
        if (rotation == 1) {
            SensorManager.remapCoordinateSystem(this.f11960b, 2, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA, this.f11961c);
        } else if (rotation == 2) {
            SensorManager.remapCoordinateSystem(this.f11960b, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA, 130, this.f11961c);
        } else if (rotation != 3) {
            System.arraycopy(this.f11960b, 0, this.f11961c, 0, 9);
        } else {
            SensorManager.remapCoordinateSystem(this.f11960b, 130, 1, this.f11961c);
        }
        float[] fArr2 = this.f11961c;
        float f2 = fArr2[1];
        fArr2[1] = fArr2[3];
        fArr2[3] = f2;
        float f3 = fArr2[2];
        fArr2[2] = fArr2[6];
        fArr2[6] = f3;
        float f4 = fArr2[5];
        fArr2[5] = fArr2[7];
        fArr2[7] = f4;
        synchronized (this.f11964f) {
            System.arraycopy(this.f11961c, 0, this.f11963e, 0, 9);
        }
        zzccd zzccdVar = this.f11959a;
        if (zzccdVar != null) {
            zzccdVar.zza();
        }
    }
}
