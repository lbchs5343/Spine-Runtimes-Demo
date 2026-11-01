package g;

import android.content.DialogInterface;

/* loaded from: classes.dex */
public final class ddp implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14026a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c.a.a f14027b;

    public /* synthetic */ ddp(c.a.a aVar, int i) {
        this.f14026a = i;
        this.f14027b = aVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.f14026a;
        c.a.a aVar = this.f14027b;
        switch (i2) {
            case 0:
                String str = c.a.a.f374d;
                fyt.d(aVar.bc, "android.permission.SYSTEM_ALERT_WINDOW");
                aVar.z();
                break;
            default:
                fyt.g(aVar, "android.settings.action.MANAGE_OVERLAY_PERMISSION", new cc(4, this));
                break;
        }
    }
}
