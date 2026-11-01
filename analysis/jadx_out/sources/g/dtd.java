package g;

import java.io.File;

/* loaded from: classes3.dex */
public final class dtd extends brr {

    /* renamed from: a, reason: collision with root package name */
    public final bze f14761a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ epx f14762b;

    public dtd(bze bzeVar, epx epxVar) {
        this.f14762b = epxVar;
        this.f14761a = bzeVar;
    }

    @Override // g.brr
    public final boolean c(Object obj, Object obj2) {
        return ((File) obj) == ((File) obj2);
    }

    @Override // g.brr, java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f14762b.compare((eih) ((File) obj), (eih) ((File) obj2));
    }

    @Override // g.brr
    public final boolean d(Object obj, Object obj2) {
        return ((File) obj).equals((File) obj2);
    }

    @Override // g.etl
    public final void e(int i, int i2) {
        this.f14761a.notifyItemRangeInserted(i, i2);
    }

    @Override // g.etl
    public final void g(int i, int i2) {
        this.f14761a.notifyItemRangeRemoved(i, i2);
    }

    @Override // g.brr, g.etl
    public final void h(int i, int i2, Object obj) {
        this.f14761a.notifyItemRangeChanged(i, i2, obj);
    }
}
