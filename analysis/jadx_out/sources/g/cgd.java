package g;

import java.util.ArrayList;
import java.util.LinkedList;

/* loaded from: classes.dex */
public final class cgd {

    /* renamed from: a, reason: collision with root package name */
    public static final dbf f12817a;

    /* renamed from: b, reason: collision with root package name */
    public final String f12818b;

    /* renamed from: d, reason: collision with root package name */
    public faq f12820d;

    /* renamed from: e, reason: collision with root package name */
    public LinkedList f12821e = new LinkedList();

    /* renamed from: c, reason: collision with root package name */
    public final dbf f12819c = f12817a;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [g.clx] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    static {
        ?? r7 = 0;
        int i = 8;
        ckz[] ckzVarArr = {new dja(5), new dja(7), new dja(3), new dja(0), new dja(i), new dja(1), new dja(4), new dja(6), new dja(2)};
        cfg cfgVar = new cfg(15);
        while (i >= 0) {
            ?? clxVar = new clx(11, ckzVarArr[i], cfgVar, r7 == true ? 1 : 0);
            i--;
            cfgVar = clxVar;
        }
        f12817a = cfgVar;
    }

    public cgd(String str) {
        this.f12818b = str;
        try {
            f();
        } catch (Exception e2) {
            throw new dwb("Unable to parse expression:".concat(String.valueOf(str)), e2);
        }
    }

    public final void f() {
        String str = this.f12818b;
        int length = str.length();
        int i = 0;
        while (i < length) {
            int o = this.f12819c.o(str, i, this.f12821e);
            if (o == i) {
                throw new IllegalArgumentException("Unrecognized expression, unrecognized characters encountered during parsing:" + str.substring(0, i));
            }
            i = o;
        }
        ArrayList arrayList = new ArrayList();
        while (true) {
            faq faqVar = (faq) this.f12821e.pollFirst();
            if (faqVar == null) {
                this.f12820d = dyd.bb(arrayList, str, i);
                this.f12821e = null;
                return;
            }
            arrayList.add(0, faqVar);
        }
    }
}
