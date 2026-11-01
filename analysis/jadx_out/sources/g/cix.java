package g;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class cix extends InheritableThreadLocal {
    @Override // java.lang.InheritableThreadLocal
    public final Object childValue(Object obj) {
        Map map = (Map) obj;
        if (map == null) {
            return null;
        }
        return new HashMap(map);
    }
}
