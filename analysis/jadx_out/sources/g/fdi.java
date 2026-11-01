package g;

import android.content.DialogInterface;

/* loaded from: classes.dex */
public final class fdi implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16606a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ edx f16607b;

    public /* synthetic */ fdi(edx edxVar, int i) {
        this.f16606a = i;
        this.f16607b = edxVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (this.f16606a) {
            case 0:
                edx edxVar = this.f16607b;
                fyt.d(edxVar.bc, "android.permission.SYSTEM_ALERT_WINDOW");
                edxVar.z();
                break;
            default:
                fyt.g(this.f16607b, "android.settings.action.MANAGE_OVERLAY_PERMISSION", new cc(3, this));
                break;
        }
    }
}
