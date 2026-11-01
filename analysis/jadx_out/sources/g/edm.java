package g;

import android.content.Context;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class edm implements bmm {

    /* renamed from: a, reason: collision with root package name */
    public Object f15363a;

    /* renamed from: b, reason: collision with root package name */
    public long f15364b;

    /* renamed from: c, reason: collision with root package name */
    public Object f15365c;

    @Override // g.bmm
    public void ad(czh czhVar, anx anxVar) {
        Context context;
        Context context2;
        Context context3;
        cx cxVar = (cx) this.f15365c;
        dqe dqeVar = (dqe) this.f15363a;
        context = dqeVar.x;
        acw.s(context, "update_last_check_time", this.f15364b);
        cbf cbfVar = (cbf) anxVar.f10540b;
        if (cbfVar == null) {
            context3 = dqeVar.x;
            cxVar.a(new dcq(14, context3.getString(R.string.update_failed_empty_response)));
        } else {
            if (cbfVar.getCode() != 0) {
                cxVar.a(new dcq(14, cbfVar.getMessage()));
                return;
            }
            fjv fjvVar = (fjv) cbfVar.getData();
            if (fjvVar == null) {
                return;
            }
            cxVar.onSuccess(fjvVar);
            context2 = dqeVar.x;
            acw.au(context2, "update_response", ex.i(fjvVar));
        }
    }

    @Override // g.bmm
    public void w(czh czhVar, Throwable th) {
        Context context;
        cx cxVar = (cx) this.f15365c;
        context = ((dqe) this.f15363a).x;
        cxVar.a(new dcq(14, context.getString(R.string.update_failed_exception)));
    }
}
