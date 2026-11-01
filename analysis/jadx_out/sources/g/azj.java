package g;

import android.content.DialogInterface;

/* loaded from: classes.dex */
public final class azj implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11111a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ baq f11112b;

    public /* synthetic */ azj(baq baqVar, int i) {
        this.f11111a = i;
        this.f11112b = baqVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (this.f11111a) {
            case 0:
                baq baqVar = this.f11112b;
                fyt.d(baqVar.bc, "android.permission.SYSTEM_ALERT_WINDOW");
                baqVar.z();
                break;
            default:
                fyt.g(this.f11112b, "android.settings.action.MANAGE_OVERLAY_PERMISSION", new cc(1, this));
                break;
        }
    }
}
