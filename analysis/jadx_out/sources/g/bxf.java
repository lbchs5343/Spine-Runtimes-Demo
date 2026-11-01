package g;

import android.app.Activity;
import android.content.DialogInterface;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class bxf implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Activity f12373a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f12374b = 0;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ert f12375c;

    public bxf(Activity activity, ert ertVar) {
        this.f12373a = activity;
        this.f12375c = ertVar;
    }

    public bxf(ert ertVar, Activity activity) {
        this.f12375c = ertVar;
        this.f12373a = activity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (this.f12374b) {
            case 0:
                Activity activity = this.f12373a;
                boolean z = activity instanceof elf;
                ert ertVar = this.f12375c;
                if (z) {
                    elf elfVar = (elf) activity;
                    String str = ertVar.q;
                    if (str == null) {
                        elfVar.v = null;
                    } else {
                        elfVar.v = str;
                        elfVar.z = true;
                    }
                }
                fso.y(activity, ertVar.q, "success_accessibility_positive");
                if (!ern.g(activity)) {
                    gm.e(activity, R.string.open_accessibility_failed);
                    cro.aa(activity, ertVar);
                    break;
                }
                break;
            default:
                ert ertVar2 = this.f12375c;
                boolean z2 = ertVar2.f16056e;
                Activity activity2 = this.f12373a;
                if (z2) {
                    acw.aa(activity2);
                }
                gm.f(activity2, R.string.content_disabled_request_permission2);
                fso.y(activity2, ertVar2.q, "fail_accessibility_cancel");
                break;
        }
    }
}
