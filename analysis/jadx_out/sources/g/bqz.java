package g;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class bqz {

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f12055b;

    /* renamed from: c, reason: collision with root package name */
    public final dda f12056c;

    /* renamed from: d, reason: collision with root package name */
    public final guv f12057d;

    /* renamed from: g, reason: collision with root package name */
    public final gnq f12060g;
    public final aea h;

    /* renamed from: a, reason: collision with root package name */
    public HashSet f12054a = null;

    /* renamed from: f, reason: collision with root package name */
    public HashSet f12059f = null;

    /* renamed from: e, reason: collision with root package name */
    public final HashSet f12058e = new HashSet();
    public final HashSet i = new HashSet();

    public bqz(guv guvVar, gnq gnqVar, aea aeaVar, HashMap hashMap, dda ddaVar) {
        this.f12057d = guvVar;
        this.f12060g = gnqVar;
        this.h = aeaVar;
        this.f12055b = hashMap;
        this.f12056c = ddaVar;
        Iterator it = ddaVar.f14000b.values().iterator();
        while (it.hasNext()) {
            this.f12058e.addAll((List) it.next());
        }
    }
}
