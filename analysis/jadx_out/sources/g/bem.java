package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final class bem {

    /* renamed from: b, reason: collision with root package name */
    public bmr f11387b;

    /* renamed from: d, reason: collision with root package name */
    public bmr f11389d;
    public bmr h;
    public bmr j;

    /* renamed from: f, reason: collision with root package name */
    public afo f11391f = new eeu();
    public afo i = new eeu();
    public afo k = new eeu();

    /* renamed from: c, reason: collision with root package name */
    public afo f11388c = new eeu();

    /* renamed from: e, reason: collision with root package name */
    public gjn f11390e = new ett(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);

    /* renamed from: g, reason: collision with root package name */
    public gjn f11392g = new ett(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
    public gjn l = new ett(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);

    /* renamed from: a, reason: collision with root package name */
    public gjn f11386a = new ett(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);

    public bem() {
        int i = 0;
        this.h = new bmr(i);
        this.j = new bmr(i);
        this.f11387b = new bmr(i);
        this.f11389d = new bmr(i);
    }

    public static void m(afo afoVar) {
        if (afoVar instanceof eeu) {
            ((eeu) afoVar).getClass();
        } else if (afoVar instanceof gki) {
            ((gki) afoVar).getClass();
        }
    }

    public final cjg n() {
        cjg cjgVar = new cjg();
        cjgVar.f12976f = this.f11391f;
        cjgVar.i = this.i;
        cjgVar.k = this.k;
        cjgVar.f12973c = this.f11388c;
        cjgVar.f12975e = this.f11390e;
        cjgVar.f12977g = this.f11392g;
        cjgVar.l = this.l;
        cjgVar.f12971a = this.f11386a;
        cjgVar.h = this.h;
        cjgVar.j = this.j;
        cjgVar.f12972b = this.f11387b;
        cjgVar.f12974d = this.f11389d;
        return cjgVar;
    }
}
