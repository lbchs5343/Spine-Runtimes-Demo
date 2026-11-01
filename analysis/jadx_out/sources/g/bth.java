package g;

import com.google.android.gms.internal.ads.zzfwn;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class bth implements Map.Entry {
    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            if (zzfwn.zza(getKey(), entry.getKey()) && zzfwn.zza(getValue(), entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object key = getKey();
        Object value = getValue();
        return (key == null ? 0 : key.hashCode()) ^ (value != null ? value.hashCode() : 0);
    }

    public final String toString() {
        return awf.i(String.valueOf(getKey()), "=", String.valueOf(getValue()));
    }
}
