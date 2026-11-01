package g;

import android.animation.PropertyValuesHolder;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.util.Log;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class eqz extends cw {
    public Paint j;
    public LinearGradient k;
    public String l;
    public Matrix m;
    public float n;
    public float o;
    public Paint p;
    public PorterDuffXfermode q;
    public View r;

    @Override // g.cw
    public final void d(int i, int i2) {
        this.n = i;
        this.o = i2;
        String str = this.l;
        str.getClass();
        switch (str) {
            case "bottom":
                this.k = new LinearGradient(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, -this.o, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0, -1, Shader.TileMode.CLAMP);
                break;
            case "top":
                this.k = new LinearGradient(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.o, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0, -1, Shader.TileMode.CLAMP);
                break;
            case "left":
                this.k = new LinearGradient(this.n, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0, -1, Shader.TileMode.CLAMP);
                break;
            case "right":
                this.k = new LinearGradient(-this.n, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.o, 0, -1, Shader.TileMode.CLAMP);
                break;
        }
    }

    @Override // g.cw
    public final void e(Canvas canvas) {
        char c2;
        Paint paint = this.j;
        Matrix matrix = this.m;
        Paint paint2 = this.p;
        dlv dlvVar = (dlv) this.f13614b;
        try {
            if (dlvVar.gx() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                int gx = (int) (this.n * dlvVar.gx());
                int gx2 = (int) (this.o * dlvVar.gx());
                paint.setXfermode(this.q);
                String str = this.l;
                switch (str.hashCode()) {
                    case -1383228885:
                        if (str.equals("bottom")) {
                            c2 = 2;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 115029:
                        if (str.equals("top")) {
                            c2 = 3;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 3317767:
                        if (str.equals("left")) {
                            c2 = 1;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 108511772:
                        if (str.equals("right")) {
                            c2 = 0;
                            break;
                        }
                        c2 = 65535;
                        break;
                    default:
                        c2 = 65535;
                        break;
                }
                if (c2 == 0) {
                    float f2 = gx;
                    canvas.drawRect(f2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.n, this.o, paint);
                    matrix.setTranslate(f2, this.o);
                    this.k.setLocalMatrix(matrix);
                    paint2.setShader(this.k);
                    if (dlvVar.gx() <= 1.0f && dlvVar.gx() > 0.9f) {
                        paint2.setAlpha((int) (255.0f - (dlvVar.gx() * 255.0f)));
                    }
                    canvas.drawRect(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f2, this.o, paint2);
                    return;
                }
                if (c2 == 1) {
                    float f3 = gx;
                    canvas.drawRect(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.n - f3, this.o, paint);
                    matrix.setTranslate(this.n - f3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    this.k.setLocalMatrix(matrix);
                    paint2.setShader(this.k);
                    if (dlvVar.gx() <= 1.0f && dlvVar.gx() > 0.9f) {
                        paint2.setAlpha((int) (255.0f - (dlvVar.gx() * 255.0f)));
                    }
                    float f4 = this.n;
                    canvas.drawRect(f4, this.o, f4 - f3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, paint2);
                    return;
                }
                if (c2 == 2) {
                    float f5 = gx2;
                    canvas.drawRect(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f5, this.n, this.o, paint);
                    matrix.setTranslate(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f5);
                    this.k.setLocalMatrix(matrix);
                    paint2.setShader(this.k);
                    if (dlvVar.gx() <= 1.0f && dlvVar.gx() > 0.9f) {
                        paint2.setAlpha((int) (255.0f - (dlvVar.gx() * 255.0f)));
                    }
                    canvas.drawRect(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.n, f5, paint2);
                    return;
                }
                if (c2 != 3) {
                    return;
                }
                float f6 = gx2;
                canvas.drawRect(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.n, this.o - f6, paint);
                matrix.setTranslate(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.o - f6);
                this.k.setLocalMatrix(matrix);
                paint2.setShader(this.k);
                if (dlvVar.gx() <= 1.0f && dlvVar.gx() > 0.9f) {
                    paint2.setAlpha((int) (255.0f - (dlvVar.gx() * 255.0f)));
                }
                float f7 = this.n;
                float f8 = this.o;
                canvas.drawRect(f7, f8, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f8 - f6, paint2);
            }
        } catch (Throwable th) {
            Log.e("BaseEffectWrapper", th.getMessage());
        }
    }

    @Override // g.cw
    public final ArrayList g() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(PropertyValuesHolder.ofFloat("rubIn", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f));
        arrayList.add(PropertyValuesHolder.ofFloat(aiu.ALPHA.e(), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f));
        return arrayList;
    }

    @Override // g.cw
    public final void i() {
        this.l = ((JSONObject) this.f13613a).optString("direction", "left");
    }
}
