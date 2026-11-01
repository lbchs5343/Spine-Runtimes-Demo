package g;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class czc implements eue {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f13803a = new ArrayList();

    @Override // g.eue
    public final String c() {
        return toString();
    }

    @Override // g.eue
    public final /* bridge */ /* synthetic */ fky d() {
        return acq.am;
    }

    @Override // g.eue
    public final /* synthetic */ boolean e() {
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PHI:");
        ArrayList arrayList = this.f13803a;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            gks gksVar = ((abi) it.next()).ai;
            if (gksVar != null) {
                sb.append(" r");
                sb.append(gksVar.f18327e);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            abi abiVar = (abi) it2.next();
            sb.append("\n  ");
            sb.append(abiVar);
        }
        return sb.toString();
    }
}
