package g;

/* loaded from: classes3.dex */
public final class heb {

    /* renamed from: a, reason: collision with root package name */
    public static final gei f19325a;

    /* renamed from: b, reason: collision with root package name */
    public static final gei f19326b;

    /* renamed from: c, reason: collision with root package name */
    public static final gei f19327c;

    /* renamed from: d, reason: collision with root package name */
    public static final gei f19328d;

    /* renamed from: e, reason: collision with root package name */
    public static final gei f19329e;

    /* renamed from: f, reason: collision with root package name */
    public static final gei f19330f;

    /* renamed from: g, reason: collision with root package name */
    public final gei f19331g;
    public final gei h;
    public final int i;

    static {
        gei geiVar = gei.n;
        f19326b = dwm.ac(":");
        f19327c = dwm.ac(":status");
        f19328d = dwm.ac(":method");
        f19330f = dwm.ac(":path");
        f19325a = dwm.ac(":scheme");
        f19329e = dwm.ac(":authority");
    }

    public heb(gei geiVar, gei geiVar2) {
        bff.p(geiVar, abn.EXTRA_UA_APP_NAME);
        bff.p(geiVar2, "value");
        this.f19331g = geiVar;
        this.h = geiVar2;
        this.i = geiVar2.d() + geiVar.d() + 32;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public heb(gei geiVar, String str) {
        this(geiVar, dwm.ac(str));
        bff.p(geiVar, abn.EXTRA_UA_APP_NAME);
        bff.p(str, "value");
        gei geiVar2 = gei.n;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public heb(String str, String str2) {
        this(dwm.ac(str), dwm.ac(str2));
        bff.p(str, abn.EXTRA_UA_APP_NAME);
        bff.p(str2, "value");
        gei geiVar = gei.n;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof heb)) {
            return false;
        }
        heb hebVar = (heb) obj;
        return bff.n(this.f19331g, hebVar.f19331g) && bff.n(this.h, hebVar.h);
    }

    public final int hashCode() {
        return this.h.hashCode() + (this.f19331g.hashCode() * 31);
    }

    public final String toString() {
        return this.f19331g.q() + ": " + this.h.q();
    }
}
