package g;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Handler;
import cn.trinea.android.developertools.R;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class cc implements cbi {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12620a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DialogInterface.OnClickListener f12621b;

    public /* synthetic */ cc(int i, DialogInterface.OnClickListener onClickListener) {
        this.f12620a = i;
        this.f12621b = onClickListener;
    }

    @Override // g.cbi
    public final void c() {
        boolean canRequestPackageInstalls;
        int i = this.f12620a;
        DialogInterface.OnClickListener onClickListener = this.f12621b;
        switch (i) {
            case 0:
                new Handler().postDelayed(new byd(1, this), 1000L);
                break;
            case 1:
                AtomicInteger atomicInteger = baq.f11185e;
                new Handler().postDelayed(new byd(17, this), 1000L);
                break;
            case 2:
                dtm dtmVar = (dtm) onClickListener;
                Activity activity = (Activity) dtmVar.f14784c;
                canRequestPackageInstalls = activity.getPackageManager().canRequestPackageInstalls();
                if (!canRequestPackageInstalls) {
                    gm.e(activity, R.string.content_disabled_request_permission2);
                    break;
                } else {
                    fgj.e().f(activity, (Intent) dtmVar.f14782a);
                    break;
                }
            case 3:
                AtomicInteger atomicInteger2 = edx.f15386e;
                new Handler().postDelayed(new byd(29, this), 1000L);
                break;
            default:
                c.a.a aVar = ((ddp) onClickListener).f14027b;
                sd sdVar = aVar.n;
                if (sdVar != null && sdVar.g()) {
                    aVar.n.ak(3);
                }
                new Handler().postDelayed(new dyn(6, this), 1000L);
                break;
        }
    }
}
