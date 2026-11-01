package g;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class cig implements cgt {

    /* renamed from: g, reason: collision with root package name */
    public final dsg f12929g;
    public final ctw h;

    static {
        dsr.k(cig.class);
    }

    public cig(dsg dsgVar, ctw ctwVar) {
        this.f12929g = dsgVar;
        this.h = ctwVar;
    }

    @Override // g.cgt
    public final String a() {
        dsg dsgVar = this.f12929g;
        dsgVar.j(8);
        return dsgVar.g(((ByteBuffer) dsgVar.f14704a).getInt());
    }

    @Override // g.cgt
    public final void b(bux buxVar, bux buxVar2) {
        Map map;
        Map map2;
        Map map3;
        cig cigVar;
        int i;
        bux buxVar3;
        ctw ctwVar = this.h;
        dsg dsgVar = (dsg) ctwVar.f13504f;
        dsg dsgVar2 = this.f12929g;
        dsgVar2.j(24);
        int i2 = ((ByteBuffer) dsgVar2.f14704a).getInt();
        if (i2 == 0) {
            return;
        }
        dsg dsgVar3 = new dsg((eyc) dsgVar2.f14705b, i2);
        int u = byh.u(dsgVar3);
        int u2 = byh.u(dsgVar3);
        int u3 = byh.u(dsgVar3);
        int u4 = byh.u(dsgVar3);
        buxVar.c(u + u2);
        buxVar2.c(u3 + u4);
        dsgVar2.j(20);
        ctwVar.n(((ByteBuffer) dsgVar2.f14704a).getInt());
        if (ctwVar.h == 0) {
            map = Collections.EMPTY_MAP;
        } else {
            dsgVar.j(16);
            ByteBuffer byteBuffer = (ByteBuffer) dsgVar.f14704a;
            HashMap hashMap = new HashMap(ctwVar.h);
            for (int i3 = 0; i3 < ctwVar.h; i3++) {
                hashMap.put(Integer.valueOf(byteBuffer.getInt()), Integer.valueOf(byteBuffer.getInt()));
            }
            map = hashMap;
        }
        flq flqVar = new flq(ctwVar);
        flqVar.f17004g = getType();
        Map map4 = map;
        j(buxVar, dsgVar3, flqVar, u, map4, true);
        j(buxVar, dsgVar3, flqVar, u2, map4, false);
        glj gljVar = new glj(ctwVar);
        gljVar.h = new esi();
        if (ctwVar.f13501c == 0) {
            map2 = Collections.EMPTY_MAP;
        } else {
            dsgVar.j((ctwVar.h * 8) + 16);
            ByteBuffer byteBuffer2 = (ByteBuffer) dsgVar.f14704a;
            HashMap hashMap2 = new HashMap(ctwVar.f13501c);
            for (int i4 = 0; i4 < ctwVar.f13501c; i4++) {
                hashMap2.put(Integer.valueOf(byteBuffer2.getInt()), Integer.valueOf(byteBuffer2.getInt()));
            }
            map2 = hashMap2;
        }
        if (ctwVar.f13502d == 0) {
            map3 = Collections.EMPTY_MAP;
            i = u3;
            buxVar3 = buxVar2;
            cigVar = this;
        } else {
            dsgVar.j((ctwVar.f13501c * 8) + (ctwVar.h * 8) + 16);
            ByteBuffer byteBuffer3 = (ByteBuffer) dsgVar.f14704a;
            HashMap hashMap3 = new HashMap(ctwVar.f13502d);
            for (int i5 = 0; i5 < ctwVar.f13502d; i5++) {
                hashMap3.put(Integer.valueOf(byteBuffer3.getInt()), Integer.valueOf(byteBuffer3.getInt()));
            }
            map3 = hashMap3;
            cigVar = this;
            i = u3;
            buxVar3 = buxVar2;
        }
        cigVar.i(buxVar3, dsgVar3, gljVar, i, map2, map3);
        cigVar.i(buxVar3, dsgVar3, gljVar, u4, map2, map3);
    }

    @Override // g.cgt
    public final int c() {
        dsg dsgVar = this.f12929g;
        dsgVar.j(4);
        return ((ByteBuffer) dsgVar.f14704a).getInt();
    }

    @Override // g.cgt
    public final List d() {
        dsg dsgVar = this.f12929g;
        dsgVar.j(12);
        ByteBuffer byteBuffer = (ByteBuffer) dsgVar.f14704a;
        int i = byteBuffer.getInt();
        if (i == 0) {
            return Collections.EMPTY_LIST;
        }
        byteBuffer.position(i);
        return dsgVar.w();
    }

    @Override // g.cgt
    public final cgt e() {
        dsg u = this.f12929g.u();
        ctw ctwVar = this.h;
        return new cig(u, new ctw(((dsg) ctwVar.f13504f).u(), ((dsg) ctwVar.i).u()));
    }

    @Override // g.cgt
    public final String f() {
        return ((eyc) this.f12929g.f14705b).f16360c;
    }

    @Override // g.cgt
    public final List getAttributes() {
        List t;
        ArrayList arrayList = new ArrayList();
        dsg dsgVar = this.f12929g;
        dsgVar.j(16);
        String z = dsgVar.z(((ByteBuffer) dsgVar.f14704a).getInt());
        if (z != null && !z.isEmpty()) {
            arrayList.add(new arg(z));
        }
        String type = getType();
        dsgVar.j(20);
        int i = ((ByteBuffer) dsgVar.f14704a).getInt();
        ctw ctwVar = this.h;
        ctwVar.n(i);
        int i2 = ctwVar.f13505g;
        if (i2 == 0) {
            t = Collections.EMPTY_LIST;
        } else {
            ByteBuffer byteBuffer = (ByteBuffer) ((dsg) ctwVar.f13504f).f14704a;
            byteBuffer.position(i2);
            t = ctwVar.t(byteBuffer.getInt());
        }
        lt.b(type, arrayList, t);
        return arrayList;
    }

    @Override // g.cgt
    public final String getType() {
        dsg dsgVar = this.f12929g;
        dsgVar.j(0);
        String g2 = dsgVar.g(((ByteBuffer) dsgVar.f14704a).getInt());
        if (g2 != null) {
            return g2;
        }
        throw new NullPointerException("Unknown class type");
    }

    public final void i(bux buxVar, dsg dsgVar, glj gljVar, int i, Map map, Map map2) {
        dsg dsgVar2 = this.f12929g;
        gqc gqcVar = new gqc(7, dsgVar2.u());
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += byh.u(dsgVar);
            int u = byh.u(dsgVar);
            int u2 = byh.u(dsgVar);
            esi esiVar = gljVar.h;
            esiVar.f16087g = null;
            esiVar.h = null;
            esiVar.f16083c = null;
            esiVar.f16084d = null;
            esiVar.f16085e = ((((eyc) dsgVar2.f14705b).f16359b & 65535) << 16) | (65535 & i2);
            esiVar.f16086f = i2;
            esiVar.i = dsgVar2;
            gljVar.i = u;
            if (u2 == 0) {
                gljVar.f18348g = null;
            } else {
                gqcVar.f18566ab = i2;
                ((dsg) gqcVar.z).f14707d = u2;
                gljVar.f18348g = gqcVar;
            }
            Integer num = (Integer) map.get(Integer.valueOf(i2));
            gljVar.f18345d = num != null ? num.intValue() : 0;
            Integer num2 = (Integer) map2.get(Integer.valueOf(i2));
            gljVar.f18346e = num2 != null ? num2.intValue() : 0;
            buxVar.n(gljVar);
        }
    }

    public final void j(bux buxVar, dsg dsgVar, flq flqVar, int i, Map map, boolean z) {
        List list;
        dsg dsgVar2 = this.f12929g;
        if (z) {
            dsg u = dsgVar.u();
            dsgVar2.j(28);
            int i2 = ((ByteBuffer) dsgVar2.f14704a).getInt();
            if (i2 == 0) {
                list = Collections.EMPTY_LIST;
            } else {
                u.m(i2);
                list = fso.j(u, (dsg) this.h.i);
            }
        } else {
            list = null;
        }
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            i4 += byh.u(dsgVar);
            int u2 = byh.u(dsgVar);
            dsgVar2.l(flqVar, i4);
            flqVar.f17001c = u2;
            Integer num = (Integer) map.get(Integer.valueOf(i4));
            flqVar.f17003f = num != null ? num.intValue() : 0;
            flqVar.i = (!z || i3 >= list.size()) ? null : (ghr) list.get(i3);
            buxVar.n(flqVar);
            i3++;
        }
    }

    public final String toString() {
        return getType();
    }
}
