package g;

import com.google.android.gms.internal.ads.zzfwr;
import com.google.android.gms.internal.ads.zzfxp;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes3.dex */
public final class fiu extends zzfxp {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f16858d = 1;

    /* renamed from: e, reason: collision with root package name */
    public final Iterator f16859e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f16860f;

    public fiu(gho ghoVar) {
        this.f16860f = ghoVar;
        this.f16859e = ghoVar.f18167a.iterator();
    }

    public fiu(Iterator it, zzfwr zzfwrVar) {
        this.f16859e = it;
        this.f16860f = zzfwrVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzfxp
    public final Object c() {
        zzfwr zzfwrVar;
        Object next;
        Set set;
        Object next2;
        switch (this.f16858d) {
            case 0:
                do {
                    Iterator it = this.f16859e;
                    if (!it.hasNext()) {
                        this.f8222b = 3;
                        break;
                    } else {
                        zzfwrVar = (zzfwr) this.f16860f;
                        next = it.next();
                    }
                } while (!zzfwrVar.zza(next));
            default:
                do {
                    Iterator it2 = this.f16859e;
                    if (!it2.hasNext()) {
                        this.f8222b = 3;
                        break;
                    } else {
                        set = ((gho) this.f16860f).f18168b;
                        next2 = it2.next();
                    }
                } while (!set.contains(next2));
        }
        return null;
    }
}
