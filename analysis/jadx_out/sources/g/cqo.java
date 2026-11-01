package g;

import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.view.Window;

/* loaded from: classes.dex */
public class cqo extends DialogFragment {
    @Override // android.app.DialogFragment
    public final void dismiss() {
        if (isAdded()) {
            super.dismiss();
        }
    }

    @Override // android.app.DialogFragment
    public final void dismissAllowingStateLoss() {
        if (isAdded()) {
            super.dismissAllowingStateLoss();
        }
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || dialog.getWindow() == null) {
            return;
        }
        int[] ag = fso.ag(getActivity());
        Window window = dialog.getWindow();
        int i = ag[0];
        window.setLayout((int) (i * (i < ag[1] ? 0.95d : 0.9d)), -2);
    }

    @Override // android.app.DialogFragment
    public final int show(FragmentTransaction fragmentTransaction, String str) {
        if (isAdded()) {
            return -1;
        }
        return super.show(fragmentTransaction, str);
    }

    @Override // android.app.DialogFragment
    public final void show(FragmentManager fragmentManager, String str) {
        if (isAdded()) {
            return;
        }
        super.show(fragmentManager, str);
    }
}
