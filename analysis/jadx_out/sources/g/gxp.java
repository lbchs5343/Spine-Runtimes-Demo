package g;

import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import cn.trinea.android.developertools.R;

/* loaded from: classes3.dex */
public final class gxp extends bhb {

    /* renamed from: a, reason: collision with root package name */
    public final int f18965a;

    /* renamed from: b, reason: collision with root package name */
    public EditText f18966b;

    /* renamed from: c, reason: collision with root package name */
    public final ld f18967c;

    public gxp(zq zqVar, int i) {
        super(zqVar);
        this.f18965a = R.drawable.design_password_eye;
        this.f18967c = new ld(7, this);
        if (i != 0) {
            this.f18965a = i;
        }
    }

    @Override // g.bhb
    public final boolean aa() {
        return true;
    }

    @Override // g.bhb
    public final boolean ad() {
        EditText editText = this.f18966b;
        return !(editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod));
    }

    @Override // g.bhb
    public final void af() {
        ah();
    }

    @Override // g.bhb
    public final int j() {
        return this.f18965a;
    }

    @Override // g.bhb
    public final View.OnClickListener n() {
        return this.f18967c;
    }

    @Override // g.bhb
    public final void o() {
        EditText editText = this.f18966b;
        if (editText != null) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }

    @Override // g.bhb
    public final void q(EditText editText) {
        this.f18966b = editText;
        ah();
    }

    @Override // g.bhb
    public final int s() {
        return R.string.password_toggle_content_description;
    }

    @Override // g.bhb
    public final void u() {
        EditText editText = this.f18966b;
        if (editText != null) {
            if (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224) {
                this.f18966b.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
        }
    }
}
