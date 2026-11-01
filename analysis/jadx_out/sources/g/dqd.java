package g;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;

/* loaded from: classes.dex */
public final class dqd extends View {

    /* renamed from: a, reason: collision with root package name */
    public boolean f14633a;

    public dqd(Context context) {
        super(context);
        this.f14633a = true;
        super.setVisibility(8);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setFilterRedundantCalls(boolean z) {
        this.f14633a = z;
    }

    public void setGuidelineBegin(int i) {
        dnk dnkVar = (dnk) getLayoutParams();
        if (this.f14633a && dnkVar.y == i) {
            return;
        }
        dnkVar.y = i;
        setLayoutParams(dnkVar);
    }

    public void setGuidelineEnd(int i) {
        dnk dnkVar = (dnk) getLayoutParams();
        if (this.f14633a && dnkVar.au == i) {
            return;
        }
        dnkVar.au = i;
        setLayoutParams(dnkVar);
    }

    public void setGuidelinePercent(float f2) {
        dnk dnkVar = (dnk) getLayoutParams();
        if (this.f14633a && dnkVar.bf == f2) {
            return;
        }
        dnkVar.bf = f2;
        setLayoutParams(dnkVar);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
    }
}
