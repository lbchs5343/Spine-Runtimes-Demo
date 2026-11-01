package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Shader;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class BookPageView extends View {

    /* renamed from: d, reason: collision with root package name */
    Paint f1790d;
    Paint dq;
    Point iw;
    Point mn;
    Point ox;
    Point p;
    Point s;

    public BookPageView(Context context) {
        super(context);
        this.dq = new Paint();
        this.f1790d = new Paint();
        this.ox = new Point();
        this.p = new Point();
        this.s = new Point();
        this.iw = new Point();
        this.mn = new Point();
        this.dq.setColor(-16711936);
        this.dq.setTextSize(25.0f);
        post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.BookPageView.1
            @Override // java.lang.Runnable
            public void run() {
                BookPageView.this.ox.x = r0.getWidth() - 10;
                BookPageView.this.ox.y = r0.getHeight() - 10;
                BookPageView.this.f1790d.setShader(new LinearGradient(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, BookPageView.this.getWidth(), BookPageView.this.getHeight(), -7829368, -12303292, Shader.TileMode.MIRROR));
                BookPageView.this.f1790d.setStyle(Paint.Style.FILL_AND_STROKE);
                BookPageView.this.f1790d.setStrokeWidth(6.0f);
                BookPageView.this.f1790d.setShadowLayer(10.0f, 5.0f, 5.0f, -1);
            }
        });
    }

    private void dq() {
        this.p.x = getWidth();
        this.p.y = getHeight();
        Point point = this.s;
        Point point2 = this.ox;
        int i = point2.x;
        Point point3 = this.p;
        int i2 = (i + point3.x) / 2;
        point.x = i2;
        int i3 = (point2.y + point3.y) / 2;
        point.y = i3;
        Point point4 = this.iw;
        int i4 = point3.y;
        point4.x = i2 - (((i4 - i3) * (i4 - i3)) / (point3.x - i2));
        point4.y = i4;
        Point point5 = this.mn;
        point5.x = point3.x;
        int i5 = point.y;
        int i6 = point3.x;
        int i7 = point.x;
        point5.y = i5 - (((i6 - i7) * (i6 - i7)) / (point3.y - i5));
    }

    public void dq(Point point) {
        Point point2 = this.ox;
        point2.x = point.x;
        point2.y = point.y;
        invalidate();
    }

    public Path getFilterAreaPath() {
        Path path = new Path();
        Point point = this.p;
        path.moveTo(point.x, point.y);
        Point point2 = this.iw;
        path.lineTo(point2.x, point2.y);
        Point point3 = this.mn;
        path.lineTo(point3.x, point3.y);
        path.close();
        return path;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        dq();
        Path path = new Path();
        Point point = this.iw;
        path.moveTo(point.x, point.y);
        Point point2 = this.ox;
        path.lineTo(point2.x, point2.y);
        Point point3 = this.mn;
        path.lineTo(point3.x, point3.y);
        path.close();
        canvas.drawPath(path, this.f1790d);
    }
}
