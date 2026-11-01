package g;

import java.util.Collections;

/* loaded from: classes.dex */
public final class awr {

    /* renamed from: a, reason: collision with root package name */
    public ffs f10989a;

    /* renamed from: b, reason: collision with root package name */
    public String f10990b;

    /* renamed from: c, reason: collision with root package name */
    public final cqc f10991c;

    /* renamed from: d, reason: collision with root package name */
    public final String f10992d;

    /* renamed from: e, reason: collision with root package name */
    public ag f10993e;

    public awr(cqc cqcVar, String str, ag agVar) {
        this.f10991c = cqcVar;
        this.f10992d = str;
        this.f10993e = agVar;
    }

    public final mf f() {
        cqc cqcVar = this.f10991c;
        dba dbaVar = cvm.f13590a;
        try {
            return (mf) cvm.f(this, new eoc(cqcVar.l, this, 0));
        } catch (uc e2) {
            cvm.f13590a.l("Decode error", e2);
            flc ac = cqcVar.j.ac();
            ac.o("Error decode ");
            ac.o(this.f10993e.toString().toLowerCase());
            evh.j(ac, e2.getCause());
            String str = this.f10990b;
            if (str == null) {
                str = this.f10992d;
            }
            return new mf(str, Collections.EMPTY_LIST, ac.finish(), gju.TEXT);
        }
    }

    public final String toString() {
        return "ResourceFile{name='" + this.f10992d + "', type=" + this.f10993e + '}';
    }
}
