package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.acs;
import g.csq;
import g.dnh;
import g.eao;
import g.elx;
import g.eqs;
import g.esf;
import g.fso;
import g.ftn;
import g.get;
import g.goi;
import g.gtg;

/* loaded from: classes.dex */
public class ActionBarContextView extends ViewGroup {

    /* renamed from: a, reason: collision with root package name */
    public boolean f66a;

    /* renamed from: b, reason: collision with root package name */
    public TextView f67b;

    /* renamed from: c, reason: collision with root package name */
    public final int f68c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f69d;

    /* renamed from: e, reason: collision with root package name */
    public TextView f70e;

    /* renamed from: f, reason: collision with root package name */
    public CharSequence f71f;

    /* renamed from: g, reason: collision with root package name */
    public ActionMenuView f72g;
    public View h;
    public View i;
    public boolean j;
    public esf k;
    public int l;
    public final int m;
    public final eqs n;
    public CharSequence o;
    public final Context p;
    public LinearLayout q;
    public final int r;
    public View s;
    public elx t;

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.actionModeStyle);
        int resourceId;
        this.n = new eqs(this);
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.p = context;
        } else {
            this.p = new ContextThemeWrapper(context, typedValue.resourceId);
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, acs.f10001g, R.attr.actionModeStyle, 0);
        setBackground((!obtainStyledAttributes.hasValue(0) || (resourceId = obtainStyledAttributes.getResourceId(0, 0)) == 0) ? obtainStyledAttributes.getDrawable(0) : fso.ai(context, resourceId));
        this.r = obtainStyledAttributes.getResourceId(5, 0);
        this.m = obtainStyledAttributes.getResourceId(4, 0);
        this.l = obtainStyledAttributes.getLayoutDimension(3, 0);
        this.f68c = obtainStyledAttributes.getResourceId(2, R.layout.abc_action_mode_close_item_material);
        obtainStyledAttributes.recycle();
    }

    public static int v(View view, int i, int i2) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), i2);
        return Math.max(0, i - view.getMeasuredWidth());
    }

    public static int x(View view, boolean z, int i, int i2, int i3) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = ((i3 - measuredHeight) / 2) + i2;
        if (z) {
            view.layout(i - measuredWidth, i4, i, measuredHeight + i4);
        } else {
            view.layout(i, i4, i + measuredWidth, measuredHeight + i4);
        }
        return z ? -measuredWidth : measuredWidth;
    }

    public final void aa() {
        removeAllViews();
        this.s = null;
        this.f72g = null;
        this.k = null;
        View view = this.h;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    public final elx ab(int i, long j) {
        elx elxVar = this.t;
        if (elxVar != null) {
            elxVar.e();
        }
        eqs eqsVar = this.n;
        if (i != 0) {
            elx o = goi.o(this);
            o.d(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            o.f(j);
            eqsVar.f16012c.t = o;
            eqsVar.f16011b = i;
            o.b(eqsVar);
            return o;
        }
        if (getVisibility() != 0) {
            setAlpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
        elx o2 = goi.o(this);
        o2.d(1.0f);
        o2.f(j);
        eqsVar.f16012c.t = o2;
        eqsVar.f16011b = i;
        o2.b(eqsVar);
        return o2;
    }

    public final void ac(gtg gtgVar) {
        View view = this.i;
        if (view == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(this.f68c, (ViewGroup) this, false);
            this.i = inflate;
            addView(inflate);
        } else if (view.getParent() == null) {
            addView(this.i);
        }
        View findViewById = this.i.findViewById(R.id.action_mode_close_button);
        this.h = findViewById;
        findViewById.setOnClickListener(new get(1, gtgVar));
        ftn t = gtgVar.t();
        esf esfVar = this.k;
        if (esfVar != null) {
            esfVar.ah();
            csq csqVar = esfVar.k;
            if (csqVar != null && csqVar.n()) {
                csqVar.f12458g.dismiss();
            }
        }
        esf esfVar2 = new esf(getContext());
        this.k = esfVar2;
        esfVar2.q = true;
        esfVar2.ad = true;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        t.ap(this.k, this.p);
        esf esfVar3 = this.k;
        eao eaoVar = esfVar3.i;
        if (eaoVar == null) {
            eao eaoVar2 = (eao) esfVar3.u.inflate(esfVar3.ae, (ViewGroup) this, false);
            esfVar3.i = eaoVar2;
            eaoVar2.c(esfVar3.p);
            esfVar3.c();
        }
        eao eaoVar3 = esfVar3.i;
        if (eaoVar != eaoVar3) {
            ((ActionMenuView) eaoVar3).setPresenter(esfVar3);
        }
        ActionMenuView actionMenuView = (ActionMenuView) eaoVar3;
        this.f72g = actionMenuView;
        actionMenuView.setBackground(null);
        addView(this.f72g, layoutParams);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public int getAnimatedVisibility() {
        return this.t != null ? this.n.f16011b : getVisibility();
    }

    public int getContentHeight() {
        return this.l;
    }

    public CharSequence getSubtitle() {
        return this.f71f;
    }

    public CharSequence getTitle() {
        return this.o;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, acs.j, R.attr.actionBarStyle, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(13, 0));
        obtainStyledAttributes.recycle();
        esf esfVar = this.k;
        if (esfVar != null) {
            Configuration configuration2 = esfVar.z.getResources().getConfiguration();
            int i = configuration2.screenWidthDp;
            int i2 = configuration2.screenHeightDp;
            esfVar.j = (configuration2.smallestScreenWidthDp > 600 || i > 600 || (i > 960 && i2 > 720) || (i > 720 && i2 > 960)) ? 5 : (i >= 500 || (i > 640 && i2 > 480) || (i > 480 && i2 > 640)) ? 4 : i >= 360 ? 3 : 2;
            ftn ftnVar = esfVar.p;
            if (ftnVar != null) {
                ftnVar.am(true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        esf esfVar = this.k;
        if (esfVar != null) {
            esfVar.ah();
            csq csqVar = this.k.k;
            if (csqVar == null || !csqVar.n()) {
                return;
            }
            csqVar.f12458g.dismiss();
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f66a = false;
        }
        if (!this.f66a) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f66a = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.f66a = false;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2 = dnh.f14457a;
        boolean z3 = getLayoutDirection() == 1;
        int paddingRight = z3 ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        View view = this.i;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.i.getLayoutParams();
            int i5 = z3 ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i6 = z3 ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int i7 = z3 ? paddingRight - i5 : paddingRight + i5;
            int x = x(this.i, z3, i7, paddingTop, paddingTop2) + i7;
            paddingRight = z3 ? x - i6 : x + i6;
        }
        LinearLayout linearLayout = this.q;
        if (linearLayout != null && this.s == null && linearLayout.getVisibility() != 8) {
            paddingRight += x(this.q, z3, paddingRight, paddingTop, paddingTop2);
        }
        View view2 = this.s;
        if (view2 != null) {
            x(view2, z3, paddingRight, paddingTop, paddingTop2);
        }
        int paddingLeft = z3 ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        ActionMenuView actionMenuView = this.f72g;
        if (actionMenuView != null) {
            x(actionMenuView, !z3, paddingLeft, paddingTop, paddingTop2);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int i3 = C.ENCODING_PCM_32BIT;
        if (mode != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_width=\"match_parent\" (or fill_parent)"));
        }
        if (View.MeasureSpec.getMode(i2) == 0) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_height=\"wrap_content\""));
        }
        int size = View.MeasureSpec.getSize(i);
        int i4 = this.l;
        if (i4 <= 0) {
            i4 = View.MeasureSpec.getSize(i2);
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int i5 = i4 - paddingBottom;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE);
        View view = this.i;
        if (view != null) {
            int v = v(view, paddingLeft, makeMeasureSpec);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.i.getLayoutParams();
            paddingLeft = v - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.f72g;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = v(this.f72g, paddingLeft, makeMeasureSpec);
        }
        LinearLayout linearLayout = this.q;
        if (linearLayout != null && this.s == null) {
            if (this.j) {
                this.q.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                int measuredWidth = this.q.getMeasuredWidth();
                boolean z = measuredWidth <= paddingLeft;
                if (z) {
                    paddingLeft -= measuredWidth;
                }
                this.q.setVisibility(z ? 0 : 8);
            } else {
                paddingLeft = v(linearLayout, paddingLeft, makeMeasureSpec);
            }
        }
        View view2 = this.s;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i6 = layoutParams.width;
            int i7 = i6 != -2 ? C.ENCODING_PCM_32BIT : Integer.MIN_VALUE;
            if (i6 >= 0) {
                paddingLeft = Math.min(i6, paddingLeft);
            }
            int i8 = layoutParams.height;
            if (i8 == -2) {
                i3 = Integer.MIN_VALUE;
            }
            if (i8 >= 0) {
                i5 = Math.min(i8, i5);
            }
            this.s.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i7), View.MeasureSpec.makeMeasureSpec(i5, i3));
        }
        if (this.l > 0) {
            setMeasuredDimension(size, i4);
            return;
        }
        int childCount = getChildCount();
        int i9 = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            int measuredHeight = getChildAt(i10).getMeasuredHeight() + paddingBottom;
            if (measuredHeight > i9) {
                i9 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i9);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f69d = false;
        }
        if (!this.f69d) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f69d = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.f69d = false;
        return true;
    }

    public void setContentHeight(int i) {
        this.l = i;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.s;
        if (view2 != null) {
            removeView(view2);
        }
        this.s = view;
        if (view != null && (linearLayout = this.q) != null) {
            removeView(linearLayout);
            this.q = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f71f = charSequence;
        z();
    }

    public void setTitle(CharSequence charSequence) {
        this.o = charSequence;
        z();
        goi.r(this, charSequence);
    }

    public void setTitleOptional(boolean z) {
        if (z != this.j) {
            requestLayout();
        }
        this.j = z;
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.View
    /* renamed from: y, reason: merged with bridge method [inline-methods] */
    public final void setVisibility(int i) {
        if (i != getVisibility()) {
            elx elxVar = this.t;
            if (elxVar != null) {
                elxVar.e();
            }
            super.setVisibility(i);
        }
    }

    public final void z() {
        if (this.q == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.q = linearLayout;
            this.f70e = (TextView) linearLayout.findViewById(R.id.action_bar_title);
            this.f67b = (TextView) this.q.findViewById(R.id.action_bar_subtitle);
            int i = this.r;
            if (i != 0) {
                this.f70e.setTextAppearance(getContext(), i);
            }
            int i2 = this.m;
            if (i2 != 0) {
                this.f67b.setTextAppearance(getContext(), i2);
            }
        }
        this.f70e.setText(this.o);
        this.f67b.setText(this.f71f);
        boolean isEmpty = TextUtils.isEmpty(this.o);
        boolean isEmpty2 = TextUtils.isEmpty(this.f71f);
        this.f67b.setVisibility(!isEmpty2 ? 0 : 8);
        this.q.setVisibility((isEmpty && isEmpty2) ? 8 : 0);
        if (this.q.getParent() == null) {
            addView(this.q);
        }
    }
}
