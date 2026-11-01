package g;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Picture;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class ud extends fqk {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f20085a = {"android:visibility:visibility", "android:visibility:parent"};

    /* renamed from: b, reason: collision with root package name */
    public final int f20086b;

    public ud() {
        this.f20086b = 3;
    }

    public ud(int i) {
        this();
        this.f20086b = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0059 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static bwt c(fuz fuzVar, fuz fuzVar2) {
        bwt bwtVar = new bwt();
        bwtVar.f12341c = false;
        bwtVar.f12343e = false;
        if (fuzVar != null) {
            HashMap hashMap = fuzVar.f17460a;
            if (hashMap.containsKey("android:visibility:visibility")) {
                bwtVar.f12344f = ((Integer) hashMap.get("android:visibility:visibility")).intValue();
                bwtVar.f12340b = (ViewGroup) hashMap.get("android:visibility:parent");
                if (fuzVar2 != null) {
                    HashMap hashMap2 = fuzVar2.f17460a;
                    if (hashMap2.containsKey("android:visibility:visibility")) {
                        bwtVar.f12339a = ((Integer) hashMap2.get("android:visibility:visibility")).intValue();
                        bwtVar.f12342d = (ViewGroup) hashMap2.get("android:visibility:parent");
                        if (fuzVar == null && fuzVar2 != null) {
                            int i = bwtVar.f12344f;
                            int i2 = bwtVar.f12339a;
                            if (i != i2 || bwtVar.f12340b != bwtVar.f12342d) {
                                if (i != i2) {
                                    if (i == 0) {
                                        bwtVar.f12343e = false;
                                        bwtVar.f12341c = true;
                                        return bwtVar;
                                    }
                                    if (i2 == 0) {
                                        bwtVar.f12343e = true;
                                        bwtVar.f12341c = true;
                                        return bwtVar;
                                    }
                                } else {
                                    if (bwtVar.f12342d == null) {
                                        bwtVar.f12343e = false;
                                        bwtVar.f12341c = true;
                                        return bwtVar;
                                    }
                                    if (bwtVar.f12340b == null) {
                                        bwtVar.f12343e = true;
                                        bwtVar.f12341c = true;
                                        return bwtVar;
                                    }
                                }
                            }
                        } else {
                            if (fuzVar != null && bwtVar.f12339a == 0) {
                                bwtVar.f12343e = true;
                                bwtVar.f12341c = true;
                                return bwtVar;
                            }
                            if (fuzVar2 == null && bwtVar.f12344f == 0) {
                                bwtVar.f12343e = false;
                                bwtVar.f12341c = true;
                            }
                        }
                        return bwtVar;
                    }
                }
                bwtVar.f12339a = -1;
                bwtVar.f12342d = null;
                if (fuzVar == null) {
                }
                if (fuzVar != null) {
                }
                if (fuzVar2 == null) {
                    bwtVar.f12343e = false;
                    bwtVar.f12341c = true;
                }
                return bwtVar;
            }
        }
        bwtVar.f12344f = -1;
        bwtVar.f12340b = null;
        if (fuzVar2 != null) {
        }
        bwtVar.f12339a = -1;
        bwtVar.f12342d = null;
        if (fuzVar == null) {
        }
        if (fuzVar != null) {
        }
        if (fuzVar2 == null) {
        }
        return bwtVar;
    }

    public static void d(fuz fuzVar) {
        int visibility = fuzVar.f17461b.getVisibility();
        HashMap hashMap = fuzVar.f17460a;
        hashMap.put("android:visibility:visibility", Integer.valueOf(visibility));
        View view = fuzVar.f17461b;
        hashMap.put("android:visibility:parent", view.getParent());
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        hashMap.put("android:visibility:screenLocation", iArr);
    }

    public static float e(fuz fuzVar, float f2) {
        Float f3;
        return (fuzVar == null || (f3 = (Float) fuzVar.f17460a.get("android:fade:transitionAlpha")) == null) ? f2 : f3.floatValue();
    }

    public final ObjectAnimator aa(View view, float f2, float f3) {
        if (f2 == f3) {
            return null;
        }
        ebi.f15235a.z(view, f2);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, ebi.f15236b, f3);
        gij gijVar = new gij(view);
        ofFloat.addListener(gijVar);
        bk().bi(gijVar);
        return ofFloat;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0048, code lost:
    
        if (c(bp(r3, false), bj(r3, false)).f12341c != false) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01e1  */
    @Override // g.fqk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Animator g(ViewGroup viewGroup, fuz fuzVar, fuz fuzVar2) {
        View view;
        boolean z;
        int i;
        View view2;
        Animator animator;
        char c2;
        char c3;
        View view3;
        boolean z2;
        ViewGroup viewGroup2;
        int i2;
        Bitmap bitmap;
        bwt c4 = c(fuzVar, fuzVar2);
        if (c4.f12341c && (c4.f12340b != null || c4.f12342d != null)) {
            boolean z3 = c4.f12343e;
            int i3 = this.f20086b;
            boolean z4 = true;
            if (!z3) {
                int i4 = c4.f12339a;
                if ((i3 & 2) == 2 && fuzVar != null) {
                    View view4 = fuzVar.f17461b;
                    View view5 = fuzVar2 != null ? fuzVar2.f17461b : null;
                    View view6 = (View) view4.getTag(R.id.save_overlay_view);
                    if (view6 != null) {
                        i = i4;
                        view3 = null;
                        animator = null;
                        c2 = 0;
                        c3 = 1;
                    } else {
                        if (view5 == null || view5.getParent() == null) {
                            if (view5 != null) {
                                view = null;
                                z = false;
                            }
                            view5 = null;
                            view = null;
                            z = true;
                        } else {
                            if (i4 == 4 || view4 == view5) {
                                view = view5;
                                view5 = null;
                                z = false;
                            }
                            view5 = null;
                            view = null;
                            z = true;
                        }
                        if (z) {
                            if (view4.getParent() == null) {
                                i = i4;
                                view3 = view;
                                z4 = false;
                                animator = null;
                                c2 = 0;
                                c3 = 1;
                                view6 = view4;
                            } else if (view4.getParent() instanceof View) {
                                View view7 = (View) view4.getParent();
                                animator = null;
                                c2 = 0;
                                if (c(bj(view7, true), bp(view7, true)).f12341c) {
                                    i = i4;
                                    view2 = view;
                                    c3 = 1;
                                    int id = view7.getId();
                                    if (view7.getParent() == null && id != -1) {
                                        viewGroup.findViewById(id);
                                    }
                                    view6 = view5;
                                    view3 = view2;
                                    z4 = false;
                                } else {
                                    boolean z5 = caz.f12573a;
                                    Matrix matrix = new Matrix();
                                    matrix.setTranslate(-view7.getScrollX(), -view7.getScrollY());
                                    bli bliVar = ebi.f15235a;
                                    bliVar.w(view4, matrix);
                                    bliVar.x(viewGroup, matrix);
                                    RectF rectF = new RectF(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, view4.getWidth(), view4.getHeight());
                                    matrix.mapRect(rectF);
                                    int round = Math.round(rectF.left);
                                    int round2 = Math.round(rectF.top);
                                    c3 = 1;
                                    int round3 = Math.round(rectF.right);
                                    int round4 = Math.round(rectF.bottom);
                                    ImageView imageView = new ImageView(view4.getContext());
                                    imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                                    boolean isAttachedToWindow = view4.isAttachedToWindow();
                                    boolean z6 = viewGroup != null && viewGroup.isAttachedToWindow();
                                    if (isAttachedToWindow) {
                                        z2 = isAttachedToWindow;
                                        viewGroup2 = null;
                                        i2 = 0;
                                    } else if (z6) {
                                        viewGroup2 = (ViewGroup) view4.getParent();
                                        int indexOfChild = viewGroup2.indexOfChild(view4);
                                        z2 = isAttachedToWindow;
                                        viewGroup.getOverlay().add(view4);
                                        i2 = indexOfChild;
                                    } else {
                                        i = i4;
                                        view2 = view;
                                        bitmap = null;
                                        if (bitmap != null) {
                                            imageView.setImageBitmap(bitmap);
                                        }
                                        imageView.measure(View.MeasureSpec.makeMeasureSpec(round3 - round, C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(round4 - round2, C.ENCODING_PCM_32BIT));
                                        imageView.layout(round, round2, round3, round4);
                                        view6 = imageView;
                                        view3 = view2;
                                        z4 = false;
                                    }
                                    view2 = view;
                                    int round5 = Math.round(rectF.width());
                                    i = i4;
                                    int round6 = Math.round(rectF.height());
                                    if (round5 <= 0 || round6 <= 0) {
                                        bitmap = null;
                                    } else {
                                        float min = Math.min(1.0f, 1048576.0f / (round5 * round6));
                                        int round7 = Math.round(round5 * min);
                                        int round8 = Math.round(round6 * min);
                                        matrix.postTranslate(-rectF.left, -rectF.top);
                                        matrix.postScale(min, min);
                                        if (caz.f12573a) {
                                            Picture picture = new Picture();
                                            Canvas beginRecording = picture.beginRecording(round7, round8);
                                            beginRecording.concat(matrix);
                                            view4.draw(beginRecording);
                                            picture.endRecording();
                                            bitmap = eav.a(picture);
                                        } else {
                                            bitmap = Bitmap.createBitmap(round7, round8, Bitmap.Config.ARGB_8888);
                                            Canvas canvas = new Canvas(bitmap);
                                            canvas.concat(matrix);
                                            view4.draw(canvas);
                                        }
                                    }
                                    if (!z2) {
                                        viewGroup.getOverlay().remove(view4);
                                        viewGroup2.addView(view4, i2);
                                    }
                                    if (bitmap != null) {
                                    }
                                    imageView.measure(View.MeasureSpec.makeMeasureSpec(round3 - round, C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(round4 - round2, C.ENCODING_PCM_32BIT));
                                    imageView.layout(round, round2, round3, round4);
                                    view6 = imageView;
                                    view3 = view2;
                                    z4 = false;
                                }
                            }
                        }
                        i = i4;
                        view2 = view;
                        animator = null;
                        c2 = 0;
                        c3 = 1;
                        view6 = view5;
                        view3 = view2;
                        z4 = false;
                    }
                    if (view6 == null) {
                        if (view3 == null) {
                            return animator;
                        }
                        int visibility = view3.getVisibility();
                        ebi.d(view3, 0);
                        bli bliVar2 = ebi.f15235a;
                        bliVar2.getClass();
                        ObjectAnimator aa = aa(view3, e(fuzVar, 1.0f), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                        if (aa == null) {
                            bliVar2.z(view3, e(fuzVar2, 1.0f));
                        }
                        if (aa == null) {
                            ebi.d(view3, visibility);
                            return aa;
                        }
                        bcw bcwVar = new bcw(i, view3);
                        aa.addListener(bcwVar);
                        bk().bi(bcwVar);
                        return aa;
                    }
                    if (!z4) {
                        int[] iArr = (int[]) fuzVar.f17460a.get("android:visibility:screenLocation");
                        int i5 = iArr[c2];
                        int i6 = iArr[c3];
                        int[] iArr2 = new int[2];
                        viewGroup.getLocationOnScreen(iArr2);
                        view6.offsetLeftAndRight((i5 - iArr2[c2]) - view6.getLeft());
                        view6.offsetTopAndBottom((i6 - iArr2[c3]) - view6.getTop());
                        viewGroup.getOverlay().add(view6);
                    }
                    bli bliVar3 = ebi.f15235a;
                    bliVar3.getClass();
                    ObjectAnimator aa2 = aa(view6, e(fuzVar, 1.0f), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    if (aa2 == null) {
                        bliVar3.z(view6, e(fuzVar2, 1.0f));
                    }
                    if (!z4) {
                        if (aa2 == null) {
                            viewGroup.getOverlay().remove(view6);
                            return aa2;
                        }
                        view4.setTag(R.id.save_overlay_view, view6);
                        gce gceVar = new gce(this, viewGroup, view6, view4);
                        aa2.addListener(gceVar);
                        aa2.addPauseListener(gceVar);
                        bk().bi(gceVar);
                    }
                    return aa2;
                }
            } else if ((i3 & 1) == 1 && fuzVar2 != null) {
                View view8 = fuzVar2.f17461b;
                if (fuzVar == null) {
                    View view9 = (View) view8.getParent();
                }
                ebi.f15235a.getClass();
                return aa(view8, e(fuzVar, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT), 1.0f);
            }
        }
        return null;
    }

    @Override // g.fqk
    public final void p(fuz fuzVar) {
        d(fuzVar);
    }

    @Override // g.fqk
    public final void t(fuz fuzVar) {
        d(fuzVar);
        View view = fuzVar.f17461b;
        Float f2 = (Float) view.getTag(R.id.transition_pause_alpha);
        if (f2 == null) {
            f2 = view.getVisibility() == 0 ? Float.valueOf(ebi.f15235a.aa(view)) : Float.valueOf(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
        fuzVar.f17460a.put("android:fade:transitionAlpha", f2);
    }

    @Override // g.fqk
    public final String[] y() {
        return f20085a;
    }

    @Override // g.fqk
    public final boolean z(fuz fuzVar, fuz fuzVar2) {
        if (fuzVar == null && fuzVar2 == null) {
            return false;
        }
        if (fuzVar != null && fuzVar2 != null && fuzVar2.f17460a.containsKey("android:visibility:visibility") != fuzVar.f17460a.containsKey("android:visibility:visibility")) {
            return false;
        }
        bwt c2 = c(fuzVar, fuzVar2);
        if (c2.f12341c) {
            return c2.f12344f == 0 || c2.f12339a == 0;
        }
        return false;
    }
}
