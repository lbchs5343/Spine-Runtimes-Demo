package g;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class flc extends grs {
    public int i;
    public Map j;
    public Map k;
    public int l;

    public flc(ur urVar) {
        super(urVar);
        this.l = 1;
        Map map = Collections.EMPTY_MAP;
        this.j = map;
        this.k = map;
    }

    @Override // g.grs, g.eos
    public final eos a(char c2) {
        this.x.append(c2);
        this.i++;
        return this;
    }

    @Override // g.grs, g.eos
    public final void b(cdv cdvVar) {
        if (cdvVar == null) {
            return;
        }
        q(cdvVar, this.x.length());
    }

    @Override // g.grs, g.eos
    public final eos c(flc flcVar) {
        this.l--;
        int length = this.x.length();
        for (Map.Entry entry : flcVar.j.entrySet()) {
            q((cdv) entry.getValue(), ((Integer) entry.getKey()).intValue() + length);
        }
        for (Map.Entry entry2 : flcVar.k.entrySet()) {
            int intValue = ((Integer) entry2.getKey()).intValue() + this.l;
            Integer num = (Integer) entry2.getValue();
            num.intValue();
            if (this.k.isEmpty()) {
                this.k = new TreeMap();
            }
            this.k.put(Integer.valueOf(intValue), num);
        }
        this.l += flcVar.l;
        this.i = flcVar.i;
        this.x.append((CharSequence) flcVar.x);
        return this;
    }

    @Override // g.grs, g.eos
    public final /* bridge */ /* synthetic */ eos d(String str) {
        o(str);
        return this;
    }

    @Override // g.grs, g.eos
    public final void e(int i) {
        if (i == 0) {
            return;
        }
        int i2 = this.l;
        if (this.k.isEmpty()) {
            this.k = new TreeMap();
        }
        this.k.put(Integer.valueOf(i2), Integer.valueOf(i));
    }

    @Override // g.grs, g.eos
    public final void f(ahw ahwVar) {
        q(ahwVar, this.x.length() - this.i);
    }

    @Override // g.grs, g.eos
    public final emz finish() {
        String sb = this.x.toString();
        this.x = null;
        return new bov(sb, this.k, this.j);
    }

    @Override // g.grs, g.eos
    public final void g(cfr cfrVar) {
        if (cfrVar == null) {
            return;
        }
        b(new aev(cfrVar));
    }

    @Override // g.grs, g.eos
    public final /* bridge */ /* synthetic */ eos h(String str) {
        p(str);
        return this;
    }

    @Override // g.grs
    public final void m() {
        this.x.append(this.w);
        this.l++;
        this.i = 0;
    }

    @Override // g.grs
    public final void n() {
        this.x.append(this.y);
        this.i = this.y.length() + this.i;
    }

    public final void o(String str) {
        this.x.append(str);
        this.i = str.length() + this.i;
    }

    public final void p(String str) {
        int i;
        String str2 = this.w;
        if (!str.contains(str2)) {
            this.x.append(str);
            return;
        }
        StringBuilder sb = this.x;
        StringBuilder o = awf.o(str2);
        o.append(this.y);
        sb.append(str.replace(str2, o.toString()));
        int i2 = this.l;
        foj fojVar = foj.f17138a;
        if (!str.isEmpty() && str2 != null && !str2.isEmpty()) {
            int length = str2.length();
            int i3 = 0;
            i = 0;
            while (true) {
                int indexOf = str.indexOf(str2, i3);
                if (indexOf == -1) {
                    break;
                }
                i++;
                i3 = indexOf + length;
            }
        } else {
            i = 0;
        }
        this.l = i2 + i;
        this.i = 0;
    }

    public final void q(cdv cdvVar, int i) {
        if (this.j.isEmpty()) {
            this.j = new HashMap();
        }
        this.j.put(Integer.valueOf(i), cdvVar);
    }

    @Override // g.grs
    /* renamed from: r */
    public final /* bridge */ /* synthetic */ grs h(String str) {
        p(str);
        return this;
    }

    @Override // g.grs
    /* renamed from: s */
    public final grs a(char c2) {
        this.x.append(c2);
        this.i++;
        return this;
    }

    @Override // g.grs
    /* renamed from: t */
    public final /* bridge */ /* synthetic */ grs d(String str) {
        o(str);
        return this;
    }
}
