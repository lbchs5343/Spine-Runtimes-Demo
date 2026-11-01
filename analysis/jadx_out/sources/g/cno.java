package g;

import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class cno {

    /* renamed from: a, reason: collision with root package name */
    public final List f13182a;

    /* renamed from: b, reason: collision with root package name */
    public final List f13183b;

    /* renamed from: c, reason: collision with root package name */
    public final cqc f13184c;

    /* renamed from: d, reason: collision with root package name */
    public final List f13185d;

    /* renamed from: e, reason: collision with root package name */
    public final cci f13186e;

    /* renamed from: f, reason: collision with root package name */
    public final cno f13187f;

    /* renamed from: g, reason: collision with root package name */
    public final List f13188g;

    static {
        dsr.k(cno.class);
    }

    public cno(cci cciVar, cno cnoVar) {
        List list = Collections.EMPTY_LIST;
        this.f13182a = list;
        this.f13183b = list;
        this.f13185d = list;
        this.f13188g = list;
        this.f13184c = null;
        this.f13186e = cciVar;
        this.f13187f = cnoVar;
    }

    public cno(cci cciVar, cqc cqcVar) {
        List list = Collections.EMPTY_LIST;
        this.f13182a = list;
        this.f13183b = list;
        this.f13185d = list;
        this.f13188g = list;
        this.f13184c = cqcVar;
        this.f13186e = cciVar;
        this.f13187f = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof cno) {
            return this.f13186e.equals(((cno) obj).f13186e);
        }
        return false;
    }

    public final cqc h() {
        cno cnoVar = this.f13187f;
        return cnoVar != null ? cnoVar.h() : this.f13184c;
    }

    public final int hashCode() {
        return this.f13186e.hashCode();
    }

    public final cno i() {
        cno y;
        acq acqVar = acq.r;
        cci cciVar = this.f13186e;
        glh glhVar = (glh) cciVar.l.k(acqVar);
        if (glhVar != null) {
            y = h().y(glhVar.f18343b);
        } else {
            dxa dxaVar = (dxa) cciVar.l.k(acq.y);
            y = dxaVar != null ? h().y(dxaVar.f14994a) : this.f13187f;
        }
        return y == null ? this : y.i();
    }

    public final String toString() {
        return this.f13186e.ak.m();
    }
}
