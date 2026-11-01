package g;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class etr extends sz {

    /* renamed from: a, reason: collision with root package name */
    public static final dpd f16152a;

    /* renamed from: b, reason: collision with root package name */
    public final List f16153b;

    /* renamed from: f, reason: collision with root package name */
    public final List f16154f;

    static {
        Pattern pattern = dpd.f14576a;
        f16152a = acr.bb("application/x-www-form-urlencoded");
    }

    public etr(ArrayList arrayList, ArrayList arrayList2) {
        bff.p(arrayList, "encodedNames");
        bff.p(arrayList2, "encodedValues");
        this.f16153b = erq.s(arrayList);
        this.f16154f = erq.s(arrayList2);
    }

    @Override // g.sz
    public final long c() {
        return g(null, true);
    }

    @Override // g.sz
    public final dpd d() {
        return f16152a;
    }

    @Override // g.sz
    public final void e(cbs cbsVar) {
        g(cbsVar, false);
    }

    public final long g(cbs cbsVar, boolean z) {
        clq h;
        if (z) {
            h = new clq();
        } else {
            bff.d(cbsVar);
            h = cbsVar.h();
        }
        List list = this.f16153b;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                h.al(38);
            }
            h.ap((String) list.get(i));
            h.al(61);
            h.ap((String) this.f16154f.get(i));
        }
        if (!z) {
            return 0L;
        }
        long j = h.f13080b;
        h.aa();
        return j;
    }
}
