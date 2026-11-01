package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.awf;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class CircleRippleView extends View {

    /* renamed from: d, reason: collision with root package name */
    private int f1793d;
    private int dq;
    private List<Integer> ia;
    private float ig;
    private int iw;
    private List<Integer> kk;
    private boolean mn;
    private float mp;
    private Paint no;
    private Paint o;
    private float ox;
    private int p;
    private int q;
    private float s;

    public CircleRippleView(Context context) {
        this(context, null);
    }

    public CircleRippleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public CircleRippleView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.dq = -1;
        this.f1793d = -65536;
        this.ox = 18.0f;
        this.p = 3;
        this.s = 50.0f;
        this.iw = 2;
        this.mn = false;
        this.ia = new ArrayList();
        this.kk = new ArrayList();
        this.q = 24;
        ox();
    }

    private void ox() {
        Paint paint = new Paint();
        this.o = paint;
        paint.setAntiAlias(true);
        this.o.setStrokeWidth(this.q);
        this.ia.add(Integer.valueOf(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE));
        this.kk.add(0);
        Paint paint2 = new Paint();
        this.no = paint2;
        paint2.setAntiAlias(true);
        this.no.setColor(Color.parseColor("#0FFFFFFF"));
        this.no.setStyle(Paint.Style.FILL);
    }

    public void d() {
        this.mn = false;
        this.kk.clear();
        this.ia.clear();
        this.ia.add(Integer.valueOf(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE));
        this.kk.add(0);
        invalidate();
    }

    public void dq() {
        this.mn = true;
        invalidate();
    }

    @Override // android.view.View
    public void invalidate() {
        if (hasWindowFocus()) {
            super.invalidate();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        this.o.setShader(new LinearGradient(this.ig, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.mp, getMeasuredHeight(), -1, 16777215, Shader.TileMode.CLAMP));
        int i = 0;
        while (true) {
            if (i >= this.ia.size()) {
                break;
            }
            Integer num = this.ia.get(i);
            this.o.setAlpha(num.intValue());
            Integer num2 = this.kk.get(i);
            if (this.ox + num2.intValue() < this.s) {
                canvas.drawCircle(this.ig, this.mp, this.ox + num2.intValue(), this.o);
            }
            if (num.intValue() > 0 && num2.intValue() < this.s) {
                this.ia.set(i, Integer.valueOf(num.intValue() - this.iw > 0 ? num.intValue() - (this.iw * 3) : 1));
                this.kk.set(i, Integer.valueOf(num2.intValue() + this.iw));
            }
            i++;
        }
        if (((Integer) awf.q(1, this.kk)).intValue() >= this.s / this.p) {
            this.ia.add(Integer.valueOf(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE));
            this.kk.add(0);
        }
        if (this.kk.size() >= 3) {
            this.kk.remove(0);
            this.ia.remove(0);
        }
        this.o.setAlpha(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        this.o.setColor(this.f1793d);
        canvas.drawCircle(this.ig, this.mp, this.ox, this.no);
        if (this.mn) {
            invalidate();
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        setMeasuredDimension(Math.min(size, size2), Math.min(size, size2));
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float f2 = i / 2.0f;
        this.ig = f2;
        this.mp = i2 / 2.0f;
        float f3 = f2 - (this.q / 2.0f);
        this.s = f3;
        this.ox = f3 / 4.0f;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            invalidate();
        }
    }

    public void setColor(int i) {
        this.dq = i;
    }

    public void setCoreColor(int i) {
        this.f1793d = i;
    }

    public void setCoreRadius(int i) {
        this.ox = i;
    }

    public void setDiffuseSpeed(int i) {
        this.iw = i;
    }

    public void setDiffuseWidth(int i) {
        this.p = i;
    }

    public void setMaxWidth(int i) {
        this.s = i;
    }
}
