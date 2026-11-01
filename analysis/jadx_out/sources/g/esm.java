package g;

import android.app.Activity;
import android.content.DialogInterface;
import cn.trinea.android.developertools.R;

/* loaded from: classes3.dex */
public final /* synthetic */ class esm implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16091a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Activity f16092b;

    public /* synthetic */ esm(Activity activity, int i) {
        this.f16091a = i;
        this.f16092b = activity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.f16091a;
        Activity activity = this.f16092b;
        switch (i2) {
            case 0:
                fyt.i(activity);
                break;
            case 1:
                int i3 = bus.f12241a;
                cro.af(activity, "shizuku_compatibility_mode_enabled", false);
                ark q = ark.q(activity);
                q.m.post(new hdk(q, 1));
                gm.e(activity, R.string.shizuku_guide_toast_disabled);
                break;
            default:
                fyt.i(activity);
                break;
        }
    }
}
