package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import androidx.appcompat.widget.AppCompatTextView;
import com.bykv.vk.component.ttvideo.player.C;
import g.acs;
import g.dhl;
import g.di;
import g.ebq;
import g.far;
import g.ffb;
import g.ftn;
import g.gbu;
import g.pb;

/* loaded from: classes.dex */
public class ActionMenuItemView extends AppCompatTextView implements ebq, View.OnClickListener, di {

    /* renamed from: a, reason: collision with root package name */
    public boolean f43a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f44b;

    /* renamed from: c, reason: collision with root package name */
    public int f45c;

    /* renamed from: d, reason: collision with root package name */
    public Drawable f46d;

    /* renamed from: e, reason: collision with root package name */
    public final int f47e;

    /* renamed from: f, reason: collision with root package name */
    public dhl f48f;

    /* renamed from: g, reason: collision with root package name */
    public gbu f49g;
    public far h;
    public final int i;
    public CharSequence j;
    public pb k;

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        Resources resources = context.getResources();
        this.f44b = l();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, acs.x, 0, 0);
        this.i = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
        this.f47e = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f45c = -1;
        setSaveEnabled(false);
    }

    @Override // android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return Button.class.getName();
    }

    @Override // g.ebq
    public far getItemData() {
        return this.h;
    }

    public final boolean l() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int i2 = configuration.screenHeightDp;
        if (i < 480) {
            return (i >= 640 && i2 >= 480) || configuration.orientation == 2;
        }
        return true;
    }

    public final void m() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.j);
        if (this.f46d != null && ((this.h.f16488e & 4) != 4 || (!this.f44b && !this.f43a))) {
            z = false;
        }
        boolean z3 = z2 & z;
        setText(z3 ? this.j : null);
        CharSequence charSequence = this.h.y;
        if (TextUtils.isEmpty(charSequence)) {
            setContentDescription(z3 ? null : this.h.j);
        } else {
            setContentDescription(charSequence);
        }
        CharSequence charSequence2 = this.h.ae;
        if (TextUtils.isEmpty(charSequence2)) {
            ffb.ay(this, z3 ? null : this.h.j);
        } else {
            ffb.ay(this, charSequence2);
        }
    }

    @Override // g.di
    public final boolean n() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // g.di
    public final boolean o() {
        return !TextUtils.isEmpty(getText()) && this.h.getIcon() == null;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        dhl dhlVar = this.f48f;
        if (dhlVar != null) {
            dhlVar.d(this.h);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f44b = l();
        m();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        boolean isEmpty = TextUtils.isEmpty(getText());
        if (!isEmpty && (i3 = this.f45c) >= 0) {
            super.setPadding(i3, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int i4 = this.i;
        int min = mode == Integer.MIN_VALUE ? Math.min(size, i4) : i4;
        if (mode != 1073741824 && i4 > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, C.ENCODING_PCM_32BIT), i2);
        }
        if (!isEmpty || this.f46d == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f46d.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        gbu gbuVar;
        if (this.h.hasSubMenu() && (gbuVar = this.f49g) != null && gbuVar.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // g.ebq
    public final void p(far farVar) {
        this.h = farVar;
        setIcon(farVar.getIcon());
        setTitle(farVar.getTitleCondensed());
        setId(farVar.k);
        setVisibility(farVar.isVisible() ? 0 : 8);
        setEnabled(farVar.isEnabled());
        if (farVar.hasSubMenu() && this.f49g == null) {
            this.f49g = new gbu(this);
        }
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.f43a != z) {
            this.f43a = z;
            far farVar = this.h;
            if (farVar != null) {
                ftn ftnVar = farVar.f16489f;
                ftnVar.f17392c = true;
                ftnVar.am(true);
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f46d = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i = this.f47e;
            if (intrinsicWidth > i) {
                intrinsicHeight = (int) (intrinsicHeight * (i / intrinsicWidth));
                intrinsicWidth = i;
            }
            if (intrinsicHeight > i) {
                intrinsicWidth = (int) (intrinsicWidth * (i / intrinsicHeight));
            } else {
                i = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i);
        }
        setCompoundDrawables(drawable, null, null, null);
        m();
    }

    public void setItemInvoker(dhl dhlVar) {
        this.f48f = dhlVar;
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        this.f45c = i;
        super.setPadding(i, i2, i3, i4);
    }

    public void setPopupCallback(pb pbVar) {
        this.k = pbVar;
    }

    public void setTitle(CharSequence charSequence) {
        this.j = charSequence;
        m();
    }
}
