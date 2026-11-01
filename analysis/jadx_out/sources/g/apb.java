package g;

import android.content.Context;
import android.os.Looper;

/* loaded from: classes.dex */
public final class apb extends btr {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10605a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ apb(String str, int i) {
        super(str);
        this.f10605a = i;
    }

    @Override // g.btr
    public final bgh dq(Context context) {
        switch (this.f10605a) {
            case 0:
                pv pvVar = new pv(context);
                pvVar.f19834e = 0;
                pvVar.f19831a = "up";
                return pvVar;
            case 1:
                return new beb(context);
            default:
                cjn cjnVar = new cjn(context);
                cjnVar.f12988a = 0;
                cjnVar.f12989b = new giy(Looper.getMainLooper(), cjnVar);
                cjnVar.f12990c = 0;
                return cjnVar;
        }
    }
}
