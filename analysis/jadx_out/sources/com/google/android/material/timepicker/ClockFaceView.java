package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.ayo;
import g.crp;
import g.djm;
import g.ebt;
import g.eyt;
import g.git;
import g.goi;
import g.gs;
import g.wa;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
class ClockFaceView extends wa implements ayo {
    public final int aa;

    /* renamed from: ab, reason: collision with root package name */
    public final Rect f9087ab;
    public final String[] ac;
    public final int ad;
    public final int[] ae;
    public final SparseArray af;
    public final int ag;
    public final Rect ah;
    public final float[] ai;
    public final ColorStateList aj;
    public float ak;
    public final ClockHandView w;
    public final f x;
    public final RectF y;
    public final int z;

    public ClockFaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9087ab = new Rect();
        this.y = new RectF();
        this.ah = new Rect();
        SparseArray sparseArray = new SparseArray();
        this.af = sparseArray;
        this.ai = new float[]{TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0.9f, 1.0f};
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, git.s, R.attr.materialClockStyle, R.style.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        ColorStateList ai = gs.ai(context, obtainStyledAttributes, 1);
        this.aj = ai;
        LayoutInflater.from(context).inflate(R.layout.material_clockface_view, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(R.id.material_clock_hand);
        this.w = clockHandView;
        this.ag = resources.getDimensionPixelSize(R.dimen.material_clock_hand_padding);
        int colorForState = ai.getColorForState(new int[]{android.R.attr.state_selected}, ai.getDefaultColor());
        this.ae = new int[]{colorForState, colorForState, ai.getDefaultColor()};
        clockHandView.f9092e.add(this);
        int defaultColor = eyt.bh(context, R.color.material_timepicker_clockface).getDefaultColor();
        ColorStateList ai2 = gs.ai(context, obtainStyledAttributes, 0);
        setBackgroundColor(ai2 != null ? ai2.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new e(this));
        setFocusable(false);
        obtainStyledAttributes.recycle();
        this.x = new f(this);
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        this.ac = strArr;
        LayoutInflater from = LayoutInflater.from(getContext());
        int size = sparseArray.size();
        boolean z = false;
        for (int i = 0; i < Math.max(this.ac.length, size); i++) {
            TextView textView = (TextView) sparseArray.get(i);
            if (i >= this.ac.length) {
                removeView(textView);
                sparseArray.remove(i);
            } else {
                if (textView == null) {
                    textView = (TextView) from.inflate(R.layout.material_clockface_textview, (ViewGroup) this, false);
                    sparseArray.put(i, textView);
                    addView(textView);
                }
                textView.setText(this.ac[i]);
                textView.setTag(R.id.material_value_index, Integer.valueOf(i));
                int i2 = (i / 12) + 1;
                textView.setTag(R.id.material_clock_level, Integer.valueOf(i2));
                z = i2 > 1 ? true : z;
                goi.ab(textView, this.x);
                textView.setTextColor(this.aj);
            }
        }
        ClockHandView clockHandView2 = this.w;
        if (clockHandView2.l && !z) {
            clockHandView2.m = 1;
        }
        clockHandView2.l = z;
        clockHandView2.invalidate();
        this.aa = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_height);
        this.z = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_width);
        this.ad = resources.getDimensionPixelSize(R.dimen.material_clock_size);
    }

    public final void al() {
        SparseArray sparseArray;
        Rect rect;
        RectF rectF;
        RectF rectF2 = this.w.f9090c;
        float f2 = Float.MAX_VALUE;
        TextView textView = null;
        int i = 0;
        while (true) {
            sparseArray = this.af;
            int size = sparseArray.size();
            rect = this.f9087ab;
            rectF = this.y;
            if (i >= size) {
                break;
            }
            TextView textView2 = (TextView) sparseArray.get(i);
            if (textView2 != null) {
                textView2.getHitRect(rect);
                rectF.set(rect);
                rectF.union(rectF2);
                float height = rectF.height() * rectF.width();
                if (height < f2) {
                    textView = textView2;
                    f2 = height;
                }
            }
            i++;
        }
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            TextView textView3 = (TextView) sparseArray.get(i2);
            if (textView3 != null) {
                textView3.setSelected(textView3 == textView);
                textView3.getHitRect(rect);
                rectF.set(rect);
                textView3.getLineBounds(0, this.ah);
                rectF.inset(r8.left, r8.top);
                textView3.getPaint().setShader(!RectF.intersects(rectF2, rectF) ? null : new RadialGradient(rectF2.centerX() - rectF.left, rectF2.centerY() - rectF.top, 0.5f * rectF2.width(), this.ae, this.ai, Shader.TileMode.CLAMP));
                textView3.invalidate();
            }
        }
    }

    @Override // g.wa
    public final void am() {
        ebt ebtVar = new ebt();
        ebtVar.o(this);
        HashMap hashMap = new HashMap();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getId() != R.id.circle_center && !"skip".equals(childAt.getTag())) {
                int i2 = (Integer) childAt.getTag(R.id.material_clock_level);
                if (i2 == null) {
                    i2 = 1;
                }
                if (!hashMap.containsKey(i2)) {
                    hashMap.put(i2, new ArrayList());
                }
                ((List) hashMap.get(i2)).add(childAt);
            }
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            List list = (List) entry.getValue();
            int round = ((Integer) entry.getKey()).intValue() == 2 ? Math.round(this.ao * 0.66f) : this.ao;
            Iterator it = list.iterator();
            float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            while (it.hasNext()) {
                int id = ((View) it.next()).getId();
                Integer valueOf = Integer.valueOf(id);
                HashMap hashMap2 = ebtVar.f15258f;
                if (!hashMap2.containsKey(valueOf)) {
                    hashMap2.put(Integer.valueOf(id), new djm());
                }
                crp crpVar = ((djm) hashMap2.get(Integer.valueOf(id))).f14279a;
                crpVar.f13393b = R.id.circle_center;
                crpVar.az = round;
                crpVar.u = f2;
                f2 += 360.0f / list.size();
            }
        }
        ebtVar.m(this);
        setConstraintSet(null);
        requestLayout();
        int i3 = 0;
        while (true) {
            SparseArray sparseArray = this.af;
            if (i3 >= sparseArray.size()) {
                return;
            }
            ((TextView) sparseArray.get(i3)).setVisibility(0);
            i3++;
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(1, this.ac.length, false, 1));
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        al();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int max = (int) (this.ad / Math.max(Math.max(this.aa / displayMetrics.heightPixels, this.z / displayMetrics.widthPixels), 1.0f));
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(max, C.ENCODING_PCM_32BIT);
        setMeasuredDimension(max, max);
        super.onMeasure(makeMeasureSpec, makeMeasureSpec);
    }
}
