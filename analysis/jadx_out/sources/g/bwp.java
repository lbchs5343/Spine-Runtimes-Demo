package g;

import android.os.Build;
import android.view.View;
import java.io.Serializable;
import java.util.ConcurrentModificationException;

/* loaded from: classes.dex */
public abstract class bwp {

    /* renamed from: a, reason: collision with root package name */
    public int f12330a;

    /* renamed from: b, reason: collision with root package name */
    public final Serializable f12331b;

    /* renamed from: c, reason: collision with root package name */
    public int f12332c;

    /* renamed from: d, reason: collision with root package name */
    public int f12333d;

    public bwp(int i, Class cls, int i2, int i3) {
        this.f12332c = i;
        this.f12331b = cls;
        this.f12330a = i2;
        this.f12333d = i3;
    }

    public bwp(fzq fzqVar) {
        int i;
        bff.p(fzqVar, "map");
        this.f12331b = fzqVar;
        this.f12333d = -1;
        i = fzqVar.modCount;
        this.f12330a = i;
        e();
    }

    public void e() {
        int[] iArr;
        fzq fzqVar = (fzq) this.f12331b;
        while (this.f12332c < fzqVar.length) {
            iArr = fzqVar.presenceArray;
            int i = this.f12332c;
            if (iArr[i] >= 0) {
                return;
            } else {
                this.f12332c = i + 1;
            }
        }
    }

    public void f(View view, Object obj) {
        Object tag;
        if (Build.VERSION.SDK_INT >= this.f12333d) {
            j(view, obj);
            return;
        }
        if (Build.VERSION.SDK_INT >= this.f12333d) {
            tag = i(view);
        } else {
            tag = view.getTag(this.f12332c);
            if (!((Class) this.f12331b).isInstance(tag)) {
                tag = null;
            }
        }
        if (h(tag, obj)) {
            View.AccessibilityDelegate l = goi.l(view);
            amk amkVar = l == null ? null : l instanceof dln ? ((dln) l).f14374a : new amk(l);
            if (amkVar == null) {
                amkVar = new amk();
            }
            goi.ab(view, amkVar);
            view.setTag(this.f12332c, obj);
            goi.w(this.f12330a, view);
        }
    }

    public void g() {
        int i;
        i = ((fzq) this.f12331b).modCount;
        if (i != this.f12330a) {
            throw new ConcurrentModificationException();
        }
    }

    public abstract boolean h(Object obj, Object obj2);

    public boolean hasNext() {
        return this.f12332c < ((fzq) this.f12331b).length;
    }

    public abstract Object i(View view);

    public abstract void j(View view, Object obj);

    public void remove() {
        int i;
        fzq fzqVar = (fzq) this.f12331b;
        g();
        if (this.f12333d == -1) {
            throw new IllegalStateException("Call next() before removing element from the iterator.");
        }
        fzqVar.p();
        fzqVar.s(this.f12333d);
        this.f12333d = -1;
        i = fzqVar.modCount;
        this.f12330a = i;
    }
}
