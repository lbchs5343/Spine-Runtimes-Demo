package g;

import android.content.pm.ServiceInfo;
import j$.util.Map;
import java.util.Comparator;
import java.util.HashMap;

/* loaded from: classes.dex */
public final /* synthetic */ class ffp implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f16712a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16713b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f16714c;

    public /* synthetic */ ffp(Object obj, int i, Object obj2) {
        this.f16713b = i;
        this.f16714c = obj;
        this.f16712a = obj2;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f16713b) {
            case 0:
                guv guvVar = (guv) this.f16714c;
                Comparator comparator = (Comparator) this.f16712a;
                aea aeaVar = (aea) obj;
                aea aeaVar2 = (aea) obj2;
                if (aeaVar.equals(aeaVar2)) {
                    throw new gck("Same handlers in try block: " + guvVar);
                }
                if (aeaVar.m()) {
                    return 1;
                }
                if (aeaVar2.m()) {
                    return -1;
                }
                ve veVar = (ve) aeaVar.f10082e.get(0);
                ve veVar2 = (ve) aeaVar2.f10082e.get(0);
                int compare = comparator.compare(veVar.f20149d, veVar2.f20149d);
                return compare == -2 ? veVar.compareTo(veVar2) : compare;
            default:
                HashMap hashMap = (HashMap) this.f16714c;
                HashMap hashMap2 = (HashMap) this.f16712a;
                ServiceInfo serviceInfo = (ServiceInfo) obj;
                ServiceInfo serviceInfo2 = (ServiceInfo) obj2;
                Integer valueOf = Integer.valueOf(he.UNDEFINED_ITEM_ID);
                int compare2 = Boolean.compare(((Boolean) hashMap.get(serviceInfo2.name)).booleanValue(), ((Boolean) hashMap.get(serviceInfo.name)).booleanValue());
                if (compare2 != 0) {
                    return compare2;
                }
                int compare3 = Integer.compare(((Integer) Map.b.getOrDefault(hashMap2, baf.aa(serviceInfo.name), valueOf)).intValue(), ((Integer) Map.b.getOrDefault(hashMap2, baf.aa(serviceInfo2.name), valueOf)).intValue());
                return compare3 != 0 ? compare3 : serviceInfo.name.compareTo(serviceInfo2.name);
        }
    }
}
