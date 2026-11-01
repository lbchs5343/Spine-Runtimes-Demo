package g;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes.dex */
public final class bm extends chy {
    public Path _n;

    /* renamed from: a, reason: collision with root package name */
    public int f11811a;

    /* renamed from: b, reason: collision with root package name */
    public int f11812b;

    @Override // g.chy, g.grq
    public final void d(Canvas canvas, Matrix matrix, int i) {
        View view = this.af.f17406d;
        int i2 = this.f11812b;
        if (i2 <= 0 || view == null) {
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        bj(i);
        float f2 = this.ao;
        int i3 = this.f11811a;
        view.layout(0, 0, i2, i3);
        view.measure(View.MeasureSpec.makeMeasureSpec(i2, C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(i3, C.ENCODING_PCM_32BIT));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
        view.setAlpha(f2);
        canvas.clipPath(this._n);
        view.draw(canvas);
        canvas.restore();
    }
}
