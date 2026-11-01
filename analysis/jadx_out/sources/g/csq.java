package g;

import android.content.Context;
import android.view.View;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class csq extends byn {
    public final /* synthetic */ int p = 1;
    public final /* synthetic */ esf q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public csq(esf esfVar, Context context, ftn ftnVar, View view) {
        super(context, ftnVar, view, true, R.attr.actionOverflowMenuStyle, 0);
        this.q = esfVar;
        this.f12457f = 8388613;
        emr emrVar = esfVar.f16080ab;
        this.f12452a = emrVar;
        gox goxVar = this.f12458g;
        if (goxVar != null) {
            goxVar.b(emrVar);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public csq(esf esfVar, Context context, gyg gygVar, View view) {
        super(context, gygVar, view, false, R.attr.actionOverflowMenuStyle, 0);
        this.q = esfVar;
        if ((gygVar.ax.ac & 32) != 32) {
            View view2 = esfVar.y;
            this.f12455d = view2 == null ? (View) esfVar.i : view2;
        }
        emr emrVar = esfVar.f16080ab;
        this.f12452a = emrVar;
        gox goxVar = this.f12458g;
        if (goxVar != null) {
            goxVar.b(emrVar);
        }
    }

    @Override // g.byn
    public final void o() {
        switch (this.p) {
            case 0:
                esf esfVar = this.q;
                esfVar.k = null;
                esfVar.getClass();
                super.o();
                break;
            default:
                esf esfVar2 = this.q;
                ftn ftnVar = esfVar2.p;
                if (ftnVar != null) {
                    ftnVar.at(true);
                }
                esfVar2.t = null;
                super.o();
                break;
        }
    }
}
