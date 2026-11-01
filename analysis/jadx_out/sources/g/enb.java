package g;

import java.io.Closeable;

/* loaded from: classes3.dex */
public final class enb implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final enb f15834a;

    /* renamed from: b, reason: collision with root package name */
    public final ehi f15835b;

    /* renamed from: c, reason: collision with root package name */
    public final enb f15836c;

    /* renamed from: d, reason: collision with root package name */
    public final String f15837d;

    /* renamed from: e, reason: collision with root package name */
    public final long f15838e;

    /* renamed from: f, reason: collision with root package name */
    public final long f15839f;

    /* renamed from: g, reason: collision with root package name */
    public final int f15840g;
    public final czl h;
    public final daw i;
    public final enb j;
    public final aqt k;
    public bjl l;
    public final aju m;
    public final dvq n;

    public enb(daw dawVar, aqt aqtVar, String str, int i, czl czlVar, dvq dvqVar, ehi ehiVar, enb enbVar, enb enbVar2, enb enbVar3, long j, long j2, aju ajuVar) {
        bff.p(dawVar, "request");
        bff.p(aqtVar, "protocol");
        bff.p(str, "message");
        this.i = dawVar;
        this.k = aqtVar;
        this.f15837d = str;
        this.f15840g = i;
        this.h = czlVar;
        this.n = dvqVar;
        this.f15835b = ehiVar;
        this.f15834a = enbVar;
        this.j = enbVar2;
        this.f15836c = enbVar3;
        this.f15839f = j;
        this.f15838e = j2;
        this.m = ajuVar;
    }

    public static String o(String str, enb enbVar) {
        enbVar.getClass();
        bff.p(str, abn.EXTRA_UA_APP_NAME);
        String c2 = enbVar.n.c(str);
        if (c2 == null) {
            return null;
        }
        return c2;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ehi ehiVar = this.f15835b;
        if (ehiVar == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed");
        }
        ehiVar.close();
    }

    public final boolean p() {
        int i = this.f15840g;
        return 200 <= i && i < 300;
    }

    public final hdt q() {
        hdt hdtVar = new hdt();
        hdtVar.f19298f = this.i;
        hdtVar.j = this.k;
        hdtVar.l = this.f15840g;
        hdtVar.f19295c = this.f15837d;
        hdtVar.f19297e = this.h;
        hdtVar.f19299g = this.n.f();
        hdtVar.m = this.f15835b;
        hdtVar.f19293a = this.f15834a;
        hdtVar.i = this.j;
        hdtVar.k = this.f15836c;
        hdtVar.f19294b = this.f15839f;
        hdtVar.f19296d = this.f15838e;
        hdtVar.h = this.m;
        return hdtVar;
    }

    public final bjl r() {
        bjl bjlVar = this.l;
        if (bjlVar != null) {
            return bjlVar;
        }
        bjl bjlVar2 = bjl.f11699a;
        bjl ax = afo.ax(this.n);
        this.l = ax;
        return ax;
    }

    public final String toString() {
        return "Response{protocol=" + this.k + ", code=" + this.f15840g + ", message=" + this.f15837d + ", url=" + ((eyn) this.i.f13886e) + '}';
    }
}
