package g;

import j$.util.Objects;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public final class cos implements Iterator {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ gpx f13241b;

    /* renamed from: c, reason: collision with root package name */
    public final Iterator f13242c;

    /* renamed from: d, reason: collision with root package name */
    public Collection f13243d = null;

    /* renamed from: a, reason: collision with root package name */
    public Iterator f13240a = gvc.zza;

    public cos(gpx gpxVar) {
        this.f13241b = gpxVar;
        this.f13242c = gpxVar.f18557d.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f13242c.hasNext() || this.f13240a.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.f13240a.hasNext()) {
            Map.Entry entry = (Map.Entry) this.f13242c.next();
            entry.getKey();
            Collection collection = (Collection) entry.getValue();
            this.f13243d = collection;
            this.f13240a = collection.iterator();
        }
        return this.f13240a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f13240a.remove();
        Collection collection = this.f13243d;
        Objects.requireNonNull(collection);
        if (collection.isEmpty()) {
            this.f13242c.remove();
        }
        gpx gpxVar = this.f13241b;
        gpxVar.f18558e--;
    }
}
