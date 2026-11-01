package g;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public abstract class n extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public int f19690a;

    /* renamed from: b, reason: collision with root package name */
    public int f19691b;

    /* renamed from: c, reason: collision with root package name */
    public int f19692c;

    /* renamed from: d, reason: collision with root package name */
    public int f19693d;

    /* renamed from: e, reason: collision with root package name */
    public Paint f19694e;

    /* renamed from: f, reason: collision with root package name */
    public Bitmap f19695f;

    /* renamed from: g, reason: collision with root package name */
    public TextView f19696g;
    public TextView h;
    public Rect i;
    public Rect j;
    public Paint k;
    public Path l;
    public RectF m;
    public Drawable n;
    public View o;
    public int p;
    public ImageView q;
    public Paint r;

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Canvas canvas2;
        Rect rect;
        this.n.draw(canvas);
        if (this.f19695f != null) {
            canvas.save();
            canvas.clipPath(this.l);
            canvas.drawBitmap(this.f19695f, this.i, this.j, this.r);
            float width = this.j.width() / this.i.width();
            float f2 = this.j.left + width;
            while (true) {
                rect = this.j;
                if (f2 > rect.right) {
                    break;
                }
                canvas.drawLine(f2, rect.top, f2, rect.bottom, this.k);
                f2 += width;
            }
            canvas2 = canvas;
            float f3 = rect.top + width;
            while (true) {
                Rect rect2 = this.j;
                if (f3 > rect2.bottom) {
                    break;
                }
                canvas2.drawLine(rect2.left, f3, rect2.right, f3, this.k);
                f3 += width;
            }
            canvas2.drawRect(this.m, this.f19694e);
            canvas2.restore();
        } else {
            canvas2 = canvas;
        }
        super.dispatchDraw(canvas2);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        TextView textView = (TextView) findViewById(R.id.value);
        this.h = textView;
        textView.setOnClickListener(new fzh(this, 0));
        TextView textView2 = (TextView) findViewById(R.id.posi);
        this.f19696g = textView2;
        textView2.setOnClickListener(new fzh(this, 1));
        this.o = findViewById(R.id.info);
        this.q = (ImageView) findViewById(R.id.close);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.n.setBounds(0, 0, i, i2);
    }

    public final gek s(Bitmap bitmap, PointF pointF) {
        float f2;
        float f3;
        this.f19695f = bitmap;
        this.i = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        this.f19692c = bitmap.getPixel(bitmap.getWidth() / 2, bitmap.getHeight() / 2);
        if (this.m == null) {
            float width = this.j.width() / bitmap.getWidth();
            float width2 = ((bitmap.getWidth() - 1) / 2.0f) * width;
            Rect rect = this.j;
            float f4 = rect.left + width2;
            float height = rect.top + (((bitmap.getHeight() - 1) / 2.0f) * width);
            this.m = new RectF(f4, height, f4 + width, width + height);
        }
        TextView textView = this.h;
        if (textView != null) {
            textView.setText(String.format("#%X", Integer.valueOf(this.f19692c)));
        }
        TextView textView2 = this.f19696g;
        if (textView2 != null) {
            textView2.setText(((int) pointF.x) + ", " + ((int) pointF.y));
            this.f19696g.setTag("x: " + ((int) pointF.x) + ", y: " + ((int) pointF.y));
        }
        invalidate();
        int i = this.f19692c;
        gek gekVar = new gek();
        gekVar.h = Color.alpha(i);
        float red = Color.red(i);
        gekVar.j = red;
        float green = Color.green(i);
        gekVar.f17989c = green;
        float blue = Color.blue(i);
        gekVar.f17990d = blue;
        gekVar.i = (int) pointF.x;
        gekVar.f17988b = (int) pointF.y;
        float f5 = 1.0f;
        float f6 = 1.0f - (red / 255.0f);
        float f7 = 1.0f - (green / 255.0f);
        float f8 = 1.0f - (blue / 255.0f);
        float min = Math.min(f6, Math.min(f7, f8));
        if (min != 1.0f) {
            float f9 = 1.0f - min;
            f3 = (f7 - min) / f9;
            f2 = (f8 - min) / f9;
            f5 = (f6 - min) / f9;
        } else {
            f2 = 1.0f;
            f3 = 1.0f;
        }
        float[] fArr = {f5, f3, f2, min};
        gekVar.f17992f = fArr[0];
        gekVar.k = fArr[1];
        gekVar.f17987a = fArr[2];
        gekVar.f17993g = fArr[3];
        gekVar.f17991e = String.format("#%X", Integer.valueOf(i));
        return gekVar;
    }

    public void setCloseOnClickListener(View.OnClickListener onClickListener) {
        ImageView imageView;
        if (onClickListener == null || (imageView = this.q) == null) {
            return;
        }
        imageView.setOnClickListener(onClickListener);
    }

    public void setInfoOnClickListener(View.OnClickListener onClickListener) {
        View view;
        if (onClickListener == null || (view = this.o) == null) {
            return;
        }
        view.setOnClickListener(onClickListener);
    }
}
