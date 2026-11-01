package com.bytedance.sdk.component.adexpress.dynamic.animation.view;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicImageView;
import com.bytedance.sdk.component.adexpress.dynamic.ox.mn;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class dq {
    Paint dq;
    private int iw;
    private int p;
    private int s;

    /* renamed from: d, reason: collision with root package name */
    Path f1689d = new Path();
    Path ox = new Path();

    public dq() {
        Paint paint = new Paint();
        this.dq = paint;
        paint.setAntiAlias(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dq(Canvas canvas, d dVar, View view) {
        int i;
        String str;
        float[] fArr;
        int i2 = 0;
        if (dVar.getRippleValue() != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            if (com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox() != null) {
                try {
                    str = (String) view.getTag(2097610712);
                    try {
                        fArr = mn.d(str);
                    } catch (Exception unused) {
                        fArr = null;
                        if (!str.startsWith("#")) {
                        }
                        ((ViewGroup) view.getParent()).setClipChildren(true);
                        canvas.drawCircle(this.p, this.s, dVar.getRippleValue() * Math.min(r2, r5) * 2, this.dq);
                        if (dVar.getShineValue() != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        }
                        if (dVar.getMarqueeValue() == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        }
                    }
                } catch (Exception unused2) {
                    str = "";
                }
                if (!str.startsWith("#")) {
                    this.dq.setColor(Color.parseColor(str));
                    this.dq.setAlpha(90);
                } else if (fArr != null) {
                    this.dq.setColor(com.bytedance.sdk.component.adexpress.p.mn.dq((1.0f - dVar.getRippleValue()) * fArr[3], fArr[0] / 256.0f, fArr[1] / 256.0f, fArr[2] / 256.0f));
                }
            }
            ((ViewGroup) view.getParent()).setClipChildren(true);
            canvas.drawCircle(this.p, this.s, dVar.getRippleValue() * Math.min(r2, r5) * 2, this.dq);
        }
        if (dVar.getShineValue() != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).setClipChildren(true);
            }
            if (view.getParent().getParent() != null) {
                ((ViewGroup) view.getParent().getParent()).setClipChildren(true);
            }
            this.f1689d.reset();
            try {
                i = ((Integer) view.getTag(2097610711)).intValue();
            } catch (Exception unused3) {
                i = 0;
            }
            if (i >= 0) {
                int shineValue = ((int) (dVar.getShineValue() * ((this.s * 2) + ((i * 2) + (this.p * 4))))) - ((this.s * 2) + i);
                float f2 = shineValue;
                int i3 = this.s;
                this.dq.setShader(new LinearGradient(f2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, ((i + i3) / 2) + shineValue, i3 / 2, new int[]{Color.parseColor("#20ffffff"), Color.parseColor("#60ffffff"), Color.parseColor("#65ffffff")}, (float[]) null, Shader.TileMode.MIRROR));
                this.dq.setStrokeWidth(this.p * 2);
                Path path = this.ox;
                if (path != null) {
                    canvas.clipPath(path, Region.Op.INTERSECT);
                }
                int i4 = shineValue + i;
                canvas.drawLine(f2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, i4 + r2, this.s, this.dq);
            }
        }
        if (dVar.getMarqueeValue() == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            try {
                i2 = ((Integer) view.getTag(2097610709)).intValue();
            } catch (Exception unused4) {
            }
            if (i2 >= 0) {
                this.f1689d.reset();
                this.f1689d.moveTo(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                this.f1689d.lineTo(this.p * 2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                this.f1689d.lineTo(this.p * 2, this.s * 2);
                this.f1689d.lineTo(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.s * 2);
                this.f1689d.lineTo(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                this.dq.setShader(new LinearGradient(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.p * 2, this.s * 2, new int[]{(int) (dVar.getMarqueeValue() * (-65536.0f)), (int) ((1.0f - dVar.getMarqueeValue()) * (-65536.0f))}, (float[]) null, Shader.TileMode.CLAMP));
                this.dq.setColor(-65536);
                this.dq.setStyle(Paint.Style.STROKE);
                this.dq.setStrokeWidth(i2);
                canvas.drawPath(this.f1689d, this.dq);
            }
        }
    }

    public void dq(View view, float f2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = (int) (this.iw * f2);
        view.setTranslationX((r1 - r6) / 2);
        if (view instanceof DynamicImageView) {
            int i = 0;
            while (true) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (i >= viewGroup.getChildCount()) {
                    break;
                }
                viewGroup.getChildAt(i).setTranslationX((-(this.iw - layoutParams.width)) / 2);
                i++;
            }
        }
        view.setLayoutParams(layoutParams);
    }

    public void dq(View view, int i, int i2) {
        String str;
        this.p = i / 2;
        this.s = i2 / 2;
        if (this.iw == 0 && view.getLayoutParams().width > 0) {
            this.iw = view.getLayoutParams().width;
        }
        try {
            str = (String) view.getTag(2097610710);
            try {
                this.ox.addRoundRect(new RectF(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, i, i2), i2 / 2, i2 / 2, Path.Direction.CW);
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            str = "";
        }
        if ("right".equals(str)) {
            view.setPivotX(this.p * 2);
            view.setPivotY(this.s);
        } else if ("left".equals(str)) {
            view.setPivotX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            view.setPivotY(this.s);
        } else {
            view.setPivotX(this.p);
            view.setPivotY(this.s);
        }
    }
}
