package g;

import android.content.DialogInterface;
import android.widget.Button;
import android.widget.EditText;
import cn.trinea.android.developertools.R;

/* loaded from: classes3.dex */
public final class fdh implements DialogInterface.OnShowListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ade f16605a;

    public fdh(ade adeVar) {
        this.f16605a = adeVar;
    }

    @Override // android.content.DialogInterface.OnShowListener
    public final void onShow(DialogInterface dialogInterface) {
        fpl fplVar = (fpl) dialogInterface;
        EditText editText = (EditText) fplVar.findViewById(R.id.edit_text);
        if (editText == null) {
            throw new NullPointerException("Could not find an edit text in the dialog");
        }
        get getVar = new get(11, fplVar);
        Button l = fplVar.l(-2);
        if (l != null) {
            l.setOnClickListener(getVar);
        }
        Button l2 = fplVar.l(-1);
        if (l2 != null) {
            l2.setEnabled(false);
            l2.setOnClickListener(new gwc(this, editText, fplVar, 2));
        }
        editText.addTextChangedListener(new fif(this, l2));
    }
}
