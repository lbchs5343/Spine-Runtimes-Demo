package g;

import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public final class cbc {

    /* renamed from: a, reason: collision with root package name */
    public final List f12577a;

    /* renamed from: b, reason: collision with root package name */
    public final int f12578b;

    /* renamed from: c, reason: collision with root package name */
    public final float f12579c;

    /* renamed from: d, reason: collision with root package name */
    public final float f12580d;

    /* renamed from: e, reason: collision with root package name */
    public final long f12581e;

    /* renamed from: f, reason: collision with root package name */
    public final int f12582f;

    /* renamed from: g, reason: collision with root package name */
    public final ayj f12583g;
    public final List h;
    public final bwd i;
    public final boolean j;
    public final aoy k;
    public final long l;
    public final cnc m;
    public final float n;
    public final float o;
    public final eld p;
    public final cgf q;
    public final int r;
    public final dlz s;
    public final List t;
    public final String u;
    public final fzn v;
    public final String w;
    public final dpa x;

    public cbc(List list, cgf cgfVar, String str, long j, ayj ayjVar, long j2, String str2, List list2, eld eldVar, int i, int i2, int i3, float f2, float f3, float f4, float f5, dlz dlzVar, dpa dpaVar, List list3, bwd bwdVar, cnc cncVar, boolean z, aoy aoyVar, fzn fznVar) {
        this.h = list;
        this.q = cgfVar;
        this.u = str;
        this.f12581e = j;
        this.f12583g = ayjVar;
        this.l = j2;
        this.w = str2;
        this.f12577a = list2;
        this.p = eldVar;
        this.r = i;
        this.f12578b = i2;
        this.f12582f = i3;
        this.o = f2;
        this.f12580d = f3;
        this.f12579c = f4;
        this.n = f5;
        this.s = dlzVar;
        this.x = dpaVar;
        this.t = list3;
        this.i = bwdVar;
        this.m = cncVar;
        this.j = z;
        this.k = aoyVar;
        this.v = fznVar;
    }

    public final String toString() {
        return y("");
    }

    public final String y(String str) {
        int i;
        StringBuilder o = awf.o(str);
        o.append(this.u);
        o.append("\n");
        long j = this.l;
        cgf cgfVar = this.q;
        cbc cbcVar = (cbc) cgfVar.f12823a.get(j);
        if (cbcVar != null) {
            o.append("\t\tParents: ");
            o.append(cbcVar.u);
            for (cbc cbcVar2 = (cbc) cgfVar.f12823a.get(cbcVar.l); cbcVar2 != null; cbcVar2 = (cbc) cgfVar.f12823a.get(cbcVar2.l)) {
                o.append("->");
                o.append(cbcVar2.u);
            }
            o.append(str);
            o.append("\n");
        }
        List list = this.f12577a;
        if (!list.isEmpty()) {
            o.append(str);
            o.append("\tMasks: ");
            o.append(list.size());
            o.append("\n");
        }
        int i2 = this.r;
        if (i2 != 0 && (i = this.f12578b) != 0) {
            o.append(str);
            o.append("\tBackground: ");
            o.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(i2), Integer.valueOf(i), Integer.valueOf(this.f12582f)));
        }
        List list2 = this.h;
        if (!list2.isEmpty()) {
            o.append(str);
            o.append("\tShapes:\n");
            for (Object obj : list2) {
                o.append(str);
                o.append("\t\t");
                o.append(obj);
                o.append("\n");
            }
        }
        return o.toString();
    }
}
