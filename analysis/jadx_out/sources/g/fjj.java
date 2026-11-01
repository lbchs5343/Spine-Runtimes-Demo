package g;

import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class fjj implements gkt {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16888a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f16889b;

    public /* synthetic */ fjj(int i, Object obj) {
        this.f16888a = i;
        this.f16889b = obj;
    }

    @Override // g.gkt
    public final Iterator iterator() {
        switch (this.f16888a) {
            case 0:
                return ((List) this.f16889b).iterator();
            default:
                return (Iterator) this.f16889b;
        }
    }
}
