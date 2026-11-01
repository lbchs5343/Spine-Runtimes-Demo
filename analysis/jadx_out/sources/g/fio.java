package g;

import android.animation.PropertyValuesHolder;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class fio extends cw {
    public static final int j = Color.parseColor("#7ed321");
    public int k;
    public int l;
    public int m;
    public Paint n;

    @Override // g.cw
    public final void d(int i, int i2) {
        this.l = i / 2;
        this.m = i2 / 2;
    }

    @Override // g.cw
    public final void e(Canvas canvas) {
        Paint paint = this.n;
        dlv dlvVar = (dlv) this.f13614b;
        try {
            if (dlvVar.ob() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                paint.setColor(this.k);
                paint.setAlpha((int) ((1.0f - dlvVar.ob()) * 255.0f));
                ((ViewGroup) dlvVar.kk().getParent()).setClipChildren(true);
                canvas.drawCircle(this.l, this.m, Math.min(r2, r4) * 2 * dlvVar.ob(), paint);
            }
        } catch (Throwable th) {
            th.getMessage();
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
        this.k = bff.ab(((JSONObject) this.f13613a).optString("backgroundColor"), j);
    }
}
