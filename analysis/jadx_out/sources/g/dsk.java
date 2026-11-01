package g;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class dsk {

    /* renamed from: a, reason: collision with root package name */
    public volatile HashMap f14713a;

    public final ans b(String str) {
        if (this.f14713a.containsKey(str) && this.f14713a.get(str) != null) {
            return (ans) this.f14713a.get(str);
        }
        ans ansVar = new ans();
        this.f14713a.put(str, ansVar);
        return ansVar;
    }
}
