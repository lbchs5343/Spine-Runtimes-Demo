package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import cn.trinea.android.developertools.R;
import g.alp;
import g.bgo;
import g.cgo;
import g.dpk;
import g.dzw;
import g.eia;
import g.eyt;
import g.fkr;
import g.git;
import g.glg;
import g.gqz;
import g.gs;
import g.hdv;

/* loaded from: classes3.dex */
public class CircularProgressIndicator extends gqz {
    public CircularProgressIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.circularProgressIndicatorStyle, R.style.Widget_MaterialComponents_CircularProgressIndicator);
        alp alpVar = (alp) this.k;
        hdv hdvVar = new hdv(alpVar);
        Context context2 = getContext();
        fkr fkrVar = new fkr(context2, alpVar, hdvVar, alpVar.f10446a == 1 ? new dpk(context2, alpVar) : new bgo(alpVar));
        fkrVar.t = eia.j(context2.getResources(), R.drawable.ic_mtrl_arrow_circle, null);
        setIndeterminateDrawable(fkrVar);
        setProgressDrawable(new glg(getContext(), alpVar, hdvVar));
        this.f18619c = true;
    }

    @Override // g.gqz
    public final dzw a(Context context, AttributeSet attributeSet) {
        alp alpVar = new alp(context, attributeSet, R.attr.circularProgressIndicatorStyle, R.style.Widget_MaterialComponents_CircularProgressIndicator);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.mtrl_progress_circular_size_medium);
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R.dimen.mtrl_progress_circular_inset_medium);
        eyt.bn(context, attributeSet, R.attr.circularProgressIndicatorStyle, R.style.Widget_MaterialComponents_CircularProgressIndicator);
        int[] iArr = git.l;
        eyt.ap(context, attributeSet, iArr, R.attr.circularProgressIndicatorStyle, R.style.Widget_MaterialComponents_CircularProgressIndicator, new int[0]);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, R.attr.circularProgressIndicatorStyle, R.style.Widget_MaterialComponents_CircularProgressIndicator);
        alpVar.f10446a = obtainStyledAttributes.getInt(0, 0);
        alpVar.f10448c = Math.max(gs.bd(context, obtainStyledAttributes, 4, dimensionPixelSize), alpVar.s * 2);
        alpVar.f10449d = gs.bd(context, obtainStyledAttributes, 3, dimensionPixelSize2);
        alpVar.f10450e = obtainStyledAttributes.getInt(2, 0);
        alpVar.f10447b = obtainStyledAttributes.getBoolean(1, true);
        obtainStyledAttributes.recycle();
        alpVar.j();
        return alpVar;
    }

    public int getIndeterminateAnimationType() {
        return ((alp) this.k).f10446a;
    }

    public int getIndicatorDirection() {
        return ((alp) this.k).f10450e;
    }

    public int getIndicatorInset() {
        return ((alp) this.k).f10449d;
    }

    public int getIndicatorSize() {
        return ((alp) this.k).f10448c;
    }

    public void setIndeterminateAnimationType(int i) {
        dzw dzwVar = this.k;
        if (((alp) dzwVar).f10446a == i) {
            return;
        }
        if (o() && isIndeterminate()) {
            throw new IllegalStateException("Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode.");
        }
        ((alp) dzwVar).f10446a = i;
        ((alp) dzwVar).j();
        cgo dpkVar = i == 1 ? new dpk(getContext(), (alp) dzwVar) : new bgo((alp) dzwVar);
        fkr indeterminateDrawable = getIndeterminateDrawable();
        indeterminateDrawable.u = dpkVar;
        dpkVar.aa = indeterminateDrawable;
        p();
        invalidate();
    }

    public void setIndicatorDirection(int i) {
        ((alp) this.k).f10450e = i;
        invalidate();
    }

    public void setIndicatorInset(int i) {
        dzw dzwVar = this.k;
        if (((alp) dzwVar).f10449d != i) {
            ((alp) dzwVar).f10449d = i;
            invalidate();
        }
    }

    public void setIndicatorSize(int i) {
        int max = Math.max(i, getTrackThickness() * 2);
        dzw dzwVar = this.k;
        if (((alp) dzwVar).f10448c != max) {
            ((alp) dzwVar).f10448c = max;
            ((alp) dzwVar).j();
            requestLayout();
            invalidate();
        }
    }

    @Override // g.gqz
    public void setTrackThickness(int i) {
        super.setTrackThickness(i);
        ((alp) this.k).j();
    }
}
