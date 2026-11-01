package g;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;

/* loaded from: classes3.dex */
public class fk extends androidx.fragment.app.b {

    /* renamed from: g, reason: collision with root package name */
    public AlertDialog f16907g;
    public Dialog h;
    public DialogInterface.OnCancelListener i;

    @Override // androidx.fragment.app.b, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.i;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.b
    public final Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = this.h;
        if (dialog != null) {
            return dialog;
        }
        setShowsDialog(false);
        if (this.f16907g == null) {
            Context context = getContext();
            ckd.k(context);
            this.f16907g = new AlertDialog.Builder(context).create();
        }
        return this.f16907g;
    }
}
