package g;

import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes3.dex */
public final class is {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zq f19442a;

    public is(zq zqVar) {
        this.f19442a = zqVar;
    }

    public final void b(TextInputLayout textInputLayout) {
        zq zqVar = this.f19442a;
        dse dseVar = zqVar.f20410e;
        if (zqVar.l == textInputLayout.getEditText()) {
            return;
        }
        EditText editText = zqVar.l;
        if (editText != null) {
            editText.removeTextChangedListener(dseVar);
            if (zqVar.l.getOnFocusChangeListener() == zqVar.ag().k()) {
                zqVar.l.setOnFocusChangeListener(null);
            }
        }
        EditText editText2 = textInputLayout.getEditText();
        zqVar.l = editText2;
        if (editText2 != null) {
            editText2.addTextChangedListener(dseVar);
        }
        zqVar.ag().q(zqVar.l);
        zqVar.ah(zqVar.ag());
    }
}
