package g;

import android.content.Context;
import com.google.android.gms.common.api.Status;

/* loaded from: classes3.dex */
public final class dwn extends bxx implements ayv {
    public static final akj l = new akj("AppSet.API", new gzt(3), new bmr(24));
    public final gna m;
    public final Context n;

    public dwn(Context context, gna gnaVar) {
        super(context, l, ama.f10460a, cqe.f13330a);
        this.n = context;
        this.m = gnaVar;
    }

    @Override // g.ayv
    public final chw a() {
        if (this.m.l(this.n, 212800000) != 0) {
            dmw dmwVar = new dmw(new Status(17));
            chw chwVar = new chw();
            chwVar.l(dmwVar);
            return chwVar;
        }
        cpq cpqVar = new cpq(2);
        cpqVar.f13287e = true;
        cpqVar.f13286d = 0;
        cpqVar.f13284b = new cqg[]{vp.f20187a};
        cpqVar.f13283a = new gpu(this);
        cpqVar.f13287e = false;
        cpqVar.f13286d = 27601;
        return k(0, new cpq(cpqVar, (cqg[]) cpqVar.f13284b, cpqVar.f13287e, cpqVar.f13286d));
    }
}
