package g;

import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class dpe {

    /* renamed from: a, reason: collision with root package name */
    public final int f14581a;

    /* renamed from: b, reason: collision with root package name */
    public final aju f14582b;

    /* renamed from: c, reason: collision with root package name */
    public final daw f14583c;

    /* renamed from: d, reason: collision with root package name */
    public final ib f14584d;

    /* renamed from: e, reason: collision with root package name */
    public final int f14585e;

    /* renamed from: f, reason: collision with root package name */
    public int f14586f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f14587g;
    public final int h;
    public final int i;

    public dpe(ib ibVar, ArrayList arrayList, int i, aju ajuVar, daw dawVar, int i2, int i3, int i4) {
        this.f14584d = ibVar;
        this.f14587g = arrayList;
        this.h = i;
        this.f14582b = ajuVar;
        this.f14583c = dawVar;
        this.f14585e = i2;
        this.i = i3;
        this.f14581a = i4;
    }

    public static dpe j(dpe dpeVar, int i, aju ajuVar, daw dawVar, int i2) {
        if ((i2 & 1) != 0) {
            i = dpeVar.h;
        }
        int i3 = i;
        if ((i2 & 2) != 0) {
            ajuVar = dpeVar.f14582b;
        }
        aju ajuVar2 = ajuVar;
        if ((i2 & 4) != 0) {
            dawVar = dpeVar.f14583c;
        }
        daw dawVar2 = dawVar;
        int i4 = dpeVar.f14585e;
        int i5 = dpeVar.i;
        int i6 = dpeVar.f14581a;
        bff.p(dawVar2, "request");
        return new dpe(dpeVar.f14584d, dpeVar.f14587g, i3, ajuVar2, dawVar2, i4, i5, i6);
    }

    public final enb k(daw dawVar) {
        bff.p(dawVar, "request");
        ArrayList arrayList = this.f14587g;
        int size = arrayList.size();
        int i = this.h;
        if (i >= size) {
            throw new IllegalStateException("Check failed.");
        }
        this.f14586f++;
        aju ajuVar = this.f14582b;
        if (ajuVar != null) {
            if (!((cpr) ajuVar.f10347e).k((eyn) dawVar.f13886e)) {
                throw new IllegalStateException(("network interceptor " + arrayList.get(i - 1) + " must retain the same host and port").toString());
            }
            if (this.f14586f != 1) {
                throw new IllegalStateException(("network interceptor " + arrayList.get(i - 1) + " must call proceed() exactly once").toString());
            }
        }
        int i2 = i + 1;
        dpe j = j(this, i2, null, dawVar, 58);
        brb brbVar = (brb) arrayList.get(i);
        enb a2 = brbVar.a(j);
        if (a2 == null) {
            throw new NullPointerException("interceptor " + brbVar + " returned null");
        }
        if (ajuVar != null && i2 < arrayList.size() && j.f14586f != 1) {
            throw new IllegalStateException(("network interceptor " + brbVar + " must call proceed() exactly once").toString());
        }
        if (a2.f15835b != null) {
            return a2;
        }
        throw new IllegalStateException(("interceptor " + brbVar + " returned a response with no body").toString());
    }
}
