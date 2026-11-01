package g;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class dxk extends fdk {

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f15020c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f15021d;

    /* renamed from: f, reason: collision with root package name */
    public final dpa f15022f;

    public dxk(dxk dxkVar) {
        super(dxkVar.f16608g);
        ArrayList arrayList = new ArrayList(dxkVar.f15020c.size());
        this.f15020c = arrayList;
        arrayList.addAll(dxkVar.f15020c);
        ArrayList arrayList2 = new ArrayList(dxkVar.f15021d.size());
        this.f15021d = arrayList2;
        arrayList2.addAll(dxkVar.f15021d);
        this.f15022f = dxkVar.f15022f;
    }

    public dxk(String str, ArrayList arrayList, List list, dpa dpaVar) {
        super(str);
        this.f15020c = new ArrayList();
        this.f15022f = dpaVar;
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this.f15020c.add(((gey) it.next()).zzi());
            }
        }
        this.f15021d = new ArrayList(list);
    }

    @Override // g.fdk
    public final gey e(dpa dpaVar, List list) {
        gdz gdzVar;
        dpa u = this.f15022f.u();
        ffr ffrVar = (ffr) u.f14566d;
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f15020c;
            int size = arrayList.size();
            gdzVar = gey.o;
            if (i >= size) {
                break;
            }
            if (i < list.size()) {
                u.m((String) arrayList.get(i), ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) list.get(i)));
            } else {
                u.m((String) arrayList.get(i), gdzVar);
            }
            i++;
        }
        Iterator it = this.f15021d.iterator();
        while (it.hasNext()) {
            gey geyVar = (gey) it.next();
            gey aj = ffrVar.aj(u, geyVar);
            if (aj instanceof fud) {
                aj = ffrVar.aj(u, geyVar);
            }
            if (aj instanceof enl) {
                return ((enl) aj).f15863a;
            }
        }
        return gdzVar;
    }

    @Override // g.fdk, g.gey
    public final gey zzd() {
        return new dxk(this);
    }
}
