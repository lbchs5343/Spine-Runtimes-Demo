package g;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class fxu implements fps {

    /* renamed from: a, reason: collision with root package name */
    public CharSequence f17591a;

    /* renamed from: b, reason: collision with root package name */
    public Window.Callback f17592b;

    /* renamed from: c, reason: collision with root package name */
    public final Drawable f17593c;

    /* renamed from: d, reason: collision with root package name */
    public final int f17594d;

    /* renamed from: e, reason: collision with root package name */
    public Drawable f17595e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f17596f;

    /* renamed from: g, reason: collision with root package name */
    public Drawable f17597g;
    public final Toolbar h;
    public final Drawable i;
    public esf j;
    public CharSequence k;
    public int l;
    public final CharSequence m;
    public final View n;
    public final boolean o;

    public fxu(Toolbar toolbar, boolean z) {
        Drawable drawable;
        this.f17594d = 0;
        this.h = toolbar;
        this.f17591a = toolbar.getTitle();
        this.k = toolbar.getSubtitle();
        this.o = this.f17591a != null;
        this.i = toolbar.getNavigationIcon();
        dzh j = dzh.j(toolbar.getContext(), null, acs.j, R.attr.actionBarStyle);
        TypedArray typedArray = (TypedArray) j.f15121f;
        int i = 15;
        this.f17593c = j.o(15);
        if (z) {
            CharSequence text = typedArray.getText(27);
            if (!TextUtils.isEmpty(text)) {
                this.o = true;
                Toolbar toolbar2 = this.h;
                this.f17591a = text;
                if ((this.l & 8) != 0) {
                    toolbar2.setTitle(text);
                    if (this.o) {
                        goi.r(toolbar2.getRootView(), text);
                    }
                }
            }
            CharSequence text2 = typedArray.getText(25);
            if (!TextUtils.isEmpty(text2)) {
                r(text2);
            }
            Drawable o = j.o(20);
            if (o != null) {
                this.f17597g = o;
                p();
            }
            Drawable o2 = j.o(17);
            if (o2 != null) {
                this.f17595e = o2;
                p();
            }
            if (this.i == null && (drawable = this.f17593c) != null) {
                this.i = drawable;
                Toolbar toolbar3 = this.h;
                if ((this.l & 4) != 0) {
                    toolbar3.setNavigationIcon(drawable);
                } else {
                    toolbar3.setNavigationIcon((Drawable) null);
                }
            }
            q(typedArray.getInt(10, 0));
            int resourceId = typedArray.getResourceId(9, 0);
            if (resourceId != 0) {
                View inflate = LayoutInflater.from(toolbar.getContext()).inflate(resourceId, (ViewGroup) toolbar, false);
                View view = this.n;
                if (view != null && (this.l & 16) != 0) {
                    toolbar.removeView(view);
                }
                this.n = inflate;
                if (inflate != null && (this.l & 16) != 0) {
                    toolbar.addView(inflate);
                }
                q(this.l | 16);
            }
            int layoutDimension = typedArray.getLayoutDimension(13, 0);
            if (layoutDimension > 0) {
                ViewGroup.LayoutParams layoutParams = toolbar.getLayoutParams();
                layoutParams.height = layoutDimension;
                toolbar.setLayoutParams(layoutParams);
            }
            int dimensionPixelOffset = typedArray.getDimensionPixelOffset(7, -1);
            int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(3, -1);
            if (dimensionPixelOffset >= 0 || dimensionPixelOffset2 >= 0) {
                int max = Math.max(dimensionPixelOffset, 0);
                int max2 = Math.max(dimensionPixelOffset2, 0);
                toolbar.ba();
                toolbar.f119e.i(max, max2);
            }
            int resourceId2 = typedArray.getResourceId(28, 0);
            if (resourceId2 != 0) {
                Context context = toolbar.getContext();
                toolbar.q = resourceId2;
                AppCompatTextView appCompatTextView = toolbar.ah;
                if (appCompatTextView != null) {
                    appCompatTextView.setTextAppearance(context, resourceId2);
                }
            }
            int resourceId3 = typedArray.getResourceId(26, 0);
            if (resourceId3 != 0) {
                Context context2 = toolbar.getContext();
                toolbar.ar = resourceId3;
                AppCompatTextView appCompatTextView2 = toolbar.p;
                if (appCompatTextView2 != null) {
                    appCompatTextView2.setTextAppearance(context2, resourceId3);
                }
            }
            int resourceId4 = typedArray.getResourceId(22, 0);
            if (resourceId4 != 0) {
                toolbar.setPopupTheme(resourceId4);
            }
        } else {
            if (toolbar.getNavigationIcon() != null) {
                this.f17593c = toolbar.getNavigationIcon();
            } else {
                i = 11;
            }
            this.l = i;
        }
        j.af();
        if (R.string.abc_action_bar_up_description != this.f17594d) {
            this.f17594d = R.string.abc_action_bar_up_description;
            if (TextUtils.isEmpty(toolbar.getNavigationContentDescription())) {
                int i2 = this.f17594d;
                this.m = i2 != 0 ? toolbar.getContext().getString(i2) : null;
                s();
            }
        }
        this.m = toolbar.getNavigationContentDescription();
        toolbar.setNavigationOnClickListener(new anh(this));
    }

    public final void p() {
        Drawable drawable;
        int i = this.l;
        if ((i & 2) == 0) {
            drawable = null;
        } else if ((i & 1) != 0) {
            drawable = this.f17597g;
            if (drawable == null) {
                drawable = this.f17595e;
            }
        } else {
            drawable = this.f17595e;
        }
        this.h.setLogo(drawable);
    }

    public final void q(int i) {
        View view;
        int i2 = this.l ^ i;
        this.l = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    s();
                }
                int i3 = this.l & 4;
                Toolbar toolbar = this.h;
                if (i3 != 0) {
                    Drawable drawable = this.i;
                    if (drawable == null) {
                        drawable = this.f17593c;
                    }
                    toolbar.setNavigationIcon(drawable);
                } else {
                    toolbar.setNavigationIcon((Drawable) null);
                }
            }
            if ((i2 & 3) != 0) {
                p();
            }
            int i4 = i2 & 8;
            Toolbar toolbar2 = this.h;
            if (i4 != 0) {
                if ((i & 8) != 0) {
                    toolbar2.setTitle(this.f17591a);
                    toolbar2.setSubtitle(this.k);
                } else {
                    toolbar2.setTitle((CharSequence) null);
                    toolbar2.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) == 0 || (view = this.n) == null) {
                return;
            }
            if ((i & 16) != 0) {
                toolbar2.addView(view);
            } else {
                toolbar2.removeView(view);
            }
        }
    }

    public final void r(CharSequence charSequence) {
        this.k = charSequence;
        if ((this.l & 8) != 0) {
            this.h.setSubtitle(charSequence);
        }
    }

    public final void s() {
        if ((this.l & 4) != 0) {
            boolean isEmpty = TextUtils.isEmpty(this.m);
            Toolbar toolbar = this.h;
            if (isEmpty) {
                toolbar.setNavigationContentDescription(this.f17594d);
            } else {
                toolbar.setNavigationContentDescription(this.m);
            }
        }
    }
}
