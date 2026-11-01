package g;

import android.animation.TimeInterpolator;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class h extends fqk {

    /* renamed from: a, reason: collision with root package name */
    public int f19088a;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f19092e = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public boolean f19089b = true;

    /* renamed from: d, reason: collision with root package name */
    public boolean f19091d = false;

    /* renamed from: c, reason: collision with root package name */
    public int f19090c = 0;

    public final void _k(fqk fqkVar) {
        this.f19092e.add(fqkVar);
        fqkVar.av = this;
        long j = this.am;
        if (j >= 0) {
            fqkVar.v(j);
        }
        if ((this.f19090c & 1) != 0) {
            fqkVar.f(this.ar);
        }
        if ((this.f19090c & 2) != 0) {
            fqkVar.q();
        }
        if ((this.f19090c & 4) != 0) {
            fqkVar.w(this.ay);
        }
        if ((this.f19090c & 8) != 0) {
            fqkVar.h(this.aj);
        }
    }

    @Override // g.fqk
    public final void cancel() {
        super.cancel();
        int size = this.f19092e.size();
        for (int i = 0; i < size; i++) {
            ((fqk) this.f19092e.get(i)).cancel();
        }
    }

    @Override // g.fqk
    public final void f(TimeInterpolator timeInterpolator) {
        this.f19090c |= 1;
        ArrayList arrayList = this.f19092e;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((fqk) this.f19092e.get(i)).f(timeInterpolator);
            }
        }
        this.ar = timeInterpolator;
    }

    @Override // g.fqk
    public final void h(buj bujVar) {
        this.aj = bujVar;
        this.f19090c |= 8;
        int size = this.f19092e.size();
        for (int i = 0; i < size; i++) {
            ((fqk) this.f19092e.get(i)).h(bujVar);
        }
    }

    @Override // g.fqk
    /* renamed from: i */
    public final fqk clone() {
        h hVar = (h) super.clone();
        hVar.f19092e = new ArrayList();
        int size = this.f19092e.size();
        for (int i = 0; i < size; i++) {
            fqk clone = ((fqk) this.f19092e.get(i)).clone();
            hVar.f19092e.add(clone);
            clone.av = hVar;
        }
        return hVar;
    }

    @Override // g.fqk
    public final void j(View view) {
        for (int i = 0; i < this.f19092e.size(); i++) {
            ((fqk) this.f19092e.get(i)).j(view);
        }
        this.bb.add(view);
    }

    @Override // g.fqk
    public final fqk k(to toVar) {
        super.k(toVar);
        return this;
    }

    @Override // g.fqk
    public final void l(View view) {
        super.l(view);
        int size = this.f19092e.size();
        for (int i = 0; i < size; i++) {
            ((fqk) this.f19092e.get(i)).l(view);
        }
    }

    @Override // g.fqk
    public final void m(View view) {
        for (int i = 0; i < this.f19092e.size(); i++) {
            ((fqk) this.f19092e.get(i)).m(view);
        }
        this.bb.remove(view);
    }

    @Override // g.fqk
    public final String n(String str) {
        String n = super.n(str);
        for (int i = 0; i < this.f19092e.size(); i++) {
            StringBuilder l = tn.l(n, "\n");
            l.append(((fqk) this.f19092e.get(i)).n(str + "  "));
            n = l.toString();
        }
        return n;
    }

    @Override // g.fqk
    public final void o(long j) {
        this.aw = j;
    }

    @Override // g.fqk
    public final void p(fuz fuzVar) {
        if (bn(fuzVar.f17461b)) {
            Iterator it = this.f19092e.iterator();
            while (it.hasNext()) {
                fqk fqkVar = (fqk) it.next();
                if (fqkVar.bn(fuzVar.f17461b)) {
                    fqkVar.p(fuzVar);
                    fuzVar.f17462c.add(fqkVar);
                }
            }
        }
    }

    @Override // g.fqk
    public final void q() {
        this.f19090c |= 2;
        int size = this.f19092e.size();
        for (int i = 0; i < size; i++) {
            ((fqk) this.f19092e.get(i)).q();
        }
    }

    @Override // g.fqk
    public final void r(ViewGroup viewGroup, dpa dpaVar, dpa dpaVar2, ArrayList arrayList, ArrayList arrayList2) {
        long j = this.aw;
        int size = this.f19092e.size();
        for (int i = 0; i < size; i++) {
            fqk fqkVar = (fqk) this.f19092e.get(i);
            if (j > 0 && (this.f19089b || i == 0)) {
                long j2 = fqkVar.aw;
                if (j2 > 0) {
                    fqkVar.o(j2 + j);
                } else {
                    fqkVar.o(j);
                }
            }
            fqkVar.r(viewGroup, dpaVar, dpaVar2, arrayList, arrayList2);
        }
    }

    @Override // g.fqk
    public final void s(fuz fuzVar) {
        int size = this.f19092e.size();
        for (int i = 0; i < size; i++) {
            ((fqk) this.f19092e.get(i)).s(fuzVar);
        }
    }

    @Override // g.fqk
    public final void t(fuz fuzVar) {
        if (bn(fuzVar.f17461b)) {
            Iterator it = this.f19092e.iterator();
            while (it.hasNext()) {
                fqk fqkVar = (fqk) it.next();
                if (fqkVar.bn(fuzVar.f17461b)) {
                    fqkVar.t(fuzVar);
                    fuzVar.f17462c.add(fqkVar);
                }
            }
        }
    }

    @Override // g.fqk
    public final void u(View view) {
        super.u(view);
        int size = this.f19092e.size();
        for (int i = 0; i < size; i++) {
            ((fqk) this.f19092e.get(i)).u(view);
        }
    }

    @Override // g.fqk
    public final void v(long j) {
        ArrayList arrayList;
        this.am = j;
        if (j < 0 || (arrayList = this.f19092e) == null) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((fqk) this.f19092e.get(i)).v(j);
        }
    }

    @Override // g.fqk
    public final void w(cuf cufVar) {
        super.w(cufVar);
        this.f19090c |= 4;
        if (this.f19092e != null) {
            for (int i = 0; i < this.f19092e.size(); i++) {
                ((fqk) this.f19092e.get(i)).w(cufVar);
            }
        }
    }

    @Override // g.fqk
    public final void x() {
        if (this.f19092e.isEmpty()) {
            bg();
            bm();
            return;
        }
        bec becVar = new bec();
        becVar.i = this;
        Iterator it = this.f19092e.iterator();
        while (it.hasNext()) {
            ((fqk) it.next()).bi(becVar);
        }
        this.f19088a = this.f19092e.size();
        if (this.f19089b) {
            Iterator it2 = this.f19092e.iterator();
            while (it2.hasNext()) {
                ((fqk) it2.next()).x();
            }
            return;
        }
        for (int i = 1; i < this.f19092e.size(); i++) {
            ((fqk) this.f19092e.get(i - 1)).bi(new bec((fqk) this.f19092e.get(i)));
        }
        fqk fqkVar = (fqk) this.f19092e.get(0);
        if (fqkVar != null) {
            fqkVar.x();
        }
    }
}
