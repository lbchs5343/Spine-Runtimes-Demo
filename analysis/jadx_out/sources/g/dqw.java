package g;

import com.google.android.gms.internal.ads.zzfwq;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

/* loaded from: classes3.dex */
public class dqw implements Iterator {

    /* renamed from: b, reason: collision with root package name */
    public Object f14653b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f14654c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f14655d = 1;

    /* renamed from: e, reason: collision with root package name */
    public final Iterator f14656e;

    public dqw(dfb dfbVar, Iterator it) {
        this.f14656e = it;
        this.f14654c = dfbVar;
    }

    public dqw(dtv dtvVar) {
        this.f14654c = dtvVar;
        Collection collection = dtvVar.f14799e;
        this.f14653b = collection;
        this.f14656e = collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    public dqw(dtv dtvVar, ListIterator listIterator) {
        this.f14654c = dtvVar;
        this.f14653b = dtvVar.f14799e;
        this.f14656e = listIterator;
    }

    public dqw(geh gehVar) {
        this.f14654c = gehVar;
        this.f14656e = gehVar.f17983f.entrySet().iterator();
    }

    public void f() {
        dtv dtvVar = (dtv) this.f14654c;
        dtvVar.zzb();
        if (dtvVar.f14799e != ((Collection) this.f14653b)) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f14655d) {
            case 0:
                break;
            case 1:
                break;
            default:
                f();
                break;
        }
        return this.f14656e.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f14655d) {
            case 0:
                Map.Entry entry = (Map.Entry) this.f14656e.next();
                this.f14653b = (Collection) entry.getValue();
                return ((geh) this.f14654c).j(entry);
            case 1:
                Map.Entry entry2 = (Map.Entry) this.f14656e.next();
                this.f14653b = entry2;
                return entry2.getKey();
            default:
                f();
                return this.f14656e.next();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f14655d) {
            case 0:
                zzfwq.zzl(((Collection) this.f14653b) != null, "no calls to next() since the last call to remove()");
                this.f14656e.remove();
                ((geh) this.f14654c).f17984g.f18558e -= ((Collection) this.f14653b).size();
                ((Collection) this.f14653b).clear();
                this.f14653b = null;
                break;
            case 1:
                zzfwq.zzl(((Map.Entry) this.f14653b) != null, "no calls to next() since the last call to remove()");
                Collection collection = (Collection) ((Map.Entry) this.f14653b).getValue();
                this.f14656e.remove();
                ((dfb) this.f14654c).f14082d.f18558e -= collection.size();
                collection.clear();
                this.f14653b = null;
                break;
            default:
                this.f14656e.remove();
                dtv dtvVar = (dtv) this.f14654c;
                gpx gpxVar = dtvVar.f14797c;
                gpxVar.f18558e--;
                dtvVar.h();
                break;
        }
    }
}
