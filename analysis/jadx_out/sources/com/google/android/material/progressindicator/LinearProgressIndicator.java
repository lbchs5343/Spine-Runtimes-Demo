package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.TypedValue;
import cn.trinea.android.developertools.R;
import g.axy;
import g.cmj;
import g.cvs;
import g.dpx;
import g.dzw;
import g.eyt;
import g.fkr;
import g.fxk;
import g.git;
import g.glg;
import g.gqz;
import j$.util.Objects;

/* loaded from: classes3.dex */
public class LinearProgressIndicator extends gqz {
    public LinearProgressIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator);
        cvs cvsVar = (cvs) this.k;
        dpx dpxVar = new dpx(cvsVar);
        dpxVar.f14617f = 300.0f;
        dpxVar.f14614c = new Pair(new axy(), new axy());
        Context context2 = getContext();
        setIndeterminateDrawable(new fkr(context2, cvsVar, dpxVar, cvsVar.f13603a == 0 ? new cmj(cvsVar) : new fxk(context2, cvsVar)));
        setProgressDrawable(new glg(getContext(), cvsVar, dpxVar));
        this.f18619c = true;
    }

    @Override // g.gqz
    public final dzw a(Context context, AttributeSet attributeSet) {
        cvs cvsVar = new cvs(context, attributeSet, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator);
        eyt.bn(context, attributeSet, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator);
        int[] iArr = git.f18218c;
        eyt.ap(context, attributeSet, iArr, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator, new int[0]);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator);
        cvsVar.f13603a = obtainStyledAttributes.getInt(0, 1);
        cvsVar.f13608f = obtainStyledAttributes.getInt(1, 0);
        cvsVar.i = Math.min(obtainStyledAttributes.getDimensionPixelSize(4, 0), cvsVar.s);
        if (obtainStyledAttributes.hasValue(3)) {
            cvsVar.f13607e = Integer.valueOf(obtainStyledAttributes.getDimensionPixelSize(3, 0));
        }
        TypedValue peekValue = obtainStyledAttributes.peekValue(2);
        if (peekValue != null) {
            int i = peekValue.type;
            if (i == 5) {
                cvsVar.h = Math.min(TypedValue.complexToDimensionPixelSize(peekValue.data, obtainStyledAttributes.getResources().getDisplayMetrics()), cvsVar.s / 2);
                cvsVar.f13605c = false;
                cvsVar.f13606d = true;
            } else if (i == 6) {
                cvsVar.f13604b = Math.min(peekValue.getFraction(1.0f, 1.0f), 0.5f);
                cvsVar.f13605c = true;
                cvsVar.f13606d = true;
            }
        }
        obtainStyledAttributes.recycle();
        cvsVar.j();
        cvsVar.f13609g = cvsVar.f13608f == 1;
        return cvsVar;
    }

    @Override // g.gqz
    public final void b(int i) {
        dzw dzwVar = this.k;
        if (dzwVar != null && ((cvs) dzwVar).f13603a == 0 && isIndeterminate()) {
            return;
        }
        super.b(i);
    }

    public int getIndeterminateAnimationType() {
        return ((cvs) this.k).f13603a;
    }

    public int getIndicatorDirection() {
        return ((cvs) this.k).f13608f;
    }

    public int getTrackInnerCornerRadius() {
        return ((cvs) this.k).h;
    }

    public Integer getTrackStopIndicatorPadding() {
        return ((cvs) this.k).f13607e;
    }

    public int getTrackStopIndicatorSize() {
        return ((cvs) this.k).i;
    }

    @Override // g.gqz, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        dzw dzwVar = this.k;
        cvs cvsVar = (cvs) dzwVar;
        boolean z2 = true;
        if (((cvs) dzwVar).f13608f != 1 && ((getLayoutDirection() != 1 || ((cvs) dzwVar).f13608f != 2) && (getLayoutDirection() != 0 || ((cvs) dzwVar).f13608f != 3))) {
            z2 = false;
        }
        cvsVar.f13609g = z2;
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        int paddingRight = i - (getPaddingRight() + getPaddingLeft());
        int paddingBottom = i2 - (getPaddingBottom() + getPaddingTop());
        fkr indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable != null) {
            indeterminateDrawable.setBounds(0, 0, paddingRight, paddingBottom);
        }
        glg progressDrawable = getProgressDrawable();
        if (progressDrawable != null) {
            progressDrawable.setBounds(0, 0, paddingRight, paddingBottom);
        }
    }

    public void setIndeterminateAnimationType(int i) {
        dzw dzwVar = this.k;
        if (((cvs) dzwVar).f13603a == i) {
            return;
        }
        if (o() && isIndeterminate()) {
            throw new IllegalStateException("Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode.");
        }
        ((cvs) dzwVar).f13603a = i;
        ((cvs) dzwVar).j();
        if (i == 0) {
            fkr indeterminateDrawable = getIndeterminateDrawable();
            cmj cmjVar = new cmj((cvs) dzwVar);
            indeterminateDrawable.u = cmjVar;
            cmjVar.aa = indeterminateDrawable;
        } else {
            fkr indeterminateDrawable2 = getIndeterminateDrawable();
            fxk fxkVar = new fxk(getContext(), (cvs) dzwVar);
            indeterminateDrawable2.u = fxkVar;
            fxkVar.aa = indeterminateDrawable2;
        }
        p();
        invalidate();
    }

    @Override // g.gqz
    public void setIndicatorColor(int... iArr) {
        super.setIndicatorColor(iArr);
        ((cvs) this.k).j();
    }

    public void setIndicatorDirection(int i) {
        dzw dzwVar = this.k;
        ((cvs) dzwVar).f13608f = i;
        cvs cvsVar = (cvs) dzwVar;
        boolean z = true;
        if (i != 1 && ((getLayoutDirection() != 1 || ((cvs) dzwVar).f13608f != 2) && (getLayoutDirection() != 0 || i != 3))) {
            z = false;
        }
        cvsVar.f13609g = z;
        invalidate();
    }

    @Override // g.gqz
    public void setTrackCornerRadius(int i) {
        super.setTrackCornerRadius(i);
        ((cvs) this.k).j();
        invalidate();
    }

    public void setTrackInnerCornerRadius(int i) {
        dzw dzwVar = this.k;
        if (((cvs) dzwVar).h != i) {
            ((cvs) dzwVar).h = Math.round(Math.min(i, ((cvs) dzwVar).s / 2.0f));
            ((cvs) dzwVar).f13605c = false;
            ((cvs) dzwVar).f13606d = true;
            ((cvs) dzwVar).j();
            invalidate();
        }
    }

    public void setTrackInnerCornerRadiusFraction(float f2) {
        dzw dzwVar = this.k;
        if (((cvs) dzwVar).f13604b != f2) {
            ((cvs) dzwVar).f13604b = Math.min(f2, 0.5f);
            ((cvs) dzwVar).f13605c = true;
            ((cvs) dzwVar).f13606d = true;
            ((cvs) dzwVar).j();
            invalidate();
        }
    }

    public void setTrackStopIndicatorPadding(Integer num) {
        dzw dzwVar = this.k;
        if (Objects.equals(((cvs) dzwVar).f13607e, num)) {
            return;
        }
        ((cvs) dzwVar).f13607e = num;
        invalidate();
    }

    public void setTrackStopIndicatorSize(int i) {
        dzw dzwVar = this.k;
        if (((cvs) dzwVar).i != i) {
            ((cvs) dzwVar).i = Math.min(i, ((cvs) dzwVar).s);
            ((cvs) dzwVar).j();
            invalidate();
        }
    }
}
