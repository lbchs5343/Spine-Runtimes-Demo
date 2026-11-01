package g;

import j$.lang.Iterable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.function.BiConsumer;

/* loaded from: classes.dex */
public final /* synthetic */ class esa implements BiConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16070a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f16071b;

    public /* synthetic */ esa(int i, Object obj) {
        this.f16070a = i;
        this.f16071b = obj;
    }

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        switch (this.f16070a) {
            case 0:
                HashMap hashMap = (HashMap) this.f16071b;
                chf chfVar = (chf) obj2;
                if (chfVar.c().f14709a.equals(cwx.an) && (chfVar instanceof hcd) && (obj instanceof Integer)) {
                    hcd hcdVar = (hcd) chfVar;
                    gqc gqcVar = hcdVar.h;
                    if (gqcVar.be() && gqcVar.ae()) {
                        hashMap.put((Integer) obj, hcdVar);
                        break;
                    }
                }
                break;
            case 1:
                hed hedVar = (hed) this.f16071b;
                aea aeaVar = (aea) obj;
                if (((List) obj2).isEmpty()) {
                    aeaVar.f10084g = true;
                    Iterable.b.forEach(aeaVar.f10080c, new esk(14));
                    giq.l(hedVar.aj, aeaVar.i);
                    break;
                }
                break;
            default:
                ArrayList arrayList = (ArrayList) this.f16071b;
                ArrayList arrayList2 = new ArrayList(1);
                arrayList2.add((aea) obj);
                arrayList.add(new guv(arrayList2, (List) obj2, arrayList.size()));
                break;
        }
    }

    public final /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        int i = this.f16070a;
        return j$.util.function.h.$default$andThen(this, biConsumer);
    }
}
