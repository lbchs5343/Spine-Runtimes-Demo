package g;

import java.util.List;

/* loaded from: classes.dex */
public final class bot implements eue {

    /* renamed from: a, reason: collision with root package name */
    public final List f11930a;

    public bot(List list) {
        this.f11930a = list;
    }

    @Override // g.eue
    public final String c() {
        return toString();
    }

    @Override // g.eue
    public final /* bridge */ /* synthetic */ fky d() {
        return acq.o;
    }

    @Override // g.eue
    public final /* synthetic */ boolean e() {
        return false;
    }

    public final String toString() {
        return "Debug Info:\n  " + evh.h("\n  ", this.f11930a);
    }
}
