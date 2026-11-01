package g;

import com.google.android.gms.internal.ads.zzfwn;
import java.util.Map;

/* loaded from: classes3.dex */
public final class eyw extends bth {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ esx f16390a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f16391b;

    /* renamed from: c, reason: collision with root package name */
    public int f16392c;

    public eyw(esx esxVar, int i) {
        this.f16390a = esxVar;
        Object obj = esx.f16110a;
        this.f16391b = esxVar.q()[i];
        this.f16392c = i;
    }

    public final void d() {
        int i = this.f16392c;
        Object obj = this.f16391b;
        esx esxVar = this.f16390a;
        if (i != -1 && i < esxVar.size()) {
            if (zzfwn.zza(obj, esxVar.q()[this.f16392c])) {
                return;
            }
        }
        Object obj2 = esx.f16110a;
        this.f16392c = esxVar.k(obj);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f16391b;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        esx esxVar = this.f16390a;
        Map l = esxVar.l();
        if (l != null) {
            return l.get(this.f16391b);
        }
        d();
        int i = this.f16392c;
        if (i == -1) {
            return null;
        }
        return esxVar.s()[i];
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        esx esxVar = this.f16390a;
        Map l = esxVar.l();
        Object obj2 = this.f16391b;
        if (l != null) {
            return l.put(obj2, obj);
        }
        d();
        int i = this.f16392c;
        if (i == -1) {
            esxVar.put(obj2, obj);
            return null;
        }
        Object obj3 = esxVar.s()[i];
        esxVar.s()[this.f16392c] = obj;
        return obj3;
    }
}
