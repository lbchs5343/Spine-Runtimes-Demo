package g;

import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public final class apk extends bke {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f10628b = 1;

    /* renamed from: c, reason: collision with root package name */
    public final Object f10629c;

    public apk(bkj bkjVar, eem eemVar, Type type, bke bkeVar, Type type2, bke bkeVar2) {
        new dpq(type, eemVar, bkeVar);
        this.f10629c = new dpq(type2, eemVar, bkeVar2);
    }

    public apk(eam eamVar) {
        this.f10629c = eamVar;
    }

    public apk(Type type, eem eemVar, bke bkeVar) {
        this.f10629c = new dpq(type, eemVar, bkeVar);
    }

    @Override // g.bke
    public final void a(fwg fwgVar, Object obj) {
        switch (this.f10628b) {
            case 0:
                Collection collection = (Collection) obj;
                if (collection == null) {
                    fwgVar.af();
                    break;
                } else {
                    fwgVar.ae();
                    Iterator it = collection.iterator();
                    while (it.hasNext()) {
                        ((dpq) this.f10629c).a(fwgVar, it.next());
                    }
                    fwgVar.w();
                    break;
                }
            case 1:
                Map map = (Map) obj;
                dpq dpqVar = (dpq) this.f10629c;
                if (map == null) {
                    fwgVar.af();
                    break;
                } else {
                    fwgVar.p();
                    for (Map.Entry entry : map.entrySet()) {
                        fwgVar.o(String.valueOf(entry.getKey()));
                        dpqVar.a(fwgVar, entry.getValue());
                    }
                    fwgVar.ag();
                    break;
                }
            default:
                ((eam) this.f10629c).f15198a.a(fwgVar, obj);
                break;
        }
    }
}
