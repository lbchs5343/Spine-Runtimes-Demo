package g;

import android.os.Build;

/* loaded from: classes.dex */
public final class ckq extends bvw {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f13037g;
    public final int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ckq(cmh cmhVar, int i) {
        super(cmhVar);
        this.f13037g = i;
        switch (i) {
            case 2:
                bff.p(cmhVar, "tracker");
                super(cmhVar);
                this.h = 7;
                break;
            case 3:
                bff.p(cmhVar, "tracker");
                super(cmhVar);
                this.h = 7;
                break;
            case 4:
                bff.p(cmhVar, "tracker");
                super(cmhVar);
                this.h = 9;
                break;
            default:
                bff.p(cmhVar, "tracker");
                this.h = 6;
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ckq(euw euwVar) {
        super(euwVar);
        this.f13037g = 1;
        bff.p(euwVar, "tracker");
        this.h = 5;
    }

    @Override // g.pe
    public final boolean b(fkj fkjVar) {
        switch (this.f13037g) {
            case 0:
                bff.p(fkjVar, "workSpec");
                return fkjVar.r.i;
            case 1:
                bff.p(fkjVar, "workSpec");
                return fkjVar.r.f11594d;
            case 2:
                bff.p(fkjVar, "workSpec");
                return fkjVar.r.f11595e == dnx.CONNECTED;
            case 3:
                bff.p(fkjVar, "workSpec");
                dnx dnxVar = fkjVar.r.f11595e;
                return dnxVar == dnx.UNMETERED || (Build.VERSION.SDK_INT >= 30 && dnxVar == dnx.TEMPORARILY_UNMETERED);
            default:
                bff.p(fkjVar, "workSpec");
                return fkjVar.r.f11596f;
        }
    }

    @Override // g.bvw
    public final int e() {
        switch (this.f13037g) {
        }
        return this.h;
    }

    @Override // g.bvw
    public final boolean f(Object obj) {
        boolean booleanValue;
        switch (this.f13037g) {
            case 0:
                booleanValue = ((Boolean) obj).booleanValue();
                break;
            case 1:
                booleanValue = ((Boolean) obj).booleanValue();
                break;
            case 2:
                dod dodVar = (dod) obj;
                bff.p(dodVar, "value");
                boolean z = dodVar.f14514b;
                return Build.VERSION.SDK_INT < 26 ? !z : !(z && dodVar.f14515c);
            case 3:
                dod dodVar2 = (dod) obj;
                bff.p(dodVar2, "value");
                return !dodVar2.f14514b || dodVar2.f14516d;
            default:
                booleanValue = ((Boolean) obj).booleanValue();
                break;
        }
        return !booleanValue;
    }
}
