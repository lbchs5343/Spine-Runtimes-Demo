package g;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import androidx.fragment.app.Fragment;

/* loaded from: classes3.dex */
public final class du implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14809a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f14810b;

    public /* synthetic */ du(int i, Object obj) {
        this.f14809a = i;
        this.f14810b = obj;
    }

    private final void c(DialogInterface dialogInterface) {
        synchronized (eib.class) {
            ((eib) this.f14810b).ay = false;
        }
    }

    private final void d(DialogInterface dialogInterface) {
        synchronized (guy.class) {
            ((guy) this.f14810b).l = false;
        }
    }

    private final void e(DialogInterface dialogInterface) {
        synchronized (eib.class) {
            ((baq) this.f14810b).q = false;
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Fragment bc;
        Dialog dialog;
        Dialog dialog2;
        Context context;
        switch (this.f14809a) {
            case 0:
                eso esoVar = (eso) this.f14810b;
                if (esoVar.allowMultiple || (bc = esoVar.getSupportFragmentManager().bc("filepicker_fragment")) == null || !(bc instanceof cuz)) {
                    return;
                }
                ((cuz) bc).ak();
                return;
            case 1:
                c(dialogInterface);
                return;
            case 2:
                DialogInterface.OnDismissListener onDismissListener = (DialogInterface.OnDismissListener) this.f14810b;
                if (onDismissListener != null) {
                    onDismissListener.onDismiss(dialogInterface);
                    return;
                }
                return;
            case 3:
                d(dialogInterface);
                return;
            case 4:
                androidx.fragment.app.b bVar = (androidx.fragment.app.b) this.f14810b;
                dialog = bVar.mDialog;
                if (dialog != null) {
                    dialog2 = bVar.mDialog;
                    bVar.onDismiss(dialog2);
                    return;
                }
                return;
            case 5:
                e(dialogInterface);
                return;
            case 6:
                context = ((c.b.b) this.f14810b).context;
                byh.ad(context, "op_shortcuted", true);
                return;
            default:
                synchronized (eib.class) {
                    ((c.a.a) this.f14810b).f376f = false;
                }
                return;
        }
    }
}
