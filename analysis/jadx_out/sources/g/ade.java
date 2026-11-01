package g;

import android.app.Dialog;
import android.os.Bundle;
import cn.trinea.android.developertools.R;

/* loaded from: classes3.dex */
public abstract class ade extends androidx.fragment.app.b {

    /* renamed from: g, reason: collision with root package name */
    public cuz f10032g = null;

    public abstract boolean h(String str);

    @Override // androidx.fragment.app.b
    public final Dialog onCreateDialog(Bundle bundle) {
        gqc gqcVar = new gqc(getActivity());
        die dieVar = (die) gqcVar.z;
        dieVar.u = null;
        dieVar.n = R.layout.nnf_dialog_folder_name;
        gqcVar.am(R.string.nnf_new_folder);
        gqcVar.x(R.string.alert_dialog_cancel, null);
        gqcVar.ay(R.string.alert_dialog_ok, null);
        fpl r = gqcVar.r();
        r.setOnShowListener(new fdh(this));
        return r;
    }
}
