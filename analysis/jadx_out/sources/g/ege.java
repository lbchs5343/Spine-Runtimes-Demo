package g;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.os.Bundle;

/* loaded from: classes3.dex */
public class ege extends DialogFragment {

    /* renamed from: a, reason: collision with root package name */
    public AlertDialog f15476a;

    /* renamed from: b, reason: collision with root package name */
    public Dialog f15477b;

    /* renamed from: c, reason: collision with root package name */
    public DialogInterface.OnCancelListener f15478c;

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f15478c;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = this.f15477b;
        if (dialog != null) {
            return dialog;
        }
        setShowsDialog(false);
        if (this.f15476a == null) {
            Activity activity = getActivity();
            ckd.k(activity);
            this.f15476a = new AlertDialog.Builder(activity).create();
        }
        return this.f15476a;
    }
}
