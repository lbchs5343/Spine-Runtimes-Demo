package g;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public abstract class gcr extends atw {
    public boolean s;
    public boolean t;

    public abstract void c(dbr dbrVar, int i, int i2);

    @Override // g.atw
    public final void l(ConstraintLayout constraintLayout) {
        k(constraintLayout);
    }

    @Override // g.atw, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.s || this.t) {
            ViewParent parent = getParent();
            if (parent instanceof ConstraintLayout) {
                ConstraintLayout constraintLayout = (ConstraintLayout) parent;
                int visibility = getVisibility();
                float elevation = getElevation();
                for (int i = 0; i < this.i; i++) {
                    View view = (View) constraintLayout.k.get(this.h[i]);
                    if (view != null) {
                        if (this.s) {
                            view.setVisibility(visibility);
                        }
                        if (this.t && elevation > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                            view.setTranslationZ(view.getTranslationZ() + elevation);
                        }
                    }
                }
            }
        }
    }

    @Override // g.atw
    public void r(AttributeSet attributeSet) {
        super.r(attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, bfv.f11480g);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 6) {
                    this.s = true;
                } else if (index == 22) {
                    this.t = true;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        super.setElevation(f2);
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        k((ConstraintLayout) parent);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        k((ConstraintLayout) parent);
    }
}
