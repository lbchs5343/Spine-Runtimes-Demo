package g;

import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class hf implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19363a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ eos f19364b;

    public /* synthetic */ hf(eos eosVar, int i) {
        this.f19363a = i;
        this.f19364b = eosVar;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f19363a) {
            case 0:
                grs grsVar = (grs) this.f19364b;
                grsVar.ae("/* ");
                grsVar.h((String) obj).d(" */");
                break;
            default:
                hab habVar = (hab) obj;
                String str = habVar.f19099a;
                Throwable th = habVar.f19100b;
                grs grsVar2 = (grs) this.f19364b;
                grsVar2.ae("/* ERROR: ");
                grsVar2.d(str);
                if (th != null) {
                    grsVar2.aa();
                    evh.j(grsVar2, th);
                    grsVar2.ab();
                }
                grsVar2.d("*/");
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.f19363a;
        return j$.util.function.j.$default$andThen(this, consumer);
    }
}
