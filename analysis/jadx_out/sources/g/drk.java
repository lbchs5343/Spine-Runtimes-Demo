package g;

import com.google.android.gms.internal.ads.zzfwr;
import com.google.android.gms.internal.ads.zzfze;
import com.google.android.gms.internal.ads.zzgbq;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
public final class drk extends zzfze {

    /* renamed from: c, reason: collision with root package name */
    public final Map f14670c;

    public drk(Map map) {
        this.f14670c = map;
    }

    @Override // com.google.android.gms.internal.ads.zzfze, com.google.android.gms.internal.ads.zzfzf
    public final /* synthetic */ Object a() {
        return this.f14670c;
    }

    @Override // com.google.android.gms.internal.ads.zzfze
    public final Map b() {
        return this.f14670c;
    }

    @Override // com.google.android.gms.internal.ads.zzfze, java.util.Map
    public final boolean containsKey(Object obj) {
        return obj != null && super.containsKey(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfze, java.util.Map
    public final boolean containsValue(Object obj) {
        Iterator it = entrySet().iterator();
        wn wnVar = new wn(it);
        if (obj == null) {
            while (it.hasNext()) {
                if (wnVar.next() == null) {
                    return true;
                }
            }
            return false;
        }
        while (it.hasNext()) {
            if (obj.equals(wnVar.next())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfze, java.util.Map
    public final Set entrySet() {
        return zzgbq.zzc(this.f14670c.entrySet(), new zzfwr() { // from class: com.google.android.gms.internal.ads.zzgm
            @Override // com.google.android.gms.internal.ads.zzfwr
            public final boolean zza(Object obj) {
                return ((Map.Entry) obj).getKey() != null;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzfze, java.util.Map
    public final boolean equals(Object obj) {
        if (obj != null) {
            if (this == obj ? true : obj instanceof Map ? entrySet().equals(((Map) obj).entrySet()) : false) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfze, java.util.Map
    public final /* synthetic */ Object get(Object obj) {
        if (obj == null) {
            return null;
        }
        return (List) this.f14670c.get(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfze, java.util.Map
    public final int hashCode() {
        return zzgbq.a(entrySet());
    }

    @Override // com.google.android.gms.internal.ads.zzfze, java.util.Map
    public final boolean isEmpty() {
        if (this.f14670c.isEmpty()) {
            return true;
        }
        return super.size() == 1 && super.containsKey(null);
    }

    @Override // com.google.android.gms.internal.ads.zzfze, java.util.Map
    public final Set keySet() {
        return zzgbq.zzc(this.f14670c.keySet(), new zzfwr() { // from class: com.google.android.gms.internal.ads.zzgn
            @Override // com.google.android.gms.internal.ads.zzfwr
            public final boolean zza(Object obj) {
                return ((String) obj) != null;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzfze, java.util.Map
    public final int size() {
        return super.size() - (super.containsKey(null) ? 1 : 0);
    }
}
