package g;

import android.app.Activity;
import android.content.DialogInterface;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class dxu implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Activity f15039a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15040b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DialogInterface.OnClickListener f15041c;

    public /* synthetic */ dxu(DialogInterface.OnClickListener onClickListener, Activity activity, int i) {
        this.f15040b = i;
        this.f15041c = onClickListener;
        this.f15039a = activity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (this.f15040b) {
            case 0:
                DialogInterface.OnClickListener onClickListener = this.f15041c;
                if (onClickListener == null) {
                    gm.f(this.f15039a, R.string.content_disabled_request_permission2);
                    break;
                } else {
                    onClickListener.onClick(dialogInterface, i);
                    break;
                }
            default:
                DialogInterface.OnClickListener onClickListener2 = this.f15041c;
                if (onClickListener2 == null) {
                    ern.g(this.f15039a);
                    break;
                } else {
                    onClickListener2.onClick(dialogInterface, i);
                    break;
                }
        }
    }
}
