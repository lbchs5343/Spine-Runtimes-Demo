package g;

import android.content.Context;
import android.content.DialogInterface;

/* loaded from: classes.dex */
public final class gmq implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ fjv f18409a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ dqe f18410b;

    public gmq(dqe dqeVar, fjv fjvVar) {
        this.f18410b = dqeVar;
        this.f18409a = fjvVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Context context;
        context = this.f18410b.x;
        cro.az(context, this.f18409a.getVersionCode(), "update_ignore_version");
    }
}
