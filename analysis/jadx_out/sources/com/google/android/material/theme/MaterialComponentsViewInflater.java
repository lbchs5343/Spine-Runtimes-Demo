package com.google.android.material.theme;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.radiobutton.MaterialRadioButton;
import com.google.android.material.textview.MaterialTextView;
import g.aap;
import g.ajz;
import g.bbj;
import g.dzp;
import g.faa;
import g.fqn;
import g.gyl;

/* loaded from: classes3.dex */
public class MaterialComponentsViewInflater extends gyl {
    @Override // g.gyl
    public final ajz a(Context context, AttributeSet attributeSet) {
        return new MaterialRadioButton(context, attributeSet);
    }

    @Override // g.gyl
    public final AppCompatTextView b(Context context, AttributeSet attributeSet) {
        return new MaterialTextView(context, attributeSet);
    }

    @Override // g.gyl
    public final dzp c(Context context, AttributeSet attributeSet) {
        return new faa(context, attributeSet);
    }

    @Override // g.gyl
    public final bbj d(Context context, AttributeSet attributeSet) {
        return new MaterialButton(context, attributeSet);
    }

    @Override // g.gyl
    public final fqn e(Context context, AttributeSet attributeSet) {
        return new aap(context, attributeSet);
    }
}
