package com.google.android.material.timepicker;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.als;
import g.ayo;
import g.egh;
import g.git;
import g.gtk;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
class ClockHandView extends View {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f9088a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final int f9089b;

    /* renamed from: c, reason: collision with root package name */
    public final RectF f9090c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f9091d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f9092e;

    /* renamed from: f, reason: collision with root package name */
    public int f9093f;

    /* renamed from: g, reason: collision with root package name */
    public double f9094g;
    public final int h;
    public final float i;
    public final ValueAnimator j;
    public float k;
    public boolean l;
    public int m;
    public final Paint n;

    public ClockHandView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.materialClockStyle);
        ValueAnimator valueAnimator = new ValueAnimator();
        this.j = valueAnimator;
        this.f9092e = new ArrayList();
        Paint paint = new Paint();
        this.n = paint;
        this.f9090c = new RectF();
        this.m = 1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, git.ai, R.attr.materialClockStyle, R.style.Widget_MaterialComponents_TimePicker_Clock);
        egh.bf(context, R.attr.motionDurationLong2, 200);
        egh.r(context, R.attr.motionEasingEmphasizedInterpolator, gtk.f18728c);
        this.f9093f = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.h = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.f9089b = getResources().getDimensionPixelSize(R.dimen.material_clock_hand_stroke_width);
        this.i = r5.getDimensionPixelSize(R.dimen.material_clock_hand_center_dot_radius);
        int color = obtainStyledAttributes.getColor(0, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        p(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        ViewConfiguration.get(context).getScaledTouchSlop();
        setImportantForAccessibility(2);
        obtainStyledAttributes.recycle();
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.timepicker.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                int i = ClockHandView.f9088a;
                ClockHandView.this.q(((Float) valueAnimator2.getAnimatedValue()).floatValue());
            }
        });
        valueAnimator.addListener(new als());
    }

    public final int o(int i) {
        return i == 2 ? Math.round(this.f9093f * 0.66f) : this.f9093f;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float f2 = width;
        float o = o(this.m);
        float cos = (((float) Math.cos(this.f9094g)) * o) + f2;
        float f3 = height;
        float sin = (o * ((float) Math.sin(this.f9094g))) + f3;
        Paint paint = this.n;
        paint.setStrokeWidth(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        canvas.drawCircle(cos, sin, this.h, paint);
        double sin2 = Math.sin(this.f9094g);
        paint.setStrokeWidth(this.f9089b);
        canvas.drawLine(f2, f3, width + ((int) (Math.cos(this.f9094g) * r2)), height + ((int) (r2 * sin2)), paint);
        canvas.drawCircle(f2, f3, this.i, paint);
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.j.isRunning()) {
            return;
        }
        p(this.k);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        int actionMasked = motionEvent.getActionMasked();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        boolean z3 = false;
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 2) {
                z = this.f9091d;
                if (this.l) {
                    this.m = ((float) Math.hypot((double) (x - ((float) (getWidth() / 2))), (double) (y - ((float) (getHeight() / 2))))) <= ((float) o(2)) + TypedValue.applyDimension(1, (float) 12, getContext().getResources().getDisplayMetrics()) ? 2 : 1;
                }
            } else {
                z = false;
            }
            z2 = false;
        } else {
            this.f9091d = false;
            z = false;
            z2 = true;
        }
        boolean z4 = this.f9091d;
        int degrees = (int) Math.toDegrees(Math.atan2(y - (getHeight() / 2), x - (getWidth() / 2)));
        int i = degrees + 90;
        if (i < 0) {
            i = degrees + MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_SOCKET_CONNECT_TIME;
        }
        float f2 = i;
        boolean z5 = this.k != f2;
        if (!z2 || !z5) {
            if (z5 || z) {
                p(f2);
            }
            this.f9091d = z4 | z3;
            return true;
        }
        z3 = true;
        this.f9091d = z4 | z3;
        return true;
    }

    public final void p(float f2) {
        this.j.cancel();
        q(f2);
    }

    public final void q(float f2) {
        float f3 = f2 % 360.0f;
        this.k = f3;
        this.f9094g = Math.toRadians(f3 - 90.0f);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float o = o(this.m);
        float cos = (((float) Math.cos(this.f9094g)) * o) + width;
        float sin = (o * ((float) Math.sin(this.f9094g))) + height;
        float f4 = this.h;
        this.f9090c.set(cos - f4, sin - f4, cos + f4, sin + f4);
        Iterator it = this.f9092e.iterator();
        while (it.hasNext()) {
            ClockFaceView clockFaceView = (ClockFaceView) ((ayo) it.next());
            if (Math.abs(clockFaceView.ak - f3) > 0.001f) {
                clockFaceView.ak = f3;
                clockFaceView.al();
            }
        }
        invalidate();
    }
}
