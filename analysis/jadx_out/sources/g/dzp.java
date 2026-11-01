package g;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AutoCompleteTextView;

/* loaded from: classes.dex */
public class dzp extends AutoCompleteTextView implements b {

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f15144d = {R.attr.popupBackground};

    /* renamed from: e, reason: collision with root package name */
    public final fdy f15145e;

    /* renamed from: f, reason: collision with root package name */
    public final dum f15146f;

    /* renamed from: g, reason: collision with root package name */
    public final cic f15147g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dzp(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, cn.trinea.android.developertools.R.attr.autoCompleteTextViewStyle);
        bhh.b(context);
        fgt.i(getContext(), this);
        dzh j = dzh.j(getContext(), attributeSet, f15144d, cn.trinea.android.developertools.R.attr.autoCompleteTextViewStyle);
        if (((TypedArray) j.f15121f).hasValue(0)) {
            setDropDownBackgroundDrawable(j.o(0));
        }
        j.af();
        dum dumVar = new dum(this);
        this.f15146f = dumVar;
        dumVar.h(attributeSet, cn.trinea.android.developertools.R.attr.autoCompleteTextViewStyle);
        cic cicVar = new cic(this);
        this.f15147g = cicVar;
        cicVar.v(attributeSet, cn.trinea.android.developertools.R.attr.autoCompleteTextViewStyle);
        cicVar.y();
        fdy fdyVar = new fdy(this, 4);
        this.f15145e = fdyVar;
        fdyVar.u(attributeSet, cn.trinea.android.developertools.R.attr.autoCompleteTextViewStyle);
        KeyListener keyListener = getKeyListener();
        if (keyListener instanceof NumberKeyListener) {
            return;
        }
        boolean isFocusable = super.isFocusable();
        boolean isClickable = super.isClickable();
        boolean isLongClickable = super.isLongClickable();
        int inputType = super.getInputType();
        KeyListener g2 = fdyVar.g(keyListener);
        if (g2 == keyListener) {
            return;
        }
        super.setKeyListener(g2);
        super.setRawInputType(inputType);
        super.setFocusable(isFocusable);
        super.setClickable(isClickable);
        super.setLongClickable(isLongClickable);
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        dum dumVar = this.f15146f;
        if (dumVar != null) {
            dumVar.j();
        }
        cic cicVar = this.f15147g;
        if (cicVar != null) {
            cicVar.y();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return bff.af(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        dum dumVar = this.f15146f;
        if (dumVar != null) {
            return dumVar.m();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        dum dumVar = this.f15146f;
        if (dumVar != null) {
            return dumVar.n();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f15147g.r();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f15147g.t();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        byh.y(editorInfo, onCreateInputConnection, this);
        return this.f15145e.n(onCreateInputConnection);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        dum dumVar = this.f15146f;
        if (dumVar != null) {
            dumVar.i();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        dum dumVar = this.f15146f;
        if (dumVar != null) {
            dumVar.k(i);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        cic cicVar = this.f15147g;
        if (cicVar != null) {
            cicVar.y();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        cic cicVar = this.f15147g;
        if (cicVar != null) {
            cicVar.y();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(bff.ae(callback, this));
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(fso.ai(getContext(), i));
    }

    public void setEmojiCompatEnabled(boolean z) {
        this.f15145e.z(z);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f15145e.g(keyListener));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        dum dumVar = this.f15146f;
        if (dumVar != null) {
            dumVar.g(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        dum dumVar = this.f15146f;
        if (dumVar != null) {
            dumVar.l(mode);
        }
    }

    @Override // g.b
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        cic cicVar = this.f15147g;
        cicVar.s(colorStateList);
        cicVar.y();
    }

    @Override // g.b
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        cic cicVar = this.f15147g;
        cicVar.w(mode);
        cicVar.y();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        cic cicVar = this.f15147g;
        if (cicVar != null) {
            cicVar.aa(context, i);
        }
    }
}
