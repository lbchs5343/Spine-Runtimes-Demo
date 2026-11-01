package g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class foi extends akj {
    public ColorStateList an;
    public Drawable ao;
    public boolean ap;
    public boolean aq;
    public PorterDuff.Mode ar;
    public final har as;

    public foi(har harVar) {
        super(harVar);
        this.an = null;
        this.ar = null;
        this.ap = false;
        this.aq = false;
        this.as = harVar;
    }

    public final void at(Canvas canvas) {
        if (this.ao != null) {
            int max = this.as.getMax();
            if (max > 1) {
                int intrinsicWidth = this.ao.getIntrinsicWidth();
                int intrinsicHeight = this.ao.getIntrinsicHeight();
                int i = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i2 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.ao.setBounds(-i, -i2, i, i2);
                float width = ((r0.getWidth() - r0.getPaddingLeft()) - r0.getPaddingRight()) / max;
                int save = canvas.save();
                canvas.translate(r0.getPaddingLeft(), r0.getHeight() / 2);
                for (int i3 = 0; i3 <= max; i3++) {
                    this.ao.draw(canvas);
                    canvas.translate(width, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                }
                canvas.restoreToCount(save);
            }
        }
    }

    public final void au() {
        Drawable drawable = this.ao;
        if (drawable != null) {
            if (this.ap || this.aq) {
                Drawable aw = dzm.aw(drawable.mutate());
                this.ao = aw;
                if (this.ap) {
                    aw.setTintList(this.an);
                }
                if (this.aq) {
                    this.ao.setTintMode(this.ar);
                }
                if (this.ao.isStateful()) {
                    this.ao.setState(this.as.getDrawableState());
                }
            }
        }
    }

    @Override // g.akj
    public final void w(AttributeSet attributeSet, int i) {
        super.w(attributeSet, R.attr.seekBarStyle);
        har harVar = this.as;
        Context context = harVar.getContext();
        int[] iArr = acs.z;
        dzh j = dzh.j(context, attributeSet, iArr, R.attr.seekBarStyle);
        TypedArray typedArray = (TypedArray) j.f15121f;
        goi.x(harVar, harVar.getContext(), iArr, attributeSet, (TypedArray) j.f15121f, R.attr.seekBarStyle);
        Drawable z = j.z(0);
        if (z != null) {
            harVar.setThumb(z);
        }
        Drawable o = j.o(1);
        Drawable drawable = this.ao;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.ao = o;
        if (o != null) {
            o.setCallback(harVar);
            dzm.bb(o, harVar.getLayoutDirection());
            if (o.isStateful()) {
                o.setState(harVar.getDrawableState());
            }
            au();
        }
        harVar.invalidate();
        if (typedArray.hasValue(3)) {
            this.ar = edd.f(typedArray.getInt(3, -1), this.ar);
            this.aq = true;
        }
        if (typedArray.hasValue(2)) {
            this.an = j.aa(2);
            this.ap = true;
        }
        j.af();
        au();
    }
}
