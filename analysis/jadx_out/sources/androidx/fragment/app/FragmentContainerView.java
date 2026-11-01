package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import cn.trinea.android.developertools.R;
import g.anp;
import g.bff;
import g.egi;
import g.flp;
import g.goi;
import g.tn;
import g.ut;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class FragmentContainerView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public View.OnApplyWindowInsetsListener f166a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f167b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f168c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f169d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        String str;
        bff.p(context, "context");
        this.f168c = new ArrayList();
        this.f169d = new ArrayList();
        this.f167b = true;
        if (attributeSet != null) {
            String classAttribute = attributeSet.getClassAttribute();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, flp.f16999b, 0, 0);
            if (classAttribute == null) {
                classAttribute = obtainStyledAttributes.getString(0);
                str = "android:name";
            } else {
                str = "class";
            }
            obtainStyledAttributes.recycle();
            if (classAttribute == null || isInEditMode()) {
                return;
            }
            throw new UnsupportedOperationException("FragmentContainerView must be within a FragmentActivity to use " + str + "=\"" + classAttribute + '\"');
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(Context context, AttributeSet attributeSet, v vVar) {
        super(context, attributeSet);
        View view;
        bff.p(context, "context");
        bff.p(attributeSet, "attrs");
        this.f168c = new ArrayList();
        this.f169d = new ArrayList();
        this.f167b = true;
        String classAttribute = attributeSet.getClassAttribute();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, flp.f16999b, 0, 0);
        classAttribute = classAttribute == null ? obtainStyledAttributes.getString(0) : classAttribute;
        String string = obtainStyledAttributes.getString(1);
        obtainStyledAttributes.recycle();
        int id = getId();
        Fragment cc = vVar.cc(id);
        if (classAttribute != null && cc == null) {
            if (id == -1) {
                throw new IllegalStateException(tn.ad("FragmentContainerView must have an android:id to add Fragment ", classAttribute, string != null ? " with tag ".concat(string) : ""));
            }
            ut bi = vVar.bi();
            context.getClassLoader();
            Fragment instantiate = Fragment.instantiate(((egi) bi).f15484d.af.h, classAttribute, null);
            bff.e(instantiate, "fm.fragmentFactory.insta…ontext.classLoader, name)");
            instantiate.onInflate(context, attributeSet, (Bundle) null);
            j jVar = new j(vVar);
            jVar.k = true;
            instantiate.mContainer = this;
            jVar.h(getId(), instantiate, string, 1);
            if (jVar.w) {
                throw new IllegalStateException("This transaction is already being added to the back stack");
            }
            jVar.f191a.aw(jVar, true);
        }
        Iterator it = vVar.ah.f().iterator();
        while (it.hasNext()) {
            x xVar = (x) it.next();
            Fragment fragment = xVar.f220e;
            if (fragment.mContainerId == getId() && (view = fragment.mView) != null && view.getParent() == null) {
                fragment.mContainer = this;
                xVar.k();
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        bff.p(view, "child");
        Object tag = view.getTag(R.id.fragment_container_view_tag);
        if ((tag instanceof Fragment ? (Fragment) tag : null) != null) {
            super.addView(view, i, layoutParams);
            return;
        }
        throw new IllegalStateException(("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.").toString());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        anp t;
        bff.p(windowInsets, "insets");
        anp c2 = anp.c(null, windowInsets);
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.f166a;
        if (onApplyWindowInsetsListener != null) {
            bff.d(onApplyWindowInsetsListener);
            WindowInsets onApplyWindowInsets = onApplyWindowInsetsListener.onApplyWindowInsets(this, windowInsets);
            bff.e(onApplyWindowInsets, "onApplyWindowInsetsListe…lyWindowInsets(v, insets)");
            t = anp.c(null, onApplyWindowInsets);
        } else {
            t = goi.t(this, c2);
        }
        bff.e(t, "if (applyWindowInsetsLis…, insetsCompat)\n        }");
        if (!t.f10526b.c()) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                goi.v(getChildAt(i), t);
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        bff.p(canvas, "canvas");
        if (this.f167b) {
            Iterator it = this.f168c.iterator();
            while (it.hasNext()) {
                super.drawChild(canvas, (View) it.next(), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        bff.p(canvas, "canvas");
        bff.p(view, "child");
        if (this.f167b) {
            ArrayList arrayList = this.f168c;
            if (!arrayList.isEmpty() && arrayList.contains(view)) {
                return false;
            }
        }
        return super.drawChild(canvas, view, j);
    }

    public final void e(View view) {
        if (this.f169d.contains(view)) {
            this.f168c.add(view);
        }
    }

    @Override // android.view.ViewGroup
    public final void endViewTransition(View view) {
        bff.p(view, "view");
        this.f169d.remove(view);
        if (this.f168c.remove(view)) {
            this.f167b = true;
        }
        super.endViewTransition(view);
    }

    public final <F extends Fragment> F getFragment() {
        u uVar;
        Fragment fragment;
        v supportFragmentManager;
        View view = this;
        while (true) {
            uVar = null;
            if (view == null) {
                fragment = null;
                break;
            }
            Object tag = view.getTag(R.id.fragment_container_view_tag);
            fragment = tag instanceof Fragment ? (Fragment) tag : null;
            if (fragment != null) {
                break;
            }
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        if (fragment == null) {
            Context context = getContext();
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    break;
                }
                if (context instanceof u) {
                    uVar = (u) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            }
            if (uVar == null) {
                throw new IllegalStateException("View " + this + " is not within a subclass of FragmentActivity.");
            }
            supportFragmentManager = uVar.getSupportFragmentManager();
        } else {
            if (!fragment.isAdded()) {
                throw new IllegalStateException("The Fragment " + fragment + " that owns View " + this + " has already been destroyed. Nested fragments should always use the child FragmentManager.");
            }
            supportFragmentManager = fragment.getChildFragmentManager();
        }
        return (F) supportFragmentManager.cc(getId());
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        bff.p(windowInsets, "insets");
        return windowInsets;
    }

    @Override // android.view.ViewGroup
    public final void removeAllViewsInLayout() {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (-1 >= childCount) {
                super.removeAllViewsInLayout();
                return;
            } else {
                View childAt = getChildAt(childCount);
                bff.e(childAt, "view");
                e(childAt);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        bff.p(view, "view");
        e(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i) {
        View childAt = getChildAt(i);
        bff.e(childAt, "view");
        e(childAt);
        super.removeViewAt(i);
    }

    @Override // android.view.ViewGroup
    public final void removeViewInLayout(View view) {
        bff.p(view, "view");
        e(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViews(int i, int i2) {
        int i3 = i + i2;
        for (int i4 = i; i4 < i3; i4++) {
            View childAt = getChildAt(i4);
            bff.e(childAt, "view");
            e(childAt);
        }
        super.removeViews(i, i2);
    }

    @Override // android.view.ViewGroup
    public final void removeViewsInLayout(int i, int i2) {
        int i3 = i + i2;
        for (int i4 = i; i4 < i3; i4++) {
            View childAt = getChildAt(i4);
            bff.e(childAt, "view");
            e(childAt);
        }
        super.removeViewsInLayout(i, i2);
    }

    public final void setDrawDisappearingViewsLast(boolean z) {
        this.f167b = z;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        bff.p(onApplyWindowInsetsListener, "listener");
        this.f166a = onApplyWindowInsetsListener;
    }

    @Override // android.view.ViewGroup
    public final void startViewTransition(View view) {
        bff.p(view, "view");
        if (view.getParent() == this) {
            this.f169d.add(view);
        }
        super.startViewTransition(view);
    }
}
