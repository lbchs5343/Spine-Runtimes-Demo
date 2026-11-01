package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import cn.trinea.android.developertools.R;
import g.acs;
import g.cfb;
import g.ho;

/* loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public boolean f59a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f60b;

    /* renamed from: c, reason: collision with root package name */
    public View f61c;

    /* renamed from: d, reason: collision with root package name */
    public Drawable f62d;

    /* renamed from: e, reason: collision with root package name */
    public Drawable f63e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f64f;

    /* renamed from: g, reason: collision with root package name */
    public final int f65g;
    public View h;
    public Drawable i;

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBackground(new cfb(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, acs.j);
        boolean z = false;
        this.f62d = obtainStyledAttributes.getDrawable(0);
        this.f63e = obtainStyledAttributes.getDrawable(2);
        this.f65g = obtainStyledAttributes.getDimensionPixelSize(13, -1);
        if (getId() == R.id.split_action_bar) {
            this.f60b = true;
            this.i = obtainStyledAttributes.getDrawable(1);
        }
        obtainStyledAttributes.recycle();
        if (!this.f60b ? !(this.f62d != null || this.f63e != null) : this.i == null) {
            z = true;
        }
        setWillNotDraw(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f62d;
        if (drawable != null && drawable.isStateful()) {
            this.f62d.setState(getDrawableState());
        }
        Drawable drawable2 = this.f63e;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f63e.setState(getDrawableState());
        }
        Drawable drawable3 = this.i;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.i.setState(getDrawableState());
    }

    public View getTabContainer() {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f62d;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f63e;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.i;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.h = findViewById(R.id.action_bar);
        this.f61c = findViewById(R.id.action_context_bar);
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f64f || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        boolean z2 = true;
        if (this.f60b) {
            Drawable drawable = this.i;
            if (drawable != null) {
                drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z2 = false;
            }
        } else {
            if (this.f62d == null) {
                z2 = false;
            } else if (this.h.getVisibility() == 0) {
                this.f62d.setBounds(this.h.getLeft(), this.h.getTop(), this.h.getRight(), this.h.getBottom());
            } else {
                View view = this.f61c;
                if (view == null || view.getVisibility() != 0) {
                    this.f62d.setBounds(0, 0, 0, 0);
                } else {
                    this.f62d.setBounds(this.f61c.getLeft(), this.f61c.getTop(), this.f61c.getRight(), this.f61c.getBottom());
                }
            }
            this.f59a = false;
        }
        if (z2) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        if (this.h == null && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE && (i3 = this.f65g) >= 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.min(i3, View.MeasureSpec.getSize(i2)), Integer.MIN_VALUE);
        }
        super.onMeasure(i, i2);
        if (this.h == null) {
            return;
        }
        View.MeasureSpec.getMode(i2);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f62d;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f62d);
        }
        this.f62d = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.h;
            if (view != null) {
                this.f62d.setBounds(view.getLeft(), this.h.getTop(), this.h.getRight(), this.h.getBottom());
            }
        }
        boolean z = false;
        if (!this.f60b ? !(this.f62d != null || this.f63e != null) : this.i == null) {
            z = true;
        }
        setWillNotDraw(z);
        invalidate();
        invalidateOutline();
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.i;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.i);
        }
        this.i = drawable;
        boolean z = this.f60b;
        boolean z2 = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (z && (drawable2 = this.i) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!z ? !(this.f62d != null || this.f63e != null) : this.i == null) {
            z2 = true;
        }
        setWillNotDraw(z2);
        invalidate();
        invalidateOutline();
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2 = this.f63e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f63e);
        }
        this.f63e = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f59a && this.f63e != null) {
                throw null;
            }
        }
        boolean z = false;
        if (!this.f60b ? !(this.f62d != null || this.f63e != null) : this.i == null) {
            z = true;
        }
        setWillNotDraw(z);
        invalidate();
        invalidateOutline();
    }

    public void setTabContainer(ho hoVar) {
    }

    public void setTransitioning(boolean z) {
        this.f64f = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f62d;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        Drawable drawable2 = this.f63e;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        Drawable drawable3 = this.i;
        if (drawable3 != null) {
            drawable3.setVisible(z, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i) {
        if (i != 0) {
            return super.startActionModeForChild(view, callback, i);
        }
        return null;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        Drawable drawable2 = this.f62d;
        boolean z = this.f60b;
        if (drawable == drawable2 && !z) {
            return true;
        }
        if (drawable == this.f63e && this.f59a) {
            return true;
        }
        return (drawable == this.i && z) || super.verifyDrawable(drawable);
    }
}
