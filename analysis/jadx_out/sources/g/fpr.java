package g;

import java.util.HashSet;
import java.util.List;
import java.util.SortedSet;

/* loaded from: classes.dex */
public final class fpr extends fox {

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f17208a;

    /* renamed from: b, reason: collision with root package name */
    public final List f17209b;

    /* renamed from: f, reason: collision with root package name */
    public SortedSet f17210f;

    public fpr(List list, SortedSet sortedSet, HashSet hashSet) {
        this.f17209b = list;
        this.f17210f = sortedSet;
        this.f17208a = hashSet;
    }

    @Override // g.eue
    public final /* bridge */ /* synthetic */ fky d() {
        return acq.h;
    }

    public final String toString() {
        return "METHOD_OVERRIDE: " + this.f17208a;
    }
}
