package g;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzgzs;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public final class nw implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19736a;

    /* renamed from: b, reason: collision with root package name */
    public final Iterator f19737b;

    public nw(cde cdeVar) {
        Bundle bundle;
        this.f19736a = 1;
        bundle = cdeVar.zza;
        this.f19737b = bundle.keySet().iterator();
    }

    public nw(ghl ghlVar) {
        this.f19736a = 3;
        this.f19737b = ghlVar.f18164a.iterator();
    }

    public /* synthetic */ nw(Iterator it, int i) {
        this.f19736a = i;
        this.f19737b = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f19736a) {
        }
        return this.f19737b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f19736a) {
            case 0:
                return new bsa((String) this.f19737b.next());
            case 1:
                return (String) this.f19737b.next();
            case 2:
                Map.Entry entry = (Map.Entry) this.f19737b.next();
                return entry.getValue() instanceof zzgzs ? new dfl(entry) : entry;
            default:
                return (String) this.f19737b.next();
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        switch (this.f19736a) {
            case 1:
                throw new UnsupportedOperationException("Remove not supported");
            case 2:
                this.f19737b.remove();
                return;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
