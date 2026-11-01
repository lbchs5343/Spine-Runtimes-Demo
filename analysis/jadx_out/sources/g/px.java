package g;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class px implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f19835a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ fxy f19836b;

    /* renamed from: c, reason: collision with root package name */
    public final String f19837c;

    /* renamed from: d, reason: collision with root package name */
    public final long f19838d;

    public px(fxy fxyVar, String str, long j, ArrayList arrayList, long[] jArr) {
        bff.p(str, "key");
        bff.p(jArr, "lengths");
        this.f19836b = fxyVar;
        this.f19837c = str;
        this.f19838d = j;
        this.f19835a = arrayList;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Iterator it = this.f19835a.iterator();
        while (it.hasNext()) {
            erq.m((cpv) it.next());
        }
    }
}
