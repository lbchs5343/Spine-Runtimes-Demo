package g;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowId;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public abstract class fqk implements Cloneable {
    public buj aj;
    public ArrayList an;
    public ArrayList ao;
    public to[] ba;
    public static final Animator[] ad = new Animator[0];

    /* renamed from: ab, reason: collision with root package name */
    public static final int[] f17244ab = {2, 1, 3, 4};
    public static final cuf ac = new cuf(12);
    public static final ThreadLocal ae = new ThreadLocal();
    public final String au = getClass().getName();
    public long aw = -1;
    public long am = -1;
    public TimeInterpolator ar = null;
    public final ArrayList as = new ArrayList();
    public final ArrayList bb = new ArrayList();
    public dpa ai = new dpa(5);
    public dpa af = new dpa(5);
    public h av = null;
    public final int[] al = f17244ab;
    public final ArrayList ax = new ArrayList();
    public Animator[] ak = ad;
    public int ag = 0;
    public boolean az = false;
    public boolean at = false;
    public fqk aq = null;
    public ArrayList ah = null;
    public ArrayList ap = new ArrayList();
    public cuf ay = ac;

    public static boolean bc(fuz fuzVar, fuz fuzVar2, String str) {
        Object obj = fuzVar.f17460a.get(str);
        Object obj2 = fuzVar2.f17460a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return !obj.equals(obj2);
    }

    public static void bd(dpa dpaVar, View view, fuz fuzVar) {
        tl tlVar = (tl) dpaVar.f14569g;
        tl tlVar2 = (tl) dpaVar.f14565c;
        SparseArray sparseArray = (SparseArray) dpaVar.f14566d;
        asv asvVar = (asv) dpaVar.f14567e;
        tlVar.put(view, fuzVar);
        int id = view.getId();
        if (id >= 0) {
            if (sparseArray.indexOfKey(id) >= 0) {
                sparseArray.put(id, null);
            } else {
                sparseArray.put(id, view);
            }
        }
        WeakHashMap weakHashMap = goi.f18490c;
        String g2 = cd.g(view);
        if (g2 != null) {
            if (tlVar2.containsKey(g2)) {
                tlVar2.put(g2, null);
            } else {
                tlVar2.put(g2, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (asvVar.f10775c) {
                    int i = asvVar.f10774b;
                    long[] jArr = asvVar.f10776d;
                    Object[] objArr = asvVar.f10773a;
                    int i2 = 0;
                    for (int i3 = 0; i3 < i; i3++) {
                        Object obj = objArr[i3];
                        if (obj != dyd.r) {
                            if (i3 != i2) {
                                jArr[i2] = jArr[i3];
                                objArr[i2] = obj;
                                objArr[i3] = null;
                            }
                            i2++;
                        }
                    }
                    asvVar.f10775c = false;
                    asvVar.f10774b = i2;
                }
                if (erl.as(asvVar.f10776d, asvVar.f10774b, itemIdAtPosition) < 0) {
                    view.setHasTransientState(true);
                    asvVar.l(itemIdAtPosition, view);
                    return;
                }
                View view2 = (View) asvVar.i(itemIdAtPosition);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                    asvVar.l(itemIdAtPosition, null);
                }
            }
        }
    }

    public static tl be() {
        ThreadLocal threadLocal = ae;
        tl tlVar = (tl) threadLocal.get();
        if (tlVar != null) {
            return tlVar;
        }
        tl tlVar2 = new tl(0);
        threadLocal.set(tlVar2);
        return tlVar2;
    }

    public final void bf(fqk fqkVar, bco bcoVar) {
        fqk fqkVar2 = this.aq;
        if (fqkVar2 != null) {
            fqkVar2.bf(fqkVar, bcoVar);
        }
        ArrayList arrayList = this.ah;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        int size = this.ah.size();
        to[] toVarArr = this.ba;
        if (toVarArr == null) {
            toVarArr = new to[size];
        }
        this.ba = null;
        to[] toVarArr2 = (to[]) this.ah.toArray(toVarArr);
        for (int i = 0; i < size; i++) {
            to toVar = toVarArr2[i];
            switch (bcoVar.f11293g) {
                case 4:
                    toVar.e(fqkVar);
                    break;
                case 5:
                    toVar.d(fqkVar);
                    break;
                case 6:
                    toVar.a(fqkVar);
                    break;
                case 7:
                    toVar.b();
                    break;
                default:
                    toVar.c();
                    break;
            }
            toVarArr2[i] = null;
        }
        this.ba = toVarArr2;
    }

    public final void bg() {
        if (this.ag == 0) {
            bf(this, bco.f11291e);
            this.at = false;
        }
        this.ag++;
    }

    public final void bh(ViewGroup viewGroup, boolean z) {
        bl(z);
        ArrayList arrayList = this.as;
        int size = arrayList.size();
        ArrayList arrayList2 = this.bb;
        if (size <= 0 && arrayList2.size() <= 0) {
            bo(viewGroup, z);
            return;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            View findViewById = viewGroup.findViewById(((Integer) arrayList.get(i)).intValue());
            if (findViewById != null) {
                fuz fuzVar = new fuz(findViewById);
                if (z) {
                    t(fuzVar);
                } else {
                    p(fuzVar);
                }
                fuzVar.f17462c.add(this);
                s(fuzVar);
                if (z) {
                    bd(this.ai, findViewById, fuzVar);
                } else {
                    bd(this.af, findViewById, fuzVar);
                }
            }
        }
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            View view = (View) arrayList2.get(i2);
            fuz fuzVar2 = new fuz(view);
            if (z) {
                t(fuzVar2);
            } else {
                p(fuzVar2);
            }
            fuzVar2.f17462c.add(this);
            s(fuzVar2);
            if (z) {
                bd(this.ai, view, fuzVar2);
            } else {
                bd(this.af, view, fuzVar2);
            }
        }
    }

    public void bi(to toVar) {
        if (this.ah == null) {
            this.ah = new ArrayList();
        }
        this.ah.add(toVar);
    }

    public final fuz bj(View view, boolean z) {
        h hVar = this.av;
        if (hVar != null) {
            return hVar.bj(view, z);
        }
        return (fuz) ((tl) (z ? this.ai : this.af).f14569g).get(view);
    }

    public final fqk bk() {
        h hVar = this.av;
        return hVar != null ? hVar.bk() : this;
    }

    public final void bl(boolean z) {
        if (z) {
            ((tl) this.ai.f14569g).clear();
            ((SparseArray) this.ai.f14566d).clear();
            ((asv) this.ai.f14567e).e();
        } else {
            ((tl) this.af.f14569g).clear();
            ((SparseArray) this.af.f14566d).clear();
            ((asv) this.af.f14567e).e();
        }
    }

    public final void bm() {
        int i = this.ag - 1;
        this.ag = i;
        if (i == 0) {
            bf(this, bco.f11288a);
            for (int i2 = 0; i2 < ((asv) this.ai.f14567e).f(); i2++) {
                View view = (View) ((asv) this.ai.f14567e).j(i2);
                if (view != null) {
                    view.setHasTransientState(false);
                }
            }
            for (int i3 = 0; i3 < ((asv) this.af.f14567e).f(); i3++) {
                View view2 = (View) ((asv) this.af.f14567e).j(i3);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                }
            }
            this.at = true;
        }
    }

    public final boolean bn(View view) {
        int id = view.getId();
        ArrayList arrayList = this.as;
        int size = arrayList.size();
        ArrayList arrayList2 = this.bb;
        return (size == 0 && arrayList2.size() == 0) || arrayList.contains(Integer.valueOf(id)) || arrayList2.contains(view);
    }

    public final void bo(View view, boolean z) {
        if (view == null) {
            return;
        }
        view.getId();
        if (view.getParent() instanceof ViewGroup) {
            fuz fuzVar = new fuz(view);
            if (z) {
                t(fuzVar);
            } else {
                p(fuzVar);
            }
            fuzVar.f17462c.add(this);
            s(fuzVar);
            if (z) {
                bd(this.ai, view, fuzVar);
            } else {
                bd(this.af, view, fuzVar);
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                bo(viewGroup.getChildAt(i), z);
            }
        }
    }

    public final fuz bp(View view, boolean z) {
        h hVar = this.av;
        if (hVar != null) {
            return hVar.bp(view, z);
        }
        ArrayList arrayList = z ? this.ao : this.an;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            }
            fuz fuzVar = (fuz) arrayList.get(i);
            if (fuzVar == null) {
                return null;
            }
            if (fuzVar.f17461b == view) {
                break;
            }
            i++;
        }
        if (i >= 0) {
            return (fuz) (z ? this.an : this.ao).get(i);
        }
        return null;
    }

    public void cancel() {
        ArrayList arrayList = this.ax;
        int size = arrayList.size();
        Animator[] animatorArr = (Animator[]) arrayList.toArray(this.ak);
        this.ak = ad;
        for (int i = size - 1; i >= 0; i--) {
            Animator animator = animatorArr[i];
            animatorArr[i] = null;
            animator.cancel();
        }
        this.ak = animatorArr;
        bf(this, bco.f11289b);
    }

    public void f(TimeInterpolator timeInterpolator) {
        this.ar = timeInterpolator;
    }

    public Animator g(ViewGroup viewGroup, fuz fuzVar, fuz fuzVar2) {
        return null;
    }

    public void h(buj bujVar) {
        this.aj = bujVar;
    }

    @Override // 
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public fqk clone() {
        try {
            fqk fqkVar = (fqk) super.clone();
            fqkVar.ap = new ArrayList();
            fqkVar.ai = new dpa(5);
            fqkVar.af = new dpa(5);
            fqkVar.ao = null;
            fqkVar.an = null;
            fqkVar.aq = this;
            fqkVar.ah = null;
            return fqkVar;
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }

    public void j(View view) {
        this.bb.add(view);
    }

    public fqk k(to toVar) {
        fqk fqkVar;
        ArrayList arrayList = this.ah;
        if (arrayList != null) {
            if (!arrayList.remove(toVar) && (fqkVar = this.aq) != null) {
                fqkVar.k(toVar);
            }
            if (this.ah.size() == 0) {
                this.ah = null;
            }
        }
        return this;
    }

    public void l(View view) {
        if (this.az) {
            if (!this.at) {
                ArrayList arrayList = this.ax;
                int size = arrayList.size();
                Animator[] animatorArr = (Animator[]) arrayList.toArray(this.ak);
                this.ak = ad;
                for (int i = size - 1; i >= 0; i--) {
                    Animator animator = animatorArr[i];
                    animatorArr[i] = null;
                    animator.resume();
                }
                this.ak = animatorArr;
                bf(this, bco.f11292f);
            }
            this.az = false;
        }
    }

    public void m(View view) {
        this.bb.remove(view);
    }

    public String n(String str) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(getClass().getSimpleName());
        sb.append("@");
        sb.append(Integer.toHexString(hashCode()));
        sb.append(": ");
        if (this.am != -1) {
            sb.append("dur(");
            sb.append(this.am);
            sb.append(") ");
        }
        if (this.aw != -1) {
            sb.append("dly(");
            sb.append(this.aw);
            sb.append(") ");
        }
        if (this.ar != null) {
            sb.append("interp(");
            sb.append(this.ar);
            sb.append(") ");
        }
        ArrayList arrayList = this.as;
        int size = arrayList.size();
        ArrayList arrayList2 = this.bb;
        if (size > 0 || arrayList2.size() > 0) {
            sb.append("tgts(");
            if (arrayList.size() > 0) {
                for (int i = 0; i < arrayList.size(); i++) {
                    if (i > 0) {
                        sb.append(", ");
                    }
                    sb.append(arrayList.get(i));
                }
            }
            if (arrayList2.size() > 0) {
                for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                    if (i2 > 0) {
                        sb.append(", ");
                    }
                    sb.append(arrayList2.get(i2));
                }
            }
            sb.append(")");
        }
        return sb.toString();
    }

    public void o(long j) {
        this.aw = j;
    }

    public abstract void p(fuz fuzVar);

    public void q() {
    }

    public void r(ViewGroup viewGroup, dpa dpaVar, dpa dpaVar2, ArrayList arrayList, ArrayList arrayList2) {
        int i;
        int i2;
        View view;
        fuz fuzVar;
        Animator animator;
        fuz fuzVar2;
        tl be = be();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        bk().getClass();
        int i3 = 0;
        while (i3 < size) {
            fuz fuzVar3 = (fuz) arrayList.get(i3);
            fuz fuzVar4 = (fuz) arrayList2.get(i3);
            if (fuzVar3 != null && !fuzVar3.f17462c.contains(this)) {
                fuzVar3 = null;
            }
            if (fuzVar4 != null && !fuzVar4.f17462c.contains(this)) {
                fuzVar4 = null;
            }
            if ((fuzVar3 != null || fuzVar4 != null) && (fuzVar3 == null || fuzVar4 == null || z(fuzVar3, fuzVar4))) {
                Animator g2 = g(viewGroup, fuzVar3, fuzVar4);
                if (g2 != null) {
                    String str = this.au;
                    if (fuzVar4 != null) {
                        view = fuzVar4.f17461b;
                        String[] y = y();
                        if (y != null && y.length > 0) {
                            fuzVar2 = new fuz(view);
                            fuz fuzVar5 = (fuz) ((tl) dpaVar2.f14569g).get(view);
                            i = size;
                            if (fuzVar5 != null) {
                                int i4 = 0;
                                while (i4 < y.length) {
                                    String str2 = y[i4];
                                    fuzVar2.f17460a.put(str2, fuzVar5.f17460a.get(str2));
                                    i4++;
                                    i3 = i3;
                                    fuzVar5 = fuzVar5;
                                }
                            }
                            i2 = i3;
                            int i5 = be.f11294g;
                            int i6 = 0;
                            while (true) {
                                if (i6 >= i5) {
                                    animator = g2;
                                    break;
                                }
                                glx glxVar = (glx) be.get((Animator) be.n(i6));
                                if (glxVar.f18381f != null && glxVar.f18378c == view && glxVar.f18380e.equals(str) && glxVar.f18381f.equals(fuzVar2)) {
                                    animator = null;
                                    break;
                                }
                                i6++;
                            }
                        } else {
                            i = size;
                            i2 = i3;
                            animator = g2;
                            fuzVar2 = null;
                        }
                        g2 = animator;
                        fuzVar = fuzVar2;
                    } else {
                        i = size;
                        i2 = i3;
                        view = fuzVar3.f17461b;
                        fuzVar = null;
                    }
                    if (g2 != null) {
                        WindowId windowId = viewGroup.getWindowId();
                        glx glxVar2 = new glx();
                        glxVar2.f18378c = view;
                        glxVar2.f18380e = str;
                        glxVar2.f18381f = fuzVar;
                        glxVar2.f18376a = windowId;
                        glxVar2.f18377b = this;
                        glxVar2.f18379d = g2;
                        be.put(g2, glxVar2);
                        this.ap.add(g2);
                    }
                    i3 = i2 + 1;
                    size = i;
                }
            }
            i = size;
            i2 = i3;
            i3 = i2 + 1;
            size = i;
        }
        if (sparseIntArray.size() != 0) {
            for (int i7 = 0; i7 < sparseIntArray.size(); i7++) {
                glx glxVar3 = (glx) be.get((Animator) this.ap.get(sparseIntArray.keyAt(i7)));
                glxVar3.f18379d.setStartDelay(glxVar3.f18379d.getStartDelay() + (sparseIntArray.valueAt(i7) - Long.MAX_VALUE));
            }
        }
    }

    public void s(fuz fuzVar) {
    }

    public abstract void t(fuz fuzVar);

    public final String toString() {
        return n("");
    }

    public void u(View view) {
        if (this.at) {
            return;
        }
        ArrayList arrayList = this.ax;
        int size = arrayList.size();
        Animator[] animatorArr = (Animator[]) arrayList.toArray(this.ak);
        this.ak = ad;
        for (int i = size - 1; i >= 0; i--) {
            Animator animator = animatorArr[i];
            animatorArr[i] = null;
            animator.pause();
        }
        this.ak = animatorArr;
        bf(this, bco.f11290c);
        this.az = true;
    }

    public void v(long j) {
        this.am = j;
    }

    public void w(cuf cufVar) {
        if (cufVar == null) {
            this.ay = ac;
        } else {
            this.ay = cufVar;
        }
    }

    public void x() {
        bg();
        tl be = be();
        Iterator it = this.ap.iterator();
        while (it.hasNext()) {
            Animator animator = (Animator) it.next();
            if (be.containsKey(animator)) {
                bg();
                if (animator != null) {
                    animator.addListener(new gno(this, be));
                    long j = this.am;
                    if (j >= 0) {
                        animator.setDuration(j);
                    }
                    long j2 = this.aw;
                    if (j2 >= 0) {
                        animator.setStartDelay(animator.getStartDelay() + j2);
                    }
                    TimeInterpolator timeInterpolator = this.ar;
                    if (timeInterpolator != null) {
                        animator.setInterpolator(timeInterpolator);
                    }
                    animator.addListener(new cod(6, this));
                    animator.start();
                }
            }
        }
        this.ap.clear();
        bm();
    }

    public String[] y() {
        return null;
    }

    public boolean z(fuz fuzVar, fuz fuzVar2) {
        if (fuzVar != null && fuzVar2 != null) {
            String[] y = y();
            if (y != null) {
                for (String str : y) {
                    if (bc(fuzVar, fuzVar2, str)) {
                        return true;
                    }
                }
            } else {
                Iterator it = fuzVar.f17460a.keySet().iterator();
                while (it.hasNext()) {
                    if (bc(fuzVar, fuzVar2, (String) it.next())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
