package g;

/* loaded from: classes.dex */
public class grs implements eos {
    public static final dba u = dsr.k(grs.class);
    public final String v;
    public final String w;
    public StringBuilder x;
    public String y;
    public int z;

    public grs() {
        this.x = new StringBuilder(8192);
        this.y = "";
        this.z = 0;
        this.v = "    ";
        this.w = ur.f20115a;
    }

    public grs(ur urVar) {
        this.x = new StringBuilder(8192);
        this.y = "";
        this.z = 0;
        urVar.getClass();
        this.v = urVar.au;
        this.w = urVar.x;
    }

    public final void aa() {
        this.z++;
        af();
    }

    public final void ab() {
        int i = this.z - 1;
        this.z = i;
        if (i < 0) {
            u.k("Indent < 0");
            this.z = 0;
        }
        af();
    }

    public final grs ac(int i) {
        if (i == 0) {
            ag();
            return this;
        }
        ag();
        e(i);
        return this;
    }

    public final grs ad(char c2) {
        ag();
        a(c2);
        return this;
    }

    public final grs ae(String str) {
        ag();
        d(str);
        return this;
    }

    public final void af() {
        String sb;
        int i = this.z;
        String str = evh.f16225a;
        if (i < 1) {
            sb = "";
        } else {
            String str2 = this.v;
            if (i == 1) {
                sb = str2;
            } else {
                StringBuilder sb2 = new StringBuilder(str2.length() * i);
                for (int i2 = 0; i2 < i; i2++) {
                    sb2.append(str2);
                }
                sb = sb2.toString();
            }
        }
        this.y = sb;
    }

    public final void ag() {
        m();
        n();
    }

    @Override // g.eos
    public void b(cdv cdvVar) {
    }

    @Override // g.eos
    public eos c(flc flcVar) {
        this.x.append(flcVar.x.toString());
        return this;
    }

    @Override // g.eos
    public void e(int i) {
    }

    @Override // g.eos
    public void f(ahw ahwVar) {
    }

    @Override // g.eos
    public emz finish() {
        String str = this.w;
        int length = str.length();
        String sb = (this.x.length() <= length || !this.x.substring(0, length).equals(str)) ? this.x.toString() : this.x.substring(length);
        this.x = null;
        return new grx(sb);
    }

    @Override // g.eos
    public void g(cfr cfrVar) {
    }

    public void m() {
        this.x.append(this.w);
    }

    public void n() {
        this.x.append(this.y);
    }

    @Override // g.eos
    /* renamed from: r, reason: merged with bridge method [inline-methods] */
    public grs h(String str) {
        String str2 = this.w;
        if (!str.contains(str2)) {
            this.x.append(str);
            return this;
        }
        this.x.append(str.replace(str2, str2 + this.y));
        return this;
    }

    @Override // g.eos
    /* renamed from: s, reason: merged with bridge method [inline-methods] */
    public grs a(char c2) {
        this.x.append(c2);
        return this;
    }

    @Override // g.eos
    /* renamed from: t, reason: merged with bridge method [inline-methods] */
    public grs d(String str) {
        this.x.append(str);
        return this;
    }

    public final String toString() {
        return this.x.toString();
    }
}
