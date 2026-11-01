package g;

import android.app.Activity;
import android.os.Bundle;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;

/* loaded from: classes.dex */
public final class gdi implements deg {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Activity f17932a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ert f17933b;

    public gdi(Activity activity, ert ertVar) {
        this.f17932a = activity;
        this.f17933b = ertVar;
    }

    @Override // g.deg
    public final void d(String str, Throwable th) {
        cro.p = false;
        cro.u(this.f17932a, this.f17933b, str);
    }

    @Override // g.deg
    public final void onSuccess(Object obj) {
        Bundle bundle = (Bundle) obj;
        cro.p = false;
        Activity activity = this.f17932a;
        ert ertVar = this.f17933b;
        if (bundle == null || !bundle.getBoolean("success", false) || !bundle.containsKey("checked")) {
            cro.u(activity, ertVar, bundle == null ? null : bundle.getString(AVErrorInfo.ERROR));
            return;
        }
        boolean z = bundle.getBoolean("checked");
        ertVar.aa(z);
        fso.y(activity, ertVar.q, "success");
        gm.k(activity, activity.getString(R.string.result_tool_switch, activity.getString(z ? R.string.result_open : R.string.result_close), ertVar.z(activity)));
    }
}
