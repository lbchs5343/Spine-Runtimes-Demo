package g;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class fya extends fqk {

    /* renamed from: e, reason: collision with root package name */
    public static final String[] f17619e = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    /* renamed from: b, reason: collision with root package name */
    public static final dfe f17616b = new dfe(0, PointF.class, "topLeft");

    /* renamed from: a, reason: collision with root package name */
    public static final dfe f17615a = new dfe(1, PointF.class, "bottomRight");

    /* renamed from: d, reason: collision with root package name */
    public static final dfe f17618d = new dfe(2, PointF.class, "bottomRight");

    /* renamed from: c, reason: collision with root package name */
    public static final dfe f17617c = new dfe(3, PointF.class, "topLeft");
    public static final dfe aa = new dfe(4, PointF.class, "position");

    public static void bq(fuz fuzVar) {
        View view = fuzVar.f17461b;
        HashMap hashMap = fuzVar.f17460a;
        if (!view.isLaidOut() && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        hashMap.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        hashMap.put("android:changeBounds:parent", fuzVar.f17461b.getParent());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // g.fqk
    public final Animator g(ViewGroup viewGroup, fuz fuzVar, fuz fuzVar2) {
        int i;
        fya fyaVar;
        ObjectAnimator a2;
        if (fuzVar != null) {
            HashMap hashMap = fuzVar.f17460a;
            if (fuzVar2 != null) {
                HashMap hashMap2 = fuzVar2.f17460a;
                ViewGroup viewGroup2 = (ViewGroup) hashMap.get("android:changeBounds:parent");
                ViewGroup viewGroup3 = (ViewGroup) hashMap2.get("android:changeBounds:parent");
                if (viewGroup2 != null && viewGroup3 != null) {
                    View view = fuzVar2.f17461b;
                    Rect rect = (Rect) hashMap.get("android:changeBounds:bounds");
                    Rect rect2 = (Rect) hashMap2.get("android:changeBounds:bounds");
                    int i2 = rect.left;
                    int i3 = rect2.left;
                    int i4 = rect.top;
                    int i5 = rect2.top;
                    int i6 = rect.right;
                    int i7 = rect2.right;
                    int i8 = rect.bottom;
                    int i9 = rect2.bottom;
                    int i10 = i6 - i2;
                    int i11 = i8 - i4;
                    int i12 = i7 - i3;
                    int i13 = i9 - i5;
                    Rect rect3 = (Rect) hashMap.get("android:changeBounds:clip");
                    Rect rect4 = (Rect) hashMap2.get("android:changeBounds:clip");
                    if ((i10 == 0 || i11 == 0) && (i12 == 0 || i13 == 0)) {
                        i = 0;
                    } else {
                        i = (i2 == i3 && i4 == i5) ? 0 : 1;
                        if (i6 != i7 || i8 != i9) {
                            i++;
                        }
                    }
                    if ((rect3 != null && !rect3.equals(rect4)) || (rect3 == null && rect4 != null)) {
                        i++;
                    }
                    int i14 = i;
                    if (i14 > 0) {
                        ebi.c(view, i2, i4, i6, i8);
                        if (i14 != 2) {
                            fyaVar = this;
                            if (i2 == i3 && i4 == i5) {
                                fyaVar.ay.getClass();
                                a2 = asi.a(view, f17618d, cuf.e(i6, i8, i7, i9));
                            } else {
                                fyaVar.ay.getClass();
                                a2 = asi.a(view, f17617c, cuf.e(i2, i4, i3, i5));
                            }
                        } else if (i10 == i12 && i11 == i13) {
                            fyaVar = this;
                            fyaVar.ay.getClass();
                            a2 = asi.a(view, aa, cuf.e(i2, i4, i3, i5));
                        } else {
                            fyaVar = this;
                            bor borVar = new bor(view);
                            fyaVar.ay.getClass();
                            ObjectAnimator a3 = asi.a(borVar, f17616b, cuf.e(i2, i4, i3, i5));
                            fyaVar.ay.getClass();
                            ObjectAnimator a4 = asi.a(borVar, f17615a, cuf.e(i6, i8, i7, i9));
                            AnimatorSet animatorSet = new AnimatorSet();
                            animatorSet.playTogether(a3, a4);
                            animatorSet.addListener(new fva(borVar));
                            a2 = animatorSet;
                        }
                        if (view.getParent() instanceof ViewGroup) {
                            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
                            egh.m(viewGroup4, true);
                            fyaVar.bk().bi(new gyc(viewGroup4));
                        }
                        return a2;
                    }
                }
            }
        }
        return null;
    }

    @Override // g.fqk
    public final void p(fuz fuzVar) {
        bq(fuzVar);
    }

    @Override // g.fqk
    public final void t(fuz fuzVar) {
        bq(fuzVar);
    }

    @Override // g.fqk
    public final String[] y() {
        return f17619e;
    }
}
