package g;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class glz implements us {
    public final /* synthetic */ Toolbar i;
    public ftn j;
    public far k;

    public glz(Toolbar toolbar) {
        this.i = toolbar;
    }

    @Override // g.us
    public final boolean a(far farVar) {
        Toolbar toolbar = this.i;
        toolbar.bn();
        ViewParent parent = toolbar.f114a.getParent();
        if (parent != toolbar) {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(toolbar.f114a);
            }
            toolbar.addView(toolbar.f114a);
        }
        View actionView = farVar.getActionView();
        toolbar.ag = actionView;
        this.k = farVar;
        ViewParent parent2 = actionView.getParent();
        if (parent2 != toolbar) {
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView(toolbar.ag);
            }
            dqp au = Toolbar.au();
            au.f14648a = (toolbar.ai & 112) | 8388611;
            au.f14649b = 2;
            toolbar.ag.setLayoutParams(au);
            toolbar.addView(toolbar.ag);
        }
        for (int childCount = toolbar.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = toolbar.getChildAt(childCount);
            if (((dqp) childAt.getLayoutParams()).f14649b != 2 && childAt != toolbar.f115ab) {
                toolbar.removeViewAt(childCount);
                toolbar.x.add(childAt);
            }
        }
        toolbar.requestLayout();
        farVar.m = true;
        farVar.f16489f.am(false);
        KeyEvent.Callback callback = toolbar.ag;
        if (callback instanceof ddr) {
            ((bxn) ((ddr) callback)).f12392a.onActionViewExpanded();
        }
        toolbar.be();
        return true;
    }

    @Override // g.us
    public final void c() {
        if (this.k != null) {
            ftn ftnVar = this.j;
            if (ftnVar != null) {
                int size = ftnVar.m.size();
                for (int i = 0; i < size; i++) {
                    if (this.j.getItem(i) == this.k) {
                        return;
                    }
                }
            }
            g(this.k);
        }
    }

    @Override // g.us
    public final void d(ftn ftnVar, boolean z) {
    }

    @Override // g.us
    public final boolean e(gyg gygVar) {
        return false;
    }

    @Override // g.us
    public final void f(Context context, ftn ftnVar) {
        far farVar;
        ftn ftnVar2 = this.j;
        if (ftnVar2 != null && (farVar = this.k) != null) {
            ftnVar2.ad(farVar);
        }
        this.j = ftnVar;
    }

    @Override // g.us
    public final boolean g(far farVar) {
        Toolbar toolbar = this.i;
        KeyEvent.Callback callback = toolbar.ag;
        if (callback instanceof ddr) {
            ((bxn) ((ddr) callback)).f12392a.onActionViewCollapsed();
        }
        toolbar.removeView(toolbar.ag);
        toolbar.removeView(toolbar.f114a);
        toolbar.ag = null;
        ArrayList arrayList = toolbar.x;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            toolbar.addView((View) arrayList.get(size));
        }
        arrayList.clear();
        this.k = null;
        toolbar.requestLayout();
        farVar.m = false;
        farVar.f16489f.am(false);
        toolbar.be();
        return true;
    }

    @Override // g.us
    public final boolean h() {
        return false;
    }
}
