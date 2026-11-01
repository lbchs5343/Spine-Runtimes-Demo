package g;

import android.os.Build;

/* loaded from: classes.dex */
public final class erh extends bvw {

    /* renamed from: g, reason: collision with root package name */
    public final int f16025g;

    static {
        bff.e(cyl.g("NetworkNotRoamingCtrlr"), "tagWithPrefix(\"NetworkNotRoamingCtrlr\")");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public erh(cmh cmhVar) {
        super(cmhVar);
        bff.p(cmhVar, "tracker");
        this.f16025g = 7;
    }

    @Override // g.pe
    public final boolean b(fkj fkjVar) {
        bff.p(fkjVar, "workSpec");
        return fkjVar.r.f11595e == dnx.NOT_ROAMING;
    }

    @Override // g.bvw
    public final int e() {
        return this.f16025g;
    }

    @Override // g.bvw
    public final boolean f(Object obj) {
        dod dodVar = (dod) obj;
        bff.p(dodVar, "value");
        boolean z = dodVar.f14514b;
        if (Build.VERSION.SDK_INT >= 24) {
            return (z && dodVar.f14513a) ? false : true;
        }
        cyl.f().getClass();
        return !z;
    }
}
