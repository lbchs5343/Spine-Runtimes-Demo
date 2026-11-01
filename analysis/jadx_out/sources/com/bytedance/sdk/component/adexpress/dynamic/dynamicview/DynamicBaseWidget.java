package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.text.TextUtils;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.component.sdk.annotation.ColorInt;
import com.bytedance.sdk.component.adexpress.d.mp;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;
import com.bytedance.sdk.component.adexpress.dynamic.ox.iw;
import com.bytedance.sdk.component.adexpress.dynamic.ox.mn;
import com.bytedance.sdk.component.utils.i;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.awf;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class DynamicBaseWidget extends FrameLayout implements com.bytedance.sdk.component.adexpress.dynamic.animation.view.d, p, s {
    private static final View.OnTouchListener k = new View.OnTouchListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget.1
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    };
    private static final View.OnClickListener wp = new View.OnClickListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    };
    com.bytedance.sdk.component.adexpress.dynamic.animation.view.dq cd;

    /* renamed from: d, reason: collision with root package name */
    private float f1701d;
    private float dq;

    /* renamed from: f, reason: collision with root package name */
    protected boolean f1702f;
    protected com.bytedance.sdk.component.adexpress.dynamic.animation.dq.d fw;
    private float gh;
    private i i;
    protected int ia;
    protected mn ig;
    protected float iw;
    protected View jy;
    protected int kk;
    private boolean le;
    protected int mn;
    protected ia mp;
    protected Context no;
    protected int o;
    protected float ox;
    protected float p;
    protected DynamicRootView q;
    private float r;
    protected float s;

    public DynamicBaseWidget(Context context, DynamicRootView dynamicRootView, ia iaVar) {
        super(context);
        this.le = true;
        this.no = context;
        this.q = dynamicRootView;
        this.mp = iaVar;
        this.ox = iaVar.iw();
        this.p = iaVar.mn();
        this.s = iaVar.ia();
        this.iw = iaVar.kk();
        this.kk = (int) com.bytedance.sdk.component.adexpress.p.mn.dq(this.no, this.ox);
        this.o = (int) com.bytedance.sdk.component.adexpress.p.mn.dq(this.no, this.p);
        this.mn = (int) com.bytedance.sdk.component.adexpress.p.mn.dq(this.no, this.s);
        this.ia = (int) com.bytedance.sdk.component.adexpress.p.mn.dq(this.no, this.iw);
        mn mnVar = new mn(iaVar.o());
        this.ig = mnVar;
        if (mnVar.cd() > 0) {
            this.mn = (this.ig.cd() * 2) + this.mn;
            this.ia = (this.ig.cd() * 2) + this.ia;
            this.kk -= this.ig.cd();
            this.o -= this.ig.cd();
            List<ia> no = iaVar.no();
            if (no != null) {
                for (ia iaVar2 : no) {
                    iaVar2.ox(iaVar2.iw() + com.bytedance.sdk.component.adexpress.p.mn.d(this.no, this.ig.cd()));
                    iaVar2.p(iaVar2.mn() + com.bytedance.sdk.component.adexpress.p.mn.d(this.no, this.ig.cd()));
                    iaVar2.dq(com.bytedance.sdk.component.adexpress.p.mn.d(this.no, this.ig.cd()));
                    iaVar2.d(com.bytedance.sdk.component.adexpress.p.mn.d(this.no, this.ig.cd()));
                }
            }
        }
        this.f1702f = this.ig.q() > 0.0d;
        this.cd = new com.bytedance.sdk.component.adexpress.dynamic.animation.view.dq();
    }

    private List<String> d(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        boolean z = false;
        int i2 = 0;
        for (int i3 = 0; i3 < str.length(); i3++) {
            if (str.charAt(i3) == '(') {
                i++;
                z = true;
            } else if (str.charAt(i3) == ')' && i - 1 == 0 && z) {
                int i4 = i3 + 1;
                arrayList.add(str.substring(i2, i4));
                i2 = i4;
                z = false;
            }
        }
        return arrayList;
    }

    private Drawable[] dq(List<String> list) {
        Drawable[] drawableArr = new Drawable[list.size()];
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i);
            if (str.contains("linear-gradient")) {
                String[] split = str.substring(str.indexOf("(") + 1, str.length() - 1).split(", ");
                int length = split.length - 1;
                int[] iArr = new int[length];
                int i2 = 0;
                while (i2 < length) {
                    int i3 = i2 + 1;
                    iArr[i2] = mn.dq(split[i3].substring(0, 7));
                    i2 = i3;
                }
                GradientDrawable dq = dq(dq(split[0]), iArr);
                dq.setShape(0);
                dq.setCornerRadius(com.bytedance.sdk.component.adexpress.p.mn.dq(this.no, this.ig.jy()));
                drawableArr[(list.size() - 1) - i] = dq;
            }
        }
        return drawableArr;
    }

    private void kk() {
        if (isShown()) {
            int dq = com.bytedance.sdk.component.adexpress.dynamic.d.dq.dq(this.ig);
            if (dq == 2) {
                if (this.i == null) {
                    this.i = new i(getContext().getApplicationContext(), 1, this.le);
                }
                this.i.dq(new i.dq() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget.3
                    @Override // com.bytedance.sdk.component.utils.i.dq
                    public void dq(int i) {
                        if (i == 1 && DynamicBaseWidget.this.isShown()) {
                            DynamicBaseWidget.this.o();
                        }
                    }
                });
                mp renderRequest = this.q.getRenderRequest();
                if (renderRequest != null) {
                    this.i.dq(renderRequest.f());
                    this.i.dq(renderRequest.le());
                    this.i.ox(renderRequest.r());
                }
            } else if (dq == 3) {
                if (this.i == null) {
                    this.i = new i(getContext().getApplicationContext(), 2, this.le);
                }
                this.i.dq(new i.dq() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget.4
                    @Override // com.bytedance.sdk.component.utils.i.dq
                    public void dq(int i) {
                        if (i == 2 && DynamicBaseWidget.this.isShown()) {
                            DynamicBaseWidget.this.o();
                        }
                    }
                });
                mp renderRequest2 = this.q.getRenderRequest();
                if (renderRequest2 != null) {
                    this.i.d(renderRequest2.cd());
                    this.i.d(renderRequest2.k());
                    this.i.dq(renderRequest2.gh());
                    this.i.d(renderRequest2.i());
                }
            }
            i iVar = this.i;
            if (iVar != null) {
                iVar.dq();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        try {
            View view = this.jy;
            if (view == null) {
                view = this;
            }
            view.setOnClickListener((View.OnClickListener) getDynamicClickListener());
            view.performClick();
            view.setOnClickListener(wp);
        } catch (Exception unused) {
        }
    }

    public void d() {
        com.bytedance.sdk.component.adexpress.dynamic.animation.dq.d dVar = this.fw;
        if (dVar != null) {
            dVar.d();
        }
    }

    public void d(View view) {
        iw s;
        ia iaVar = this.mp;
        if (iaVar == null || (s = iaVar.o().s()) == null) {
            return;
        }
        view.setTag(2097610716, Boolean.valueOf(s.w()));
    }

    public Drawable dq(boolean z, String str) {
        String[] split;
        int[] iArr;
        if (!TextUtils.isEmpty(this.ig.ce())) {
            try {
                String ce = this.ig.ce();
                String substring = ce.substring(ce.indexOf("(") + 1, ce.length() - 1);
                if (substring.contains("rgba") && substring.contains("%")) {
                    split = new String[]{substring.substring(0, substring.indexOf(",")).trim(), substring.substring(substring.indexOf(",") + 1, substring.indexOf("%") + 1).trim(), substring.substring(substring.indexOf("%") + 2).trim()};
                    iArr = new int[]{mn.dq(split[1]), mn.dq(split[2])};
                } else {
                    split = substring.split(", ");
                    iArr = new int[]{mn.dq(split[1].substring(0, 7)), mn.dq(split[2].substring(0, 7))};
                }
                try {
                    double parseDouble = Double.parseDouble(substring.substring(substring.indexOf("linear-gradient(") + 1, substring.indexOf("deg")));
                    if (parseDouble > 225.0d && parseDouble < 315.0d) {
                        int i = iArr[1];
                        iArr[1] = iArr[0];
                        iArr[0] = i;
                    }
                } catch (Exception unused) {
                }
                GradientDrawable dq = dq(dq(split[0]), iArr);
                dq.setShape(0);
                dq.setCornerRadius(com.bytedance.sdk.component.adexpress.p.mn.dq(this.no, this.ig.jy()));
                return dq;
            } catch (Exception unused2) {
                Drawable mutilBackgroundDrawable = getMutilBackgroundDrawable();
                if (mutilBackgroundDrawable != null) {
                    return mutilBackgroundDrawable;
                }
            }
        }
        GradientDrawable drawable = getDrawable();
        drawable.setShape(0);
        float dq2 = com.bytedance.sdk.component.adexpress.p.mn.dq(this.no, this.ig.jy());
        drawable.setCornerRadius(dq2);
        if (dq2 < 1.0f) {
            float dq3 = com.bytedance.sdk.component.adexpress.p.mn.dq(this.no, this.ig.n());
            float dq4 = com.bytedance.sdk.component.adexpress.p.mn.dq(this.no, this.ig.op());
            float dq5 = com.bytedance.sdk.component.adexpress.p.mn.dq(this.no, this.ig.ir());
            float dq6 = com.bytedance.sdk.component.adexpress.p.mn.dq(this.no, this.ig.u());
            float[] fArr = new float[8];
            if (dq3 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                fArr[0] = dq3;
                fArr[1] = dq3;
            }
            if (dq4 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                fArr[2] = dq4;
                fArr[3] = dq4;
            }
            if (dq5 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                fArr[4] = dq5;
                fArr[5] = dq5;
            }
            if (dq6 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                fArr[6] = dq6;
                fArr[7] = dq6;
            }
            drawable.setCornerRadii(fArr);
        }
        drawable.setColor(z ? Color.parseColor(str) : this.ig.ji());
        if (this.ig.fw() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            drawable.setStroke((int) com.bytedance.sdk.component.adexpress.p.mn.dq(this.no, this.ig.fw()), this.ig.f());
        } else if (this.ig.cd() > 0) {
            drawable.setStroke(this.ig.cd(), this.ig.f());
            drawable.setAlpha(50);
            if (awf.h(this.mp, "video-vd")) {
                setLayerType(1, null);
                return new ox((int) dq2, this.ig.cd());
            }
        }
        return drawable;
    }

    public GradientDrawable.Orientation dq(String str) {
        try {
            int parseFloat = (int) Float.parseFloat(str.substring(0, str.length() - 3));
            return parseFloat <= 90 ? GradientDrawable.Orientation.LEFT_RIGHT : parseFloat <= 180 ? GradientDrawable.Orientation.TOP_BOTTOM : parseFloat <= 270 ? GradientDrawable.Orientation.RIGHT_LEFT : GradientDrawable.Orientation.BOTTOM_TOP;
        } catch (Exception unused) {
            return GradientDrawable.Orientation.LEFT_RIGHT;
        }
    }

    public GradientDrawable dq(GradientDrawable.Orientation orientation, @ColorInt int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            return new GradientDrawable();
        }
        if (iArr.length != 1) {
            return new GradientDrawable(orientation, iArr);
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(iArr[0]);
        return gradientDrawable;
    }

    public d dq(Bitmap bitmap) {
        return new dq(bitmap, null);
    }

    public void dq(int i) {
        mn mnVar = this.ig;
        if (mnVar != null && mnVar.dq(i)) {
            ia();
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt != null && (getChildAt(i2) instanceof DynamicBaseWidget)) {
                    ((DynamicBaseWidget) childAt).dq(i);
                }
            }
        }
    }

    public void dq(View view) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MediaFormat.KEY_WIDTH, this.mp.ia());
            jSONObject.put(MediaFormat.KEY_HEIGHT, this.mp.kk());
            if (com.bytedance.sdk.component.adexpress.p.dq()) {
                view.setTag(com.bytedance.sdk.component.adexpress.dynamic.dq.r, this.ig.er());
                view.setTag(com.bytedance.sdk.component.adexpress.dynamic.dq.i, this.mp.o().getType());
                view.setTag(com.bytedance.sdk.component.adexpress.dynamic.dq.le, this.mp.ox());
                view.setTag(com.bytedance.sdk.component.adexpress.dynamic.dq.k, jSONObject.toString());
                return;
            }
            view.setTag(2097610717, this.ig.er());
            view.setTag(2097610715, this.mp.o().getType());
            view.setTag(2097610714, this.mp.ox());
            view.setTag(2097610713, jSONObject.toString());
            int dq = com.bytedance.sdk.component.adexpress.dynamic.d.dq.dq(this.ig);
            if (dq == 1) {
                view.setTag(2097610707, new Pair(this.ig.e(), Long.valueOf(this.ig.kx())));
                view.setTag(2097610708, Integer.valueOf(dq));
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public boolean dq() {
        ia();
        s();
        ox();
        return true;
    }

    public Drawable getBackgroundDrawable() {
        return dq(false, "");
    }

    public boolean getBeginInvisibleAndShow() {
        return this.f1702f;
    }

    public int getClickArea() {
        return this.ig.h();
    }

    public GradientDrawable getDrawable() {
        return new GradientDrawable();
    }

    public com.bytedance.sdk.component.adexpress.dynamic.s.dq getDynamicClickListener() {
        return this.q.getDynamicClickListener();
    }

    public int getDynamicHeight() {
        return this.ia;
    }

    public iw getDynamicLayoutBrickValue() {
        com.bytedance.sdk.component.adexpress.dynamic.ox.s o;
        ia iaVar = this.mp;
        if (iaVar == null || (o = iaVar.o()) == null) {
            return null;
        }
        return o.s();
    }

    public int getDynamicWidth() {
        return this.mn;
    }

    public String getImageObjectFit() {
        return this.ig.v();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.d
    public float getMarqueeValue() {
        return this.gh;
    }

    public Drawable getMutilBackgroundDrawable() {
        try {
            return new LayerDrawable(dq(d(this.ig.ce().replaceAll("/\\*.*\\*/", ""))));
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.d
    public float getRippleValue() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.d
    public float getShineValue() {
        return this.f1701d;
    }

    public float getStretchValue() {
        return this.r;
    }

    public void iw() {
        if (mn()) {
            return;
        }
        View view = this.jy;
        if (view == null) {
            view = this;
        }
        com.bytedance.sdk.component.adexpress.dynamic.animation.dq.d dVar = new com.bytedance.sdk.component.adexpress.dynamic.animation.dq.d(view, this.mp.o().s().dk());
        this.fw = dVar;
        dVar.dq();
    }

    public boolean mn() {
        ia iaVar = this.mp;
        return iaVar == null || iaVar.o() == null || this.mp.o().s() == null || this.mp.o().s().dk() == null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        iw();
        kk();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        d();
        super.onDetachedFromWindow();
        i iVar = this.i;
        if (iVar != null) {
            iVar.d();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.cd.dq(canvas, this, this);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        com.bytedance.sdk.component.adexpress.dynamic.animation.view.dq dqVar = this.cd;
        View view = this.jy;
        if (view == null) {
            view = this;
        }
        dqVar.dq(view, i, i2);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        i iVar = this.i;
        if (iVar != null) {
            if (z) {
                iVar.dq();
            } else {
                iVar.d();
            }
        }
    }

    public boolean ox() {
        View.OnTouchListener onTouchListener;
        View.OnClickListener onClickListener;
        View view = this.jy;
        if (view == null) {
            view = this;
        }
        if (p()) {
            onTouchListener = (View.OnTouchListener) getDynamicClickListener();
            onClickListener = (View.OnClickListener) getDynamicClickListener();
        } else {
            onTouchListener = k;
            onClickListener = wp;
        }
        if (onTouchListener != null && onClickListener != null) {
            view.setOnTouchListener(onTouchListener);
            view.setOnClickListener(onClickListener);
            int dq = com.bytedance.sdk.component.adexpress.dynamic.d.dq.dq(this.ig);
            if (dq == 2 || dq == 3) {
                view.setOnClickListener(wp);
            } else {
                view.setOnClickListener(onClickListener);
            }
        }
        dq(view);
        d(view);
        return true;
    }

    public boolean p() {
        mn mnVar = this.ig;
        return (mnVar == null || mnVar.h() == 0) ? false : true;
    }

    public void s() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.mn, this.ia);
        layoutParams.topMargin = this.o;
        int i = this.kk;
        layoutParams.leftMargin = i;
        layoutParams.setMarginStart(i);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }

    public void setCanUseSensor(boolean z) {
        this.le = z;
    }

    public void setMarqueeValue(float f2) {
        this.gh = f2;
        postInvalidate();
    }

    public void setRippleValue(float f2) {
        this.dq = f2;
        postInvalidate();
    }

    public void setShineValue(float f2) {
        this.f1701d = f2;
        postInvalidate();
    }

    public void setShouldInvisible(boolean z) {
        this.f1702f = z;
    }

    public void setStretchValue(float f2) {
        this.r = f2;
        this.cd.dq(this, f2);
    }
}
