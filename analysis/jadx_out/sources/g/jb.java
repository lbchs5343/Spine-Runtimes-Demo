package g;

import j$.util.Collection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;

/* loaded from: classes.dex */
public final /* synthetic */ class jb implements BiConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19460a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f19461b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f19462c;

    public /* synthetic */ jb(Object obj, int i, Object obj2) {
        this.f19460a = i;
        this.f19461b = obj;
        this.f19462c = obj2;
    }

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        int i = this.f19460a;
        Object obj3 = this.f19462c;
        Object obj4 = this.f19461b;
        switch (i) {
            case 0:
                dwg dwgVar = (dwg) obj4;
                String str = (String) obj2;
                int indexOf = str.indexOf(47);
                ((bqm) ((dxb) obj3).f14997c).c((Integer) obj, dwgVar.h.s(new dsj(ve.g(dwgVar, "android.R$" + str.substring(0, indexOf)), str.substring(indexOf + 1), cwx.an)));
                break;
            case 1:
                cln clnVar = (cln) obj4;
                ArrayList arrayList = (ArrayList) obj3;
                String str2 = (String) obj;
                List list = (List) obj2;
                clnVar.getClass();
                if (list.size() == 1) {
                    arrayList.add((gay) list.get(0));
                    break;
                } else {
                    String str3 = (String) clnVar.f13070c.get(str2);
                    if (str3 != null) {
                        Collection.b.stream(list).filter(new egl(5, str3)).findFirst().ifPresent(new efe(1, arrayList));
                        break;
                    } else {
                        gay gayVar = (gay) list.get(0);
                        arrayList.add(gayVar);
                        cln.f13068a.n("Select providing '{}' plugin '{}', candidates: {}", str2, gayVar, list);
                        break;
                    }
                }
            case 2:
                ((eak) obj4).bd((hed) obj3, (ghr) obj2);
                break;
            default:
                emr emrVar = (emr) obj4;
                HashMap hashMap = (HashMap) obj3;
                cwx cwxVar = (cwx) obj;
                cwx cwxVar2 = (cwx) obj2;
                List c2 = cwxVar2.c();
                if (!evh.m(c2)) {
                    int size = c2.size();
                    List ad = emrVar.ad(cwxVar2);
                    if (size == ad.size()) {
                        Map map = (Map) hashMap.get(cwxVar.l());
                        HashMap hashMap2 = new HashMap(size);
                        for (int i2 = 0; i2 < size; i2++) {
                            cwx cwxVar3 = (cwx) c2.get(i2);
                            cwx cwxVar4 = map != null ? (cwx) map.get(cwxVar3) : null;
                            cwx cwxVar5 = (cwx) ad.get(i2);
                            if (cwxVar4 != null) {
                                cwxVar3 = cwxVar4;
                            }
                            hashMap2.put(cwxVar5, cwxVar3);
                        }
                        hashMap.put(cwxVar2.l(), hashMap2);
                        break;
                    }
                }
                break;
        }
    }

    public final /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        int i = this.f19460a;
        return j$.util.function.h.$default$andThen(this, biConsumer);
    }
}
