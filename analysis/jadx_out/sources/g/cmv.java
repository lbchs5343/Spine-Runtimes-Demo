package g;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class cmv implements cgt {

    /* renamed from: g, reason: collision with root package name */
    public final gkr f13144g;
    public final erm h;
    public final bpt i;
    public final gqc j;
    public final adr k;

    public cmv(bpt bptVar) {
        this.i = bptVar;
        byte[] bArr = bptVar.f11977c;
        gqc gqcVar = new gqc(bArr, 0, 6);
        this.j = gqcVar;
        adr adrVar = new adr();
        gqcVar.f18566ab = 8;
        int ai = gqcVar.ai();
        int[] iArr = new int[ai + 1];
        int i = 1;
        while (i < ai) {
            int ap = gqcVar.ap();
            iArr[i] = gqcVar.f18566ab;
            fha fhaVar = fha.f16779a[ap];
            if (fhaVar == null) {
                throw new cyf(awf.ac(ap, "Unknown constant pool tag: "));
            }
            int i2 = heh.f19335a[fhaVar.ordinal()];
            if (i2 == 1) {
                gqcVar.at(gqcVar.ai());
            } else if (i2 == 2 || i2 == 3) {
                gqcVar.at(8);
                i++;
            } else {
                gqcVar.at(fhaVar.c());
            }
            i++;
        }
        adrVar.f10054b = iArr;
        int i3 = gqcVar.f18566ab;
        adrVar.f10055c = i3;
        gqcVar.f18566ab = i3 + 6;
        gqcVar.at(gqcVar.ai() * 2);
        adrVar.f10056d = gqcVar.f18566ab;
        int ai2 = gqcVar.ai();
        for (int i4 = 0; i4 < ai2; i4++) {
            gqcVar.at(6);
            int ai3 = gqcVar.ai();
            for (int i5 = 0; i5 < ai3; i5++) {
                gqcVar.at(2);
                gqcVar.at(gqcVar.bc());
            }
        }
        int ai4 = gqcVar.ai();
        for (int i6 = 0; i6 < ai4; i6++) {
            gqcVar.at(6);
            int ai5 = gqcVar.ai();
            for (int i7 = 0; i7 < ai5; i7++) {
                gqcVar.at(2);
                gqcVar.at(gqcVar.bc());
            }
        }
        adrVar.f10053a = gqcVar.f18566ab;
        this.k = adrVar;
        gkr gkrVar = new gkr(bptVar, this, new gqc(bArr, gqcVar.f18566ab, 6), adrVar, 1);
        this.f13144g = gkrVar;
        this.h = new erm(this, gkrVar);
    }

    @Override // g.cgt
    public final String a() {
        int i = this.k.f10055c + 4;
        gqc gqcVar = this.j;
        gqcVar.f18566ab = i;
        int ai = gqcVar.ai();
        if (ai == 0) {
            return null;
        }
        return this.f13144g.h(ai);
    }

    @Override // g.cgt
    public final void b(bux buxVar, bux buxVar2) {
        adr adrVar = this.k;
        int i = adrVar.f10055c + 2;
        gqc gqcVar = this.j;
        gqcVar.f18566ab = i;
        int ai = gqcVar.ai();
        gkr gkrVar = this.f13144g;
        String h = gkrVar.h(ai);
        int i2 = adrVar.f10056d;
        gqcVar.f18566ab = i2;
        gqc gqcVar2 = new gqc((byte[]) gqcVar.z, i2, 6);
        int ai2 = gqcVar2.ai();
        buxVar.c(ai2);
        erm ermVar = this.h;
        if (ai2 != 0) {
            gps gpsVar = new gps();
            gpsVar.f18546f = h;
            for (int i3 = 0; i3 < ai2; i3++) {
                int ai3 = gqcVar2.ai();
                int ai4 = gqcVar2.ai();
                int ai5 = gqcVar2.ai();
                geg f2 = ermVar.f(gqcVar2, erm.f16031b);
                gpsVar.f18543b = ai3;
                gpsVar.f18545e = gkrVar.r(ai4);
                gpsVar.f18547g = gkrVar.r(ai5);
                gpsVar.f18544c = f2;
                buxVar.n(gpsVar);
            }
        }
        int ai6 = gqcVar2.ai();
        buxVar2.c(ai6);
        if (ai6 != 0) {
            efh efhVar = new efh();
            efhVar.f15438g = h;
            glr glrVar = new glr(this, efhVar);
            for (int i4 = 0; i4 < ai6; i4++) {
                int ai7 = gqcVar2.ai();
                int ai8 = gqcVar2.ai();
                int ai9 = gqcVar2.ai();
                geg f3 = ermVar.f(gqcVar2, erm.f16031b);
                efh efhVar2 = glrVar.f18367f;
                efhVar2.f14484d = null;
                efhVar2.f14485e = null;
                efhVar2.k(this.i, i4, false);
                efhVar2.h = gkrVar.r(ai8);
                efhVar2.i = gkrVar.r(ai9);
                if (efhVar2.h.equals("<init>")) {
                    ai7 |= 65536;
                }
                glrVar.f18368g = ai7;
                glrVar.f18365d = f3;
                buxVar2.n(glrVar);
            }
        }
    }

    @Override // g.cgt
    public final int c() {
        int i = this.k.f10055c;
        gqc gqcVar = this.j;
        gqcVar.f18566ab = i;
        return gqcVar.ai();
    }

    @Override // g.cgt
    public final List d() {
        int i = this.k.f10055c + 6;
        gqc gqcVar = this.j;
        gqcVar.f18566ab = i;
        return gqcVar.av(this.f13144g);
    }

    @Override // g.cgt
    public final cgt e() {
        return this;
    }

    @Override // g.cgt
    public final String f() {
        return this.i.f11976b;
    }

    @Override // g.cgt
    public final List getAttributes() {
        int i = this.k.f10053a;
        gqc gqcVar = this.j;
        gqcVar.f18566ab = i;
        geg f2 = this.h.f(gqcVar, erm.f16031b);
        int d2 = f2.d();
        if (d2 == 0) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(d2);
        acr.bj(cfy.b(f2), arrayList);
        acr.bj((eue) f2.c(zz.f20425g), arrayList);
        acr.bj((eue) f2.c(zz.r), arrayList);
        acr.bj((eue) f2.c(zz.j), arrayList);
        return arrayList;
    }

    @Override // g.cgt
    public final String getType() {
        int i = this.k.f10055c + 2;
        gqc gqcVar = this.j;
        gqcVar.f18566ab = i;
        return this.f13144g.h(gqcVar.ai());
    }

    public final String toString() {
        return this.i.f11976b;
    }
}
