package g;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class aht {

    /* renamed from: a, reason: collision with root package name */
    public Map f10236a = Collections.EMPTY_MAP;

    /* renamed from: b, reason: collision with root package name */
    public List f10237b = Collections.EMPTY_LIST;

    /* renamed from: c, reason: collision with root package name */
    public final cwx f10238c;

    /* renamed from: d, reason: collision with root package name */
    public final int f10239d;

    /* renamed from: e, reason: collision with root package name */
    public cwx[] f10240e;

    public aht(int i, cwx cwxVar) {
        this.f10238c = cwxVar;
        this.f10239d = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || aht.class != obj.getClass()) {
            return false;
        }
        return this.f10238c.equals(((aht) obj).f10238c);
    }

    public final int hashCode() {
        return this.f10238c.az;
    }

    public final String toString() {
        return this.f10238c.toString();
    }
}
