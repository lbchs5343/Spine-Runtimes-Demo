package g;

import android.view.View;
import android.view.ViewPropertyAnimator;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class cmp implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ guh f13135a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13136b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArrayList f13137c;

    public /* synthetic */ cmp(guh guhVar, ArrayList arrayList, int i) {
        this.f13136b = i;
        this.f13135a = guhVar;
        this.f13137c = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f13136b) {
            case 0:
                ArrayList arrayList = this.f13137c;
                Iterator it = arrayList.iterator();
                while (true) {
                    boolean hasNext = it.hasNext();
                    guh guhVar = this.f13135a;
                    if (!hasNext) {
                        arrayList.clear();
                        guhVar.t.remove(arrayList);
                        break;
                    } else {
                        dto dtoVar = (dto) it.next();
                        androidx.recyclerview.widget.p pVar = dtoVar.f14787c;
                        int i = dtoVar.f14788d;
                        int i2 = dtoVar.f14789e;
                        int i3 = dtoVar.f14785a;
                        int i4 = dtoVar.f14786b;
                        guhVar.getClass();
                        View view = pVar.n;
                        int i5 = i3 - i;
                        int i6 = i4 - i2;
                        if (i5 != 0) {
                            view.animate().translationX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                        }
                        if (i6 != 0) {
                            view.animate().translationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                        }
                        ViewPropertyAnimator animate = view.animate();
                        guhVar.s.add(pVar);
                        animate.setDuration(guhVar.f14140b).setListener(new cke(guhVar, pVar, i5, view, i6, animate)).start();
                    }
                }
            case 1:
                ArrayList arrayList2 = this.f13137c;
                Iterator it2 = arrayList2.iterator();
                while (true) {
                    boolean hasNext2 = it2.hasNext();
                    guh guhVar2 = this.f13135a;
                    if (!hasNext2) {
                        arrayList2.clear();
                        guhVar2.q.remove(arrayList2);
                        break;
                    } else {
                        gbk gbkVar = (gbk) it2.next();
                        ArrayList arrayList3 = guhVar2.y;
                        long j = guhVar2.f14142d;
                        androidx.recyclerview.widget.p pVar2 = gbkVar.f17865c;
                        View view2 = pVar2 == null ? null : pVar2.n;
                        androidx.recyclerview.widget.p pVar3 = gbkVar.f17867e;
                        View view3 = pVar3 != null ? pVar3.n : null;
                        if (view2 != null) {
                            ViewPropertyAnimator duration = view2.animate().setDuration(j);
                            arrayList3.add(gbkVar.f17865c);
                            duration.translationX(gbkVar.f17864b - gbkVar.f17868f);
                            duration.translationY(gbkVar.f17866d - gbkVar.f17863a);
                            duration.alpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT).setListener(new gry(guhVar2, gbkVar, duration, view2, 0)).start();
                        }
                        if (view3 != null) {
                            ViewPropertyAnimator animate2 = view3.animate();
                            arrayList3.add(gbkVar.f17867e);
                            animate2.translationX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT).translationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT).setDuration(j).alpha(1.0f).setListener(new gry(guhVar2, gbkVar, animate2, view3, 1)).start();
                        }
                    }
                }
            default:
                ArrayList arrayList4 = this.f13137c;
                Iterator it3 = arrayList4.iterator();
                while (true) {
                    boolean hasNext3 = it3.hasNext();
                    guh guhVar3 = this.f13135a;
                    if (!hasNext3) {
                        arrayList4.clear();
                        guhVar3.r.remove(arrayList4);
                        break;
                    } else {
                        androidx.recyclerview.widget.p pVar4 = (androidx.recyclerview.widget.p) it3.next();
                        guhVar3.getClass();
                        View view4 = pVar4.n;
                        ViewPropertyAnimator animate3 = view4.animate();
                        guhVar3.p.add(pVar4);
                        animate3.alpha(1.0f).setDuration(guhVar3.f14144f).setListener(new gub(guhVar3, pVar4, view4, animate3)).start();
                    }
                }
        }
    }
}
