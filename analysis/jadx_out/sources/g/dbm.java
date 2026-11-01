package g;

import java.util.function.ToIntFunction;

/* loaded from: classes.dex */
public final /* synthetic */ class dbm implements ToIntFunction {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13922a;

    public /* synthetic */ dbm(int i) {
        this.f13922a = i;
    }

    @Override // java.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        eek eekVar;
        switch (this.f13922a) {
            case 0:
                return ((aea) obj).f10080c.size();
            case 1:
                return ((fza) obj).ac.size();
            case 2:
                return ((aea) obj).h;
            case 3:
                return ((ebh) obj).bp;
            case 4:
                return ((aht) obj).f10236a.size();
            case 5:
                return ((Integer) obj).intValue();
            case 6:
                return ((fha) obj).d();
            case 7:
                gks gksVar = (gks) obj;
                if (gksVar == null || (eekVar = gksVar.ae) == null) {
                    return -1;
                }
                return eekVar.ag;
            case 8:
                return ((Integer) obj).intValue();
            case 9:
                return ((cno) obj).f13186e.az();
            case 10:
                return ((cno) obj).f13186e.az();
            case 11:
                return ((ebh) obj).bp;
            case 12:
                return ((azy) obj).f11142d;
            case 13:
                return ((vm) obj).f20180f;
            case 14:
                return ((vm) obj).f20181g;
            default:
                return ((arn) obj).f10721a;
        }
    }
}
