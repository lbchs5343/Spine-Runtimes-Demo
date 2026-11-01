package g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import cn.trinea.android.developertools.R;

/* loaded from: classes3.dex */
public abstract class wa extends ConstraintLayout {
    public final ddm an;
    public int ao;
    public final fvi ap;

    public wa(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.materialClockStyle);
        LayoutInflater.from(context).inflate(R.layout.material_radial_view_group, this);
        ddm ddmVar = new ddm();
        this.an = ddmVar;
        nu nuVar = new nu(0.5f);
        bem r = ddmVar.ds.h.r();
        r.f11390e = nuVar;
        r.f11392g = nuVar;
        r.l = nuVar;
        r.f11386a = nuVar;
        ddmVar.setShapeAppearanceModel(r.n());
        this.an.en(ColorStateList.valueOf(-1));
        setBackground(this.an);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, git.j, R.attr.materialClockStyle, 0);
        this.ao = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.ap = new fvi(18, this);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (view.getId() == -1) {
            view.setId(View.generateViewId());
        }
        Handler handler = getHandler();
        if (handler != null) {
            fvi fviVar = this.ap;
            handler.removeCallbacks(fviVar);
            handler.post(fviVar);
        }
    }

    public abstract void am();

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        am();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        Handler handler = getHandler();
        if (handler != null) {
            fvi fviVar = this.ap;
            handler.removeCallbacks(fviVar);
            handler.post(fviVar);
        }
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i) {
        this.an.en(ColorStateList.valueOf(i));
    }
}
