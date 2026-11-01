package g;

import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final /* synthetic */ class dxh implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f15015a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f15016b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f15017c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f15018d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ eku f15019e;

    public /* synthetic */ dxh(eku ekuVar, ViewGroup viewGroup, String str, String str2, int i) {
        this.f15018d = i;
        this.f15019e = ekuVar;
        this.f15015a = viewGroup;
        this.f15016b = str;
        this.f15017c = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f15018d;
        String str = this.f15017c;
        String str2 = this.f15016b;
        ViewGroup viewGroup = this.f15015a;
        eku ekuVar = this.f15019e;
        switch (i) {
            case 0:
                eku ekuVar2 = this.f15019e;
                ekuVar2.i.runOnUiThread(new dxh(ekuVar2, this.f15015a, this.f15016b, this.f15017c, 3));
                break;
            case 1:
                boolean z = eku.f15714e;
                ViewGroup viewGroup2 = this.f15015a;
                float width = viewGroup2 == null ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : viewGroup2.getWidth();
                eku ekuVar3 = this.f15019e;
                String str3 = this.f15016b;
                String str4 = this.f15017c;
                if (width > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    ekuVar3.q(viewGroup2, str3, str4, true);
                    break;
                } else {
                    ekuVar3.k.postDelayed(new dxh(ekuVar3, viewGroup2, str3, str4, 2), 1000L);
                    break;
                }
            case 2:
                boolean z2 = eku.f15714e;
                if (viewGroup != null) {
                    ekuVar.getClass();
                    viewGroup.getWidth();
                }
                ekuVar.q(viewGroup, str2, str, true);
                break;
            default:
                boolean z3 = eku.f15714e;
                ekuVar.q(viewGroup, str2, str, false);
                break;
        }
    }
}
