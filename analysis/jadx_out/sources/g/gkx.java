package g;

import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class gkx implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18329a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ dre f18330b;

    public /* synthetic */ gkx(dre dreVar, int i) {
        this.f18329a = i;
        this.f18330b = dreVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ViewGroup viewGroup;
        switch (this.f18329a) {
            case 0:
                dre dreVar = this.f18330b;
                if ((dreVar.ae & 1) != 0) {
                    dreVar.ct(0);
                }
                if ((dreVar.ae & 4096) != 0) {
                    dreVar.ct(108);
                }
                dreVar.bu = false;
                dreVar.ae = 0;
                break;
            default:
                dre dreVar2 = this.f18330b;
                dreVar2.bn.showAtLocation(dreVar2.am, 55, 0, 0);
                elx elxVar = dreVar2.al;
                if (elxVar != null) {
                    elxVar.e();
                }
                if (!dreVar2.bg || (viewGroup = dreVar2.bq) == null || !viewGroup.isLaidOut()) {
                    dreVar2.am.setAlpha(1.0f);
                    dreVar2.am.setVisibility(0);
                    break;
                } else {
                    dreVar2.am.setAlpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    elx o = goi.o(dreVar2.am);
                    o.d(1.0f);
                    dreVar2.al = o;
                    o.b(new gof(0, this));
                    break;
                }
        }
    }
}
