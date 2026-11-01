package g;

/* loaded from: classes.dex */
public final class ekh extends gsh {

    /* renamed from: a, reason: collision with root package name */
    public final long f15702a;

    public ekh(long j, cwx cwxVar) {
        if (j == 0 || !cwxVar.m()) {
            this.f15702a = j;
            this.h = cwxVar;
        } else {
            throw new gck("Wrong literal type: " + cwxVar + " for value: " + j);
        }
    }

    @Override // g.gsh
    public final gsh b() {
        ekh ekhVar = new ekh(this.f15702a, this.h);
        ekhVar.s(this);
        ekhVar._bb(this.ae);
        return ekhVar;
    }

    @Override // g.gsh
    public final String d() {
        return Long.toString(this.f15702a);
    }

    public final boolean e() {
        int i = fwn.f17524a[this.h.f().ordinal()];
        return i == 1 || i == 2 || i == 3 || i == 4 || i == 5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ekh.class == obj.getClass()) {
            ekh ekhVar = (ekh) obj;
            if (this.f15702a == ekhVar.f15702a && this.h.equals(ekhVar.h)) {
                return true;
            }
        }
        return false;
    }

    @Override // g.flv
    public final void f(cwx cwxVar) {
        this.h = cwxVar;
    }

    @Override // g.gsh
    public final boolean g() {
        return this.f15702a == 0;
    }

    public final int hashCode() {
        long j = this.f15702a;
        return (this.h.az * 31) + ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        try {
            String b2 = pp.b(this.f15702a, this.h, foj.f17138a, true, false);
            if (this.h.equals(cwx.at) && (b2.equals("true") || b2.equals("false"))) {
                return b2;
            }
            return "(" + b2 + ' ' + this.h + ')';
        } catch (gck unused) {
            return "(" + this.f15702a + ' ' + this.h + ')';
        }
    }
}
