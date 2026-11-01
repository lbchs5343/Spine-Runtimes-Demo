package g;

import android.content.Intent;
import android.text.Editable;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;

/* loaded from: classes3.dex */
public final /* synthetic */ class ld implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19582a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f19583b;

    public /* synthetic */ ld(int i, Object obj) {
        this.f19582a = i;
        this.f19583b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f19582a) {
            case 0:
                ((TextView) this.f19583b).callOnClick();
                return;
            case 1:
                fzk fzkVar = (fzk) this.f19583b;
                fzkVar.getClass();
                fgj e2 = fgj.e();
                ctx ctxVar = fzkVar.l;
                e2.f(ctxVar, new Intent(ctxVar, (Class<?>) a.b.b.class));
                return;
            case 2:
                ((efx) this.f19583b).bo(true);
                return;
            case 3:
                azm azmVar = (azm) this.f19583b;
                EditText editText = azmVar.f11125g;
                if (editText == null) {
                    return;
                }
                Editable text = editText.getText();
                if (text != null) {
                    text.clear();
                }
                azmVar.ah();
                return;
            case 4:
                ((chp) this.f19583b).al();
                return;
            case 5:
                axs axsVar = ((ka) this.f19583b).l;
                if (axsVar.f11040g) {
                    axsVar.c();
                    return;
                }
                return;
            case 6:
                ((gas) this.f19583b).ah();
                throw null;
            case 7:
                gxp gxpVar = (gxp) this.f19583b;
                EditText editText2 = gxpVar.f18966b;
                if (editText2 == null) {
                    return;
                }
                int selectionEnd = editText2.getSelectionEnd();
                EditText editText3 = gxpVar.f18966b;
                if (editText3 == null || !(editText3.getTransformationMethod() instanceof PasswordTransformationMethod)) {
                    gxpVar.f18966b.setTransformationMethod(PasswordTransformationMethod.getInstance());
                } else {
                    gxpVar.f18966b.setTransformationMethod(null);
                }
                if (selectionEnd >= 0) {
                    gxpVar.f18966b.setSelection(selectionEnd);
                }
                gxpVar.ah();
                return;
            default:
                SwitchCompat switchCompat = (SwitchCompat) this.f19583b;
                if (switchCompat.isEnabled()) {
                    switchCompat.toggle();
                    switchCompat.callOnClick();
                    return;
                }
                return;
        }
    }
}
