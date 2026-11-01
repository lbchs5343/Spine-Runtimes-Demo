package g;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build;
import android.provider.Settings;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class fkr extends dzo {
    public eia t;
    public cgo u;
    public final elw v;

    public fkr(Context context, dzw dzwVar, elw elwVar, cgo cgoVar) {
        super(context, dzwVar);
        this.v = elwVar;
        this.u = cgoVar;
        cgoVar.aa = this;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x010e  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void draw(Canvas canvas) {
        Canvas canvas2;
        int i;
        eia eiaVar;
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(this.f15142f)) {
            boolean w = w();
            int i2 = 0;
            dzw dzwVar = this.l;
            if (w && (eiaVar = this.t) != null) {
                eiaVar.setBounds(getBounds());
                this.t.setTint(dzwVar.r[0]);
                this.t.draw(canvas);
                return;
            }
            canvas.save();
            Rect bounds = getBounds();
            float r = r();
            ObjectAnimator objectAnimator = this.h;
            boolean z = objectAnimator != null && objectAnimator.isRunning();
            ObjectAnimator objectAnimator2 = this.i;
            boolean z2 = objectAnimator2 != null && objectAnimator2.isRunning();
            elw elwVar = this.v;
            elwVar.v.j();
            elwVar.m(canvas, bounds, r, z, z2);
            int i3 = dzwVar.v;
            int i4 = this.f15143g;
            boolean z3 = (dzwVar instanceof cvs) || ((dzwVar instanceof alp) && ((alp) dzwVar).f10447b);
            boolean z4 = z3 && i3 == 0 && !dzwVar.ab(false);
            Paint paint = this.f15140d;
            if (z4) {
                canvas2 = canvas;
                this.v.k(canvas2, paint, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f, dzwVar.t, i4, 0);
            } else {
                if (z3) {
                    agm agmVar = (agm) ((ArrayList) this.u.f12848ab).get(0);
                    ArrayList arrayList = (ArrayList) this.u.f12848ab;
                    agm agmVar2 = (agm) arrayList.get(arrayList.size() - 1);
                    elw elwVar2 = this.v;
                    if (elwVar2 instanceof dpx) {
                        canvas2 = canvas;
                        i = i3;
                        elwVar2.k(canvas2, paint, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, agmVar.f10186d, dzwVar.t, i4, i);
                        this.v.k(canvas2, paint, agmVar2.f10188f, 1.0f, dzwVar.t, i4, i);
                    } else {
                        i = i3;
                        canvas.save();
                        canvas.rotate(agmVar2.h);
                        canvas2 = canvas;
                        this.v.k(canvas2, paint, agmVar2.f10188f, 1.0f + agmVar.f10186d, dzwVar.t, i4, i);
                        canvas.restore();
                    }
                    while (i2 < ((ArrayList) this.u.f12848ab).size()) {
                        agm agmVar3 = (agm) ((ArrayList) this.u.f12848ab).get(i2);
                        agmVar3.f10187e = s();
                        this.v.r(canvas, paint, agmVar3, this.f15143g);
                        if (i2 > 0 && !z4 && z3) {
                            this.v.k(canvas2, paint, ((agm) ((ArrayList) this.u.f12848ab).get(i2 - 1)).f10188f, agmVar3.f10186d, dzwVar.t, i4, i);
                        }
                        i2++;
                        canvas2 = canvas;
                    }
                    canvas.restore();
                }
                canvas2 = canvas;
            }
            i = i3;
            while (i2 < ((ArrayList) this.u.f12848ab).size()) {
            }
            canvas.restore();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.v.l();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.v.n();
    }

    @Override // g.dzo
    public final boolean p(boolean z, boolean z2, boolean z3) {
        eia eiaVar;
        boolean p = super.p(z, z2, z3);
        if (w() && (eiaVar = this.t) != null) {
            return eiaVar.setVisible(z, z2);
        }
        if (!isRunning()) {
            this.u.y();
        }
        if (z && (z3 || (Build.VERSION.SDK_INT <= 22 && !w()))) {
            this.u.x();
        }
        return p;
    }

    public final boolean w() {
        return this.f15141e != null && Settings.Global.getFloat(this.j.getContentResolver(), "animator_duration_scale", 1.0f) == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }
}
