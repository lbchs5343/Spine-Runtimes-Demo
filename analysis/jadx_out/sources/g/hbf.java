package g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class hbf extends CheckedTextView implements b {

    /* renamed from: a, reason: collision with root package name */
    public final cic f19164a;

    /* renamed from: b, reason: collision with root package name */
    public C0258do f19165b;

    /* renamed from: c, reason: collision with root package name */
    public final cr f19166c;

    /* renamed from: d, reason: collision with root package name */
    public final dum f19167d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0085 A[Catch: all -> 0x0064, TryCatch #1 {all -> 0x0064, blocks: (B:3:0x004b, B:5:0x0052, B:8:0x0058, B:9:0x007e, B:11:0x0085, B:12:0x008c, B:14:0x0093, B:21:0x0067, B:23:0x006d, B:25:0x0073), top: B:2:0x004b }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0093 A[Catch: all -> 0x0064, TRY_LEAVE, TryCatch #1 {all -> 0x0064, blocks: (B:3:0x004b, B:5:0x0052, B:8:0x0058, B:9:0x007e, B:11:0x0085, B:12:0x008c, B:14:0x0093, B:21:0x0067, B:23:0x006d, B:25:0x0073), top: B:2:0x004b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public hbf(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.checkedTextViewStyle);
        int resourceId;
        int resourceId2;
        bhh.b(context);
        fgt.i(getContext(), this);
        cic cicVar = new cic(this);
        this.f19164a = cicVar;
        cicVar.v(attributeSet, R.attr.checkedTextViewStyle);
        cicVar.y();
        dum dumVar = new dum(this);
        this.f19167d = dumVar;
        dumVar.h(attributeSet, R.attr.checkedTextViewStyle);
        this.f19166c = new cr(this);
        Context context2 = getContext();
        int[] iArr = acs.h;
        dzh j = dzh.j(context2, attributeSet, iArr, R.attr.checkedTextViewStyle);
        TypedArray typedArray = (TypedArray) j.f15121f;
        goi.x(this, getContext(), iArr, attributeSet, (TypedArray) j.f15121f, R.attr.checkedTextViewStyle);
        try {
            if (typedArray.hasValue(1) && (resourceId2 = typedArray.getResourceId(1, 0)) != 0) {
                try {
                    setCheckMarkDrawable(fso.ai(getContext(), resourceId2));
                } catch (Resources.NotFoundException unused) {
                }
                if (typedArray.hasValue(2)) {
                    setCheckMarkTintList(j.aa(2));
                }
                if (typedArray.hasValue(3)) {
                    setCheckMarkTintMode(edd.f(typedArray.getInt(3, -1), null));
                }
                j.af();
                getEmojiTextViewHelper().e(attributeSet, R.attr.checkedTextViewStyle);
            }
            if (typedArray.hasValue(0) && (resourceId = typedArray.getResourceId(0, 0)) != 0) {
                setCheckMarkDrawable(fso.ai(getContext(), resourceId));
            }
            if (typedArray.hasValue(2)) {
            }
            if (typedArray.hasValue(3)) {
            }
            j.af();
            getEmojiTextViewHelper().e(attributeSet, R.attr.checkedTextViewStyle);
        } catch (Throwable th) {
            j.af();
            throw th;
        }
    }

    private C0258do getEmojiTextViewHelper() {
        if (this.f19165b == null) {
            this.f19165b = new C0258do(this);
        }
        return this.f19165b;
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        cic cicVar = this.f19164a;
        if (cicVar != null) {
            cicVar.y();
        }
        dum dumVar = this.f19167d;
        if (dumVar != null) {
            dumVar.j();
        }
        cr crVar = this.f19166c;
        if (crVar != null) {
            crVar.i();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return bff.af(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        dum dumVar = this.f19167d;
        if (dumVar != null) {
            return dumVar.m();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        dum dumVar = this.f19167d;
        if (dumVar != null) {
            return dumVar.n();
        }
        return null;
    }

    public ColorStateList getSupportCheckMarkTintList() {
        cr crVar = this.f19166c;
        if (crVar != null) {
            return (ColorStateList) crVar.f13356c;
        }
        return null;
    }

    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        cr crVar = this.f19166c;
        if (crVar != null) {
            return (PorterDuff.Mode) crVar.f13358e;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f19164a.r();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f19164a.t();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        byh.y(editorInfo, onCreateInputConnection, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().f(z);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        dum dumVar = this.f19167d;
        if (dumVar != null) {
            dumVar.i();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        dum dumVar = this.f19167d;
        if (dumVar != null) {
            dumVar.k(i);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(fso.ai(getContext(), i));
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        cr crVar = this.f19166c;
        if (crVar != null) {
            if (crVar.f13355b) {
                crVar.f13355b = false;
            } else {
                crVar.f13355b = true;
                crVar.i();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        cic cicVar = this.f19164a;
        if (cicVar != null) {
            cicVar.y();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        cic cicVar = this.f19164a;
        if (cicVar != null) {
            cicVar.y();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(bff.ae(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().c(z);
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        dum dumVar = this.f19167d;
        if (dumVar != null) {
            dumVar.g(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        dum dumVar = this.f19167d;
        if (dumVar != null) {
            dumVar.l(mode);
        }
    }

    public void setSupportCheckMarkTintList(ColorStateList colorStateList) {
        cr crVar = this.f19166c;
        if (crVar != null) {
            crVar.f13356c = colorStateList;
            crVar.f13359f = true;
            crVar.i();
        }
    }

    public void setSupportCheckMarkTintMode(PorterDuff.Mode mode) {
        cr crVar = this.f19166c;
        if (crVar != null) {
            crVar.f13358e = mode;
            crVar.f13354a = true;
            crVar.i();
        }
    }

    @Override // g.b
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        cic cicVar = this.f19164a;
        cicVar.s(colorStateList);
        cicVar.y();
    }

    @Override // g.b
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        cic cicVar = this.f19164a;
        cicVar.w(mode);
        cicVar.y();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        cic cicVar = this.f19164a;
        if (cicVar != null) {
            cicVar.aa(context, i);
        }
    }
}
