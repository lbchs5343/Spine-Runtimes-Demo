package f.a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.util.AttributeSet;
import cn.trinea.android.developertools.R;
import g.ec;
import g.eyt;
import g.n;

/* loaded from: classes.dex */
public class f extends n {
    public f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ec.f15275a);
            this.n = obtainStyledAttributes.getDrawable(7);
            this.f19692c = obtainStyledAttributes.getColor(0, eyt.af(context, R.color.circleCenterColor));
            this.f19690a = obtainStyledAttributes.getDimensionPixelSize(1, context.getResources().getDimensionPixelSize(R.dimen.circleCenterWidth));
            this.f19693d = obtainStyledAttributes.getColor(4, eyt.af(context, R.color.lineColor));
            this.p = obtainStyledAttributes.getDimensionPixelSize(6, context.getResources().getDimensionPixelSize(R.dimen.lineWidth));
            this.f19691b = obtainStyledAttributes.getInteger(3, context.getResources().getInteger(R.integer.lineAlpha));
            obtainStyledAttributes.getDimensionPixelSize(5, context.getResources().getDimensionPixelSize(R.dimen.lineSpacing2));
            obtainStyledAttributes.recycle();
        }
        Paint paint = new Paint();
        this.r = paint;
        paint.setAntiAlias(false);
        this.r.setDither(true);
        this.r.setFilterBitmap(false);
        Paint paint2 = new Paint();
        this.f19694e = paint2;
        paint2.setColor(this.f19692c);
        Paint paint3 = this.f19694e;
        Paint.Style style = Paint.Style.STROKE;
        paint3.setStyle(style);
        this.f19694e.setStrokeWidth(this.f19690a);
        Paint paint4 = this.f19694e;
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_OVER;
        paint4.setXfermode(new PorterDuffXfermode(mode));
        Resources resources = getResources();
        Point point = new Point(resources.getDimensionPixelSize(R.dimen.circleBackgroundHorizontalInset), resources.getDimensionPixelSize(R.dimen.circleBackgroundVerticalInset));
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.circleBackgroundSize);
        int i = point.x;
        int i2 = point.y;
        this.j = new Rect(i, i2, i + dimensionPixelSize, i2 + dimensionPixelSize);
        Path path = new Path();
        this.l = path;
        path.addCircle(this.j.exactCenterX(), this.j.exactCenterY(), dimensionPixelSize / 2.0f, Path.Direction.CCW);
        Paint paint5 = new Paint(1);
        this.k = paint5;
        paint5.setColor(this.f19693d);
        this.k.setAlpha(this.f19691b);
        this.k.setStrokeWidth(this.p);
        this.k.setStyle(style);
        this.k.setXfermode(new PorterDuffXfermode(mode));
    }
}
