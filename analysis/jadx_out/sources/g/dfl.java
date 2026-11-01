package g;

import com.google.android.gms.internal.ads.zzgzs;
import com.google.android.gms.internal.ads.zzhai;
import java.util.Map;

/* loaded from: classes3.dex */
public final class dfl implements Map.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final Map.Entry f14093a;

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f14093a.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (((zzgzs) this.f14093a.getValue()) == null) {
            return null;
        }
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzhai) {
            return ((zzgzs) this.f14093a.getValue()).zzc((zzhai) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
