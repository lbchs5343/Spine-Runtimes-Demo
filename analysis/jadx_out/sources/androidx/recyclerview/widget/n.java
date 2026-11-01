package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import g.awf;
import g.fc;
import g.fmk;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class n {

    /* renamed from: b, reason: collision with root package name */
    public View f304b;

    /* renamed from: c, reason: collision with root package name */
    public final fc f305c;

    /* renamed from: a, reason: collision with root package name */
    public int f303a = 0;

    /* renamed from: d, reason: collision with root package name */
    public final fmk f306d = new fmk(0);

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f307e = new ArrayList();

    public n(fc fcVar) {
        this.f305c = fcVar;
    }

    public final int f() {
        return ((RecyclerView) this.f305c.f16548e).getChildCount();
    }

    public final View g(int i) {
        return ((RecyclerView) this.f305c.f16548e).getChildAt(j(i));
    }

    public final int h() {
        return ((RecyclerView) this.f305c.f16548e).getChildCount() - this.f307e.size();
    }

    public final void i(View view, int i, boolean z) {
        RecyclerView recyclerView = (RecyclerView) this.f305c.f16548e;
        int childCount = i < 0 ? recyclerView.getChildCount() : j(i);
        this.f306d.g(childCount, z);
        if (z) {
            k(view);
        }
        recyclerView.addView(view, childCount);
        recyclerView.dispatchChildAttached(view);
    }

    public final int j(int i) {
        if (i < 0) {
            return -1;
        }
        int childCount = ((RecyclerView) this.f305c.f16548e).getChildCount();
        int i2 = i;
        while (i2 < childCount) {
            fmk fmkVar = this.f306d;
            int k = i - (i2 - fmkVar.k(i2));
            if (k == 0) {
                while (fmkVar.f(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += k;
        }
        return -1;
    }

    public final void k(View view) {
        this.f307e.add(view);
        p childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            RecyclerView recyclerView = (RecyclerView) this.f305c.f16548e;
            int i = childViewHolderInt.r;
            if (i != -1) {
                childViewHolderInt.f310c = i;
            } else {
                childViewHolderInt.f310c = childViewHolderInt.n.getImportantForAccessibility();
            }
            recyclerView.setChildImportantForAccessibilityInternal(childViewHolderInt, 4);
        }
    }

    public final void l(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        RecyclerView recyclerView = (RecyclerView) this.f305c.f16548e;
        int childCount = i < 0 ? recyclerView.getChildCount() : j(i);
        this.f306d.g(childCount, z);
        if (z) {
            k(view);
        }
        p childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (!childViewHolderInt.ah() && !childViewHolderInt.w()) {
                StringBuilder sb = new StringBuilder("Called attach on a child which is not detached: ");
                sb.append(childViewHolderInt);
                throw new IllegalArgumentException(awf.u(recyclerView, sb));
            }
            if (RecyclerView.sVerboseLoggingEnabled) {
                childViewHolderInt.toString();
            }
            childViewHolderInt.f313f &= -257;
        } else if (RecyclerView.sDebugAssertionsEnabled) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            sb2.append(", index: ");
            sb2.append(childCount);
            throw new IllegalArgumentException(awf.u(recyclerView, sb2));
        }
        recyclerView.attachViewToParent(view, childCount, layoutParams);
    }

    public final void m(View view) {
        p childViewHolderInt;
        if (!this.f307e.remove(view) || (childViewHolderInt = RecyclerView.getChildViewHolderInt(view)) == null) {
            return;
        }
        ((RecyclerView) this.f305c.f16548e).setChildImportantForAccessibilityInternal(childViewHolderInt, childViewHolderInt.f310c);
        childViewHolderInt.f310c = 0;
    }

    public final void n(int i) {
        int j = j(i);
        this.f306d.i(j);
        RecyclerView recyclerView = (RecyclerView) this.f305c.f16548e;
        View childAt = recyclerView.getChildAt(j);
        if (childAt != null) {
            p childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
            if (childViewHolderInt != null) {
                if (childViewHolderInt.ah() && !childViewHolderInt.w()) {
                    StringBuilder sb = new StringBuilder("called detach on an already detached child ");
                    sb.append(childViewHolderInt);
                    throw new IllegalArgumentException(awf.u(recyclerView, sb));
                }
                if (RecyclerView.sVerboseLoggingEnabled) {
                    childViewHolderInt.toString();
                }
                childViewHolderInt.ab(256);
            }
        } else if (RecyclerView.sDebugAssertionsEnabled) {
            StringBuilder sb2 = new StringBuilder("No view at offset ");
            sb2.append(j);
            throw new IllegalArgumentException(awf.u(recyclerView, sb2));
        }
        recyclerView.detachViewFromParent(j);
    }

    public final View o(int i) {
        return ((RecyclerView) this.f305c.f16548e).getChildAt(i);
    }

    public final String toString() {
        return this.f306d.toString() + ", hidden list:" + this.f307e.size();
    }
}
