package g;

import android.animation.PropertyValuesHolder;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuffXfermode;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class fpv extends cw {
    public String j;
    public Path k;
    public PorterDuffXfermode l;
    public float m;
    public Path n;
    public float o;
    public Paint p;
    public Path q;
    public boolean r;
    public boolean s;
    public float t;

    @Override // g.cw
    public final void d(int i, int i2) {
        if (i > 0 && this.r) {
            this.m = i;
            this.r = false;
        }
        if (i2 <= 0 || !this.s) {
            return;
        }
        this.o = i2;
        this.s = false;
    }

    @Override // g.cw
    public final void e(Canvas canvas) {
        int t;
        int t2;
        Path path = this.q;
        Path path2 = this.n;
        Path path3 = this.k;
        Paint paint = this.p;
        dlv dlvVar = (dlv) this.f13614b;
        if (dlvVar.t() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            t = (int) (dlvVar.t() * this.m);
            t2 = (int) (dlvVar.t() * this.o);
            paint.setXfermode(this.l);
            String str = this.j;
            str.getClass();
            switch (str) {
                case "bottom":
                    canvas.drawRect(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, t2, this.m, this.o, paint);
                    break;
                case "center":
                    path3.reset();
                    path2.reset();
                    path.reset();
                    Path.Direction direction = Path.Direction.CW;
                    path3.addCircle(this.m / 2.0f, this.o / 2.0f, t, direction);
                    float f2 = this.m;
                    path2.addRect(f2 / 2.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f2, this.o, direction);
                    Path.Op op = Path.Op.DIFFERENCE;
                    path2.op(path3, op);
                    path.addRect(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.m / 2.0f, this.o, direction);
                    path.op(path3, op);
                    canvas.drawPath(path2, paint);
                    canvas.drawPath(path, paint);
                    break;
                case "top":
                    canvas.drawRect(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.m, this.o - t2, paint);
                    break;
                case "left":
                    canvas.drawRect(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.m - t, this.o, paint);
                    break;
                case "right":
                    canvas.drawRect(t, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.m, this.o, paint);
                    break;
            }
        }
    }

    @Override // g.cw
    public final ArrayList g() {
        PropertyValuesHolder ofFloat = PropertyValuesHolder.ofFloat((String) this.f13615c, this.t, 1.0f);
        ArrayList arrayList = new ArrayList();
        arrayList.add(ofFloat);
        return arrayList;
    }

    @Override // g.cw
    public final void i() {
        JSONObject jSONObject = (JSONObject) this.f13613a;
        this.t = (float) jSONObject.optDouble("start", 0.0d);
        this.j = jSONObject.optString("direction", "center");
    }
}
