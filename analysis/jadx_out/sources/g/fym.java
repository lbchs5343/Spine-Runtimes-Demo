package g;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;

/* loaded from: classes3.dex */
public final class fym extends ddm {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f17641a = 0;

    /* renamed from: b, reason: collision with root package name */
    public ehw f17642b;

    public final void c(float f2, float f3, float f4, float f5) {
        RectF rectF = this.f17642b.r;
        if (f2 == rectF.left && f3 == rectF.top && f4 == rectF.right && f5 == rectF.bottom) {
            return;
        }
        rectF.set(f2, f3, f4, f5);
        invalidateSelf();
    }

    @Override // g.ddm
    public final void el(Canvas canvas) {
        if (this.f17642b.r.isEmpty()) {
            super.el(canvas);
            return;
        }
        canvas.save();
        if (Build.VERSION.SDK_INT >= 26) {
            canvas.clipOutRect(this.f17642b.r);
        } else {
            canvas.clipRect(this.f17642b.r, Region.Op.DIFFERENCE);
        }
        super.el(canvas);
        canvas.restore();
    }

    @Override // g.ddm, android.graphics.drawable.Drawable
    public final Drawable mutate() {
        this.f17642b = new ehw(this.f17642b);
        return this;
    }
}
