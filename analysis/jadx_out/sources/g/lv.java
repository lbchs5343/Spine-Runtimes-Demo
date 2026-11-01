package g;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public final class lv extends fdk {

    /* renamed from: b, reason: collision with root package name */
    public final boolean f19614b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f19615c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ auf f19616d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lv(auf aufVar, boolean z, boolean z2) {
        super("log");
        this.f19616d = aufVar;
        this.f19614b = z;
        this.f19615c = z2;
    }

    @Override // g.fdk
    public final gey e(dpa dpaVar, List list) {
        byh.bf(1, "log", list);
        int size = list.size();
        gdz gdzVar = gey.o;
        auf aufVar = this.f19616d;
        if (size == 1) {
            ((bgb) aufVar.f10861c).e(3, ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) list.get(0)).zzi(), Collections.EMPTY_LIST, this.f19614b, this.f19615c);
            return gdzVar;
        }
        gey geyVar = (gey) list.get(0);
        ffr ffrVar = (ffr) dpaVar.f14566d;
        ffr ffrVar2 = (ffr) dpaVar.f14566d;
        int az = byh.az(ffrVar.aj(dpaVar, geyVar).zzh().doubleValue());
        int i = az != 2 ? az != 3 ? az != 5 ? az != 6 ? 3 : 2 : 5 : 1 : 4;
        String zzi = ffrVar2.aj(dpaVar, (gey) list.get(1)).zzi();
        if (list.size() == 2) {
            ((bgb) aufVar.f10861c).e(i, zzi, Collections.EMPTY_LIST, this.f19614b, this.f19615c);
            return gdzVar;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 2; i2 < Math.min(list.size(), 5); i2++) {
            arrayList.add(ffrVar2.aj(dpaVar, (gey) list.get(i2)).zzi());
        }
        ((bgb) aufVar.f10861c).e(i, zzi, arrayList, this.f19614b, this.f19615c);
        return gdzVar;
    }
}
