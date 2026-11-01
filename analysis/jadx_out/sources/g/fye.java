package g;

import android.app.Dialog;
import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;

/* loaded from: classes.dex */
public final class fye implements DialogInterface.OnCancelListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17630a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f17631b;

    public /* synthetic */ fye(int i, Object obj) {
        this.f17630a = i;
        this.f17631b = obj;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Dialog dialog;
        Dialog dialog2;
        switch (this.f17630a) {
            case 0:
                androidx.fragment.app.b bVar = (androidx.fragment.app.b) this.f17631b;
                dialog = bVar.mDialog;
                if (dialog != null) {
                    dialog2 = bVar.mDialog;
                    bVar.onCancel(dialog2);
                    break;
                }
                break;
            case 1:
                ((gfk) this.f17631b).p();
                break;
            case 2:
                ((JsResult) this.f17631b).cancel();
                break;
            default:
                ((JsPromptResult) this.f17631b).cancel();
                break;
        }
    }
}
