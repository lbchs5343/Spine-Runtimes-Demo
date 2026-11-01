package g;

import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class dfr extends cw {
    public static final float j;
    public static final float k;
    public static final float l;
    public int m;
    public int n;
    public float o;
    public Path p;
    public int q;
    public int r;
    public Paint s;
    public Path t;
    public boolean u;
    public int v;
    public float w;
    public coy x;

    static {
        double radians = (float) Math.toRadians(30.0d);
        j = (float) Math.tan(radians);
        k = (float) Math.cos(radians);
        l = (float) Math.sin(radians);
    }

    @Override // g.cw
    public final void d(int i, int i2) {
        this.n = i;
        this.r = i2;
        try {
            RectF rectF = new RectF(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, i, i2);
            Path path = this.t;
            float f2 = this.w;
            path.addRoundRect(rectF, f2, f2, Path.Direction.CW);
        } catch (Throwable unused) {
        }
    }

    @Override // g.cw
    public final void e(Canvas canvas) {
        LinearGradient linearGradient;
        Paint paint = this.s;
        dlv dlvVar = (dlv) this.f13614b;
        Path path = this.p;
        try {
            if (dlvVar.l() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                float f2 = this.n;
                float f3 = j;
                float l2 = ((f3 * f2) + f2) * dlvVar.l();
                path.reset();
                path.moveTo(l2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                float f4 = this.r;
                float f5 = l2 - (f3 * f4);
                path.lineTo(f5, f4);
                path.lineTo(f5 + this.q, this.r);
                path.lineTo(this.q + l2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                path.close();
                float f6 = this.o;
                float f7 = k * f6;
                float f8 = f6 * l;
                if (!this.u || this.x == null) {
                    int i = this.v;
                    linearGradient = new LinearGradient(l2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, l2 + f7, f8, new int[]{i, this.m, i}, (float[]) null, Shader.TileMode.CLAMP);
                } else {
                    linearGradient = new LinearGradient(l2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, l2 + f7, f8, this.x.f13258b, (float[]) null, Shader.TileMode.CLAMP);
                }
                paint.setShader(linearGradient);
                Path path2 = this.t;
                if (path2 != null) {
                    canvas.clipPath(path2, Region.Op.INTERSECT);
                }
                canvas.drawPath(path, paint);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // g.cw
    public final ArrayList g() {
        PropertyValuesHolder ofFloat = PropertyValuesHolder.ofFloat((String) this.f13615c, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ArrayList arrayList = new ArrayList();
        arrayList.add(ofFloat);
        return arrayList;
    }

    @Override // g.cw
    public final void i() {
        Context context = ((dlv) this.f13614b).kk().getContext();
        JSONObject jSONObject = (JSONObject) this.f13613a;
        this.q = (int) dxo.f(context, jSONObject.optInt("shineWidth", 30));
        String optString = jSONObject.optString("backgroundColor", "linear-gradient(90deg, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0.25) 30%, rgba(255, 255, 255, 0.3) 50%, rgba(255, 255, 255, 0.25) 70%, rgba(255, 255, 255, 0))");
        String str = TextUtils.isEmpty(optString) ? "linear-gradient(90deg, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0.25) 30%, rgba(255, 255, 255, 0.3) 50%, rgba(255, 255, 255, 0.25) 70%, rgba(255, 255, 255, 0))" : optString;
        if (str.startsWith("linear")) {
            this.x = bff.ak(str);
        } else {
            int ab2 = bff.ab(str, -16777216);
            this.m = ab2;
            this.v = (ab2 & 16777215) | C.ENCODING_PCM_A_LAW;
            this.u = false;
        }
        this.o = k * this.q;
    }
}
