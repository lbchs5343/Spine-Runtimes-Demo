package g;

import android.util.Pair;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class heu extends LinkedHashMap {
    final /* synthetic */ bgq zza;

    public heu(bgq bgqVar) {
        this.zza = bgqVar;
    }

    @Override // java.util.LinkedHashMap
    public final boolean removeEldestEntry(Map.Entry entry) {
        synchronized (this.zza) {
            try {
                int size = size();
                bgq bgqVar = this.zza;
                if (size <= bgqVar.f11534d) {
                    return false;
                }
                bgqVar.f11535e.add(new Pair((String) entry.getKey(), ((ckv) entry.getValue()).f13041b));
                return size() > this.zza.f11534d;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
