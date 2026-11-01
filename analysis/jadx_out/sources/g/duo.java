package g;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.DragEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public class duo extends EditText implements col, b {

    /* renamed from: c, reason: collision with root package name */
    public final afv f14850c;

    /* renamed from: d, reason: collision with root package name */
    public final ys f14851d;

    /* renamed from: e, reason: collision with root package name */
    public final fdy f14852e;

    /* renamed from: f, reason: collision with root package name */
    public final dum f14853f;

    /* renamed from: g, reason: collision with root package name */
    public final cic f14854g;
    public ezs h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public duo(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.editTextStyle);
        bhh.b(context);
        fgt.i(getContext(), this);
        dum dumVar = new dum(this);
        this.f14853f = dumVar;
        dumVar.h(attributeSet, R.attr.editTextStyle);
        cic cicVar = new cic(this);
        this.f14854g = cicVar;
        cicVar.v(attributeSet, R.attr.editTextStyle);
        cicVar.y();
        afv afvVar = new afv();
        afvVar.f10161a = this;
        this.f14850c = afvVar;
        this.f14851d = new ys();
        fdy fdyVar = new fdy(this, 4);
        this.f14852e = fdyVar;
        fdyVar.u(attributeSet, R.attr.editTextStyle);
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

    private ezs getSuperCaller() {
        if (this.h == null) {
            this.h = new ezs(this);
        }
        return this.h;
    }

    @Override // g.col
    public final dui _j(dui duiVar) {
        this.f14851d.getClass();
        return ys.a(this, duiVar);
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        dum dumVar = this.f14853f;
        if (dumVar != null) {
            dumVar.j();
        }
        cic cicVar = this.f14854g;
        if (cicVar != null) {
            cicVar.y();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return bff.af(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        dum dumVar = this.f14853f;
        if (dumVar != null) {
            return dumVar.m();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        dum dumVar = this.f14853f;
        if (dumVar != null) {
            return dumVar.n();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f14854g.r();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f14854g.t();
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        return Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        afv afvVar;
        if (Build.VERSION.SDK_INT >= 28 || (afvVar = this.f14850c) == null) {
            return super.getTextClassifier();
        }
        TextClassifier textClassifier = afvVar.f10162b;
        return textClassifier == null ? bhx.a(afvVar.f10161a) : textClassifier;
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        int i;
        String[] h;
        InputConnection dazVar;
        String[] strArr;
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f14854g.getClass();
        cic.n(editorInfo, onCreateInputConnection, this);
        byh.y(editorInfo, onCreateInputConnection, this);
        if (onCreateInputConnection != null && (i = Build.VERSION.SDK_INT) <= 30 && (h = goi.h(this)) != null) {
            if (i >= 25) {
                editorInfo.contentMimeTypes = h;
            } else {
                if (editorInfo.extras == null) {
                    editorInfo.extras = new Bundle();
                }
                editorInfo.extras.putStringArray("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES", h);
                editorInfo.extras.putStringArray("android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES", h);
            }
            aoi aoiVar = new aoi(11, this);
            if (i >= 25) {
                dazVar = new dma(onCreateInputConnection, aoiVar);
            } else {
                String[] strArr2 = afo.ad;
                if (i >= 25) {
                    strArr = editorInfo.contentMimeTypes;
                    if (strArr != null) {
                        strArr2 = strArr;
                    }
                } else {
                    Bundle bundle = editorInfo.extras;
                    if (bundle != null) {
                        String[] stringArray = bundle.getStringArray("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES");
                        if (stringArray == null) {
                            stringArray = editorInfo.extras.getStringArray("android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES");
                        }
                        if (stringArray != null) {
                            strArr2 = stringArray;
                        }
                    }
                }
                if (strArr2.length != 0) {
                    dazVar = new daz(onCreateInputConnection, aoiVar);
                }
            }
            onCreateInputConnection = dazVar;
        }
        return this.f14852e.n(onCreateInputConnection);
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        int i = Build.VERSION.SDK_INT;
        if (i < 30 || i >= 33) {
            return;
        }
        ((InputMethodManager) getContext().getSystemService("input_method")).isActive(this);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onDragEvent(DragEvent dragEvent) {
        Activity activity;
        int i = Build.VERSION.SDK_INT;
        boolean z = false;
        if (i < 31 && i >= 24 && dragEvent.getLocalState() == null && goi.h(this) != null) {
            Context context = getContext();
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    activity = null;
                    break;
                }
                if (context instanceof Activity) {
                    activity = (Activity) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            }
            if (activity == null) {
                toString();
            } else if (dragEvent.getAction() != 1 && dragEvent.getAction() == 3) {
                z = ghy.a(dragEvent, this, activity);
            }
        }
        if (z) {
            return true;
        }
        return super.onDragEvent(dragEvent);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public final boolean onTextContextMenuItem(int i) {
        atd atdVar;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31 || goi.h(this) == null || !(i == 16908322 || i == 16908337)) {
            return super.onTextContextMenuItem(i);
        }
        ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
        ClipData primaryClip = clipboardManager == null ? null : clipboardManager.getPrimaryClip();
        if (primaryClip != null && primaryClip.getItemCount() > 0) {
            if (i2 >= 31) {
                atdVar = new emr(primaryClip, 1);
            } else {
                euf eufVar = new euf();
                eufVar.j = primaryClip;
                eufVar.f16168f = 1;
                atdVar = eufVar;
            }
            atdVar.a(i == 16908322 ? 0 : 1);
            goi.k(this, atdVar.build());
        }
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        dum dumVar = this.f14853f;
        if (dumVar != null) {
            dumVar.i();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        dum dumVar = this.f14853f;
        if (dumVar != null) {
            dumVar.k(i);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        cic cicVar = this.f14854g;
        if (cicVar != null) {
            cicVar.y();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        cic cicVar = this.f14854g;
        if (cicVar != null) {
            cicVar.y();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(bff.ae(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z) {
        this.f14852e.z(z);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f14852e.g(keyListener));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        dum dumVar = this.f14853f;
        if (dumVar != null) {
            dumVar.g(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        dum dumVar = this.f14853f;
        if (dumVar != null) {
            dumVar.l(mode);
        }
    }

    @Override // g.b
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        cic cicVar = this.f14854g;
        cicVar.s(colorStateList);
        cicVar.y();
    }

    @Override // g.b
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        cic cicVar = this.f14854g;
        cicVar.w(mode);
        cicVar.y();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        cic cicVar = this.f14854g;
        if (cicVar != null) {
            cicVar.aa(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        afv afvVar;
        if (Build.VERSION.SDK_INT >= 28 || (afvVar = this.f14850c) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            afvVar.f10162b = textClassifier;
        }
    }
}
