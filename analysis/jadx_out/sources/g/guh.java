package g;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class guh extends dgn {
    public static TimeInterpolator m;
    public ArrayList n;
    public ArrayList o;
    public ArrayList p;
    public ArrayList q;
    public ArrayList r;
    public ArrayList s;
    public ArrayList t;
    public ArrayList u;
    public ArrayList v;
    public ArrayList w;
    public boolean x;
    public ArrayList y;

    public static void z(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((androidx.recyclerview.widget.p) arrayList.get(size)).n.animate().cancel();
        }
    }

    public final boolean aa(gbk gbkVar, androidx.recyclerview.widget.p pVar) {
        if (gbkVar.f17867e == pVar) {
            gbkVar.f17867e = null;
        } else {
            if (gbkVar.f17865c != pVar) {
                return false;
            }
            gbkVar.f17865c = null;
        }
        View view = pVar.n;
        View view2 = pVar.n;
        view.setAlpha(1.0f);
        view2.setTranslationX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        view2.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        l(pVar);
        return true;
    }

    public final void ab(androidx.recyclerview.widget.p pVar) {
        if (m == null) {
            m = new ValueAnimator().getInterpolator();
        }
        pVar.n.animate().setInterpolator(m);
        h(pVar);
    }

    public final void ac() {
        if (k()) {
            return;
        }
        ArrayList arrayList = this.f14143e;
        if (arrayList.size() > 0) {
            throw tn.w(0, arrayList);
        }
        arrayList.clear();
    }

    public final void ad(ArrayList arrayList, androidx.recyclerview.widget.p pVar) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            gbk gbkVar = (gbk) arrayList.get(size);
            if (aa(gbkVar, pVar) && gbkVar.f17865c == null && gbkVar.f17867e == null) {
                arrayList.remove(gbkVar);
            }
        }
    }

    public final boolean ae(androidx.recyclerview.widget.p pVar, int i, int i2, int i3, int i4) {
        View view = pVar.n;
        int translationX = i + ((int) view.getTranslationX());
        int translationY = i2 + ((int) view.getTranslationY());
        ab(pVar);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            l(pVar);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        ArrayList arrayList = this.v;
        dto dtoVar = new dto();
        dtoVar.f14787c = pVar;
        dtoVar.f14788d = translationX;
        dtoVar.f14789e = translationY;
        dtoVar.f14785a = i3;
        dtoVar.f14786b = i4;
        arrayList.add(dtoVar);
        return true;
    }

    @Override // g.dgn
    public final void h(androidx.recyclerview.widget.p pVar) {
        ArrayList arrayList = this.r;
        ArrayList arrayList2 = this.t;
        ArrayList arrayList3 = this.q;
        View view = pVar.n;
        view.animate().cancel();
        ArrayList arrayList4 = this.v;
        int size = arrayList4.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (((dto) arrayList4.get(size)).f14787c == pVar) {
                view.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                view.setTranslationX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                l(pVar);
                arrayList4.remove(size);
            }
        }
        ad(this.o, pVar);
        if (this.n.remove(pVar)) {
            view.setAlpha(1.0f);
            l(pVar);
        }
        if (this.u.remove(pVar)) {
            view.setAlpha(1.0f);
            l(pVar);
        }
        for (int size2 = arrayList3.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList5 = (ArrayList) arrayList3.get(size2);
            ad(arrayList5, pVar);
            if (arrayList5.isEmpty()) {
                arrayList3.remove(size2);
            }
        }
        for (int size3 = arrayList2.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList6 = (ArrayList) arrayList2.get(size3);
            int size4 = arrayList6.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (((dto) arrayList6.get(size4)).f14787c == pVar) {
                    view.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    view.setTranslationX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    l(pVar);
                    arrayList6.remove(size4);
                    if (arrayList6.isEmpty()) {
                        arrayList2.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = arrayList.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList7 = (ArrayList) arrayList.get(size5);
            if (arrayList7.remove(pVar)) {
                view.setAlpha(1.0f);
                l(pVar);
                if (arrayList7.isEmpty()) {
                    arrayList.remove(size5);
                }
            }
        }
        this.w.remove(pVar);
        this.p.remove(pVar);
        this.y.remove(pVar);
        this.s.remove(pVar);
        ac();
    }

    @Override // g.dgn
    public final void i() {
        ArrayList arrayList = this.q;
        ArrayList arrayList2 = this.r;
        ArrayList arrayList3 = this.t;
        ArrayList arrayList4 = this.o;
        ArrayList arrayList5 = this.u;
        ArrayList arrayList6 = this.n;
        ArrayList arrayList7 = this.v;
        int size = arrayList7.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            dto dtoVar = (dto) arrayList7.get(size);
            View view = dtoVar.f14787c.n;
            view.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            view.setTranslationX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            l(dtoVar.f14787c);
            arrayList7.remove(size);
        }
        for (int size2 = arrayList6.size() - 1; size2 >= 0; size2--) {
            l((androidx.recyclerview.widget.p) arrayList6.get(size2));
            arrayList6.remove(size2);
        }
        int size3 = arrayList5.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            androidx.recyclerview.widget.p pVar = (androidx.recyclerview.widget.p) arrayList5.get(size3);
            pVar.n.setAlpha(1.0f);
            l(pVar);
            arrayList5.remove(size3);
        }
        for (int size4 = arrayList4.size() - 1; size4 >= 0; size4--) {
            gbk gbkVar = (gbk) arrayList4.get(size4);
            androidx.recyclerview.widget.p pVar2 = gbkVar.f17865c;
            if (pVar2 != null) {
                aa(gbkVar, pVar2);
            }
            androidx.recyclerview.widget.p pVar3 = gbkVar.f17867e;
            if (pVar3 != null) {
                aa(gbkVar, pVar3);
            }
        }
        arrayList4.clear();
        if (k()) {
            for (int size5 = arrayList3.size() - 1; size5 >= 0; size5--) {
                ArrayList arrayList8 = (ArrayList) arrayList3.get(size5);
                for (int size6 = arrayList8.size() - 1; size6 >= 0; size6--) {
                    dto dtoVar2 = (dto) arrayList8.get(size6);
                    View view2 = dtoVar2.f14787c.n;
                    view2.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    view2.setTranslationX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    l(dtoVar2.f14787c);
                    arrayList8.remove(size6);
                    if (arrayList8.isEmpty()) {
                        arrayList3.remove(arrayList8);
                    }
                }
            }
            for (int size7 = arrayList2.size() - 1; size7 >= 0; size7--) {
                ArrayList arrayList9 = (ArrayList) arrayList2.get(size7);
                for (int size8 = arrayList9.size() - 1; size8 >= 0; size8--) {
                    androidx.recyclerview.widget.p pVar4 = (androidx.recyclerview.widget.p) arrayList9.get(size8);
                    pVar4.n.setAlpha(1.0f);
                    l(pVar4);
                    arrayList9.remove(size8);
                    if (arrayList9.isEmpty()) {
                        arrayList2.remove(arrayList9);
                    }
                }
            }
            for (int size9 = arrayList.size() - 1; size9 >= 0; size9--) {
                ArrayList arrayList10 = (ArrayList) arrayList.get(size9);
                for (int size10 = arrayList10.size() - 1; size10 >= 0; size10--) {
                    gbk gbkVar2 = (gbk) arrayList10.get(size10);
                    androidx.recyclerview.widget.p pVar5 = gbkVar2.f17865c;
                    if (pVar5 != null) {
                        aa(gbkVar2, pVar5);
                    }
                    androidx.recyclerview.widget.p pVar6 = gbkVar2.f17867e;
                    if (pVar6 != null) {
                        aa(gbkVar2, pVar6);
                    }
                    if (arrayList10.isEmpty()) {
                        arrayList.remove(arrayList10);
                    }
                }
            }
            z(this.w);
            z(this.s);
            z(this.p);
            z(this.y);
            ArrayList arrayList11 = this.f14143e;
            if (arrayList11.size() > 0) {
                throw tn.w(0, arrayList11);
            }
            arrayList11.clear();
        }
    }

    @Override // g.dgn
    public final boolean j(androidx.recyclerview.widget.p pVar, androidx.recyclerview.widget.p pVar2, geq geqVar, geq geqVar2) {
        int i;
        int i2;
        int i3 = geqVar.f17998a;
        int i4 = geqVar.f17999b;
        if (pVar2.w()) {
            int i5 = geqVar.f17998a;
            i2 = geqVar.f17999b;
            i = i5;
        } else {
            i = geqVar2.f17998a;
            i2 = geqVar2.f17999b;
        }
        if (pVar == pVar2) {
            return ae(pVar, i3, i4, i, i2);
        }
        View view = pVar.n;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        float alpha = view.getAlpha();
        ab(pVar);
        view.setTranslationX(translationX);
        view.setTranslationY(translationY);
        view.setAlpha(alpha);
        View view2 = pVar2.n;
        ab(pVar2);
        view2.setTranslationX(-((int) ((i - i3) - translationX)));
        view2.setTranslationY(-((int) ((i2 - i4) - translationY)));
        view2.setAlpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        ArrayList arrayList = this.o;
        gbk gbkVar = new gbk();
        gbkVar.f17865c = pVar;
        gbkVar.f17867e = pVar2;
        gbkVar.f17868f = i3;
        gbkVar.f17863a = i4;
        gbkVar.f17864b = i;
        gbkVar.f17866d = i2;
        arrayList.add(gbkVar);
        return true;
    }

    @Override // g.dgn
    public final boolean k() {
        return (this.u.isEmpty() && this.o.isEmpty() && this.v.isEmpty() && this.n.isEmpty() && this.s.isEmpty() && this.w.isEmpty() && this.p.isEmpty() && this.y.isEmpty() && this.t.isEmpty() && this.r.isEmpty() && this.q.isEmpty()) ? false : true;
    }
}
