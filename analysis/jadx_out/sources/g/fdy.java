package g;

import android.animation.Animator;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Looper;
import android.os.RemoteException;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.Choreographer;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputConnection;
import android.widget.CompoundButton;
import android.widget.EditText;
import androidx.work.impl.WorkDatabase;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.internal.ads.zzaca;
import com.google.android.gms.internal.ads.zzacb;
import com.google.android.gms.internal.ads.zzacs;
import com.google.android.gms.internal.ads.zzaqk;
import com.google.android.gms.internal.ads.zzbjr;
import com.google.android.gms.internal.ads.zzblo;
import com.google.android.gms.internal.ads.zzbqz;
import com.google.android.gms.internal.ads.zzbuz;
import com.google.android.gms.internal.ads.zzbvq;
import com.google.android.gms.internal.ads.zzcaj;
import com.google.android.gms.internal.ads.zzcao;
import com.google.android.gms.internal.ads.zzcaq;
import com.google.android.gms.internal.ads.zzcas;
import com.google.android.gms.internal.ads.zzcfk;
import com.google.android.gms.internal.ads.zzcrq;
import com.google.android.gms.internal.ads.zzcrz;
import com.google.android.gms.internal.ads.zzcsf;
import com.google.android.gms.internal.ads.zzed;
import com.google.android.gms.internal.ads.zzek;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzfix;
import com.google.android.gms.internal.ads.zzfjh;
import com.google.android.gms.internal.ads.zzgee;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import j$.util.Objects;
import java.io.File;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class fdy implements dad, dds, ghx, zzacb, zzaqk, ehn, bjb, gon, zzgee {

    /* renamed from: a, reason: collision with root package name */
    public Object f16632a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16633b;

    /* renamed from: c, reason: collision with root package name */
    public Object f16634c;

    public fdy(int i) {
        this.f16633b = i;
        switch (i) {
            case 9:
                this.f16634c = new ArrayList();
                this.f16632a = new ArrayList();
                break;
            case 19:
                awe aweVar = awe.f10970a;
                this.f16634c = new SparseIntArray();
                this.f16632a = aweVar;
                break;
            default:
                this.f16634c = Choreographer.getInstance();
                this.f16632a = Looper.myLooper();
                break;
        }
    }

    public /* synthetic */ fdy(int i, Object obj, Object obj2, boolean z) {
        this.f16633b = i;
        this.f16632a = obj;
        this.f16634c = obj2;
    }

    public /* synthetic */ fdy(int i, boolean z) {
        this.f16633b = i;
    }

    public fdy(Context context) {
        this.f16633b = 21;
        this.f16632a = context;
        this.f16634c = null;
    }

    public fdy(EditText editText, int i) {
        this.f16633b = i;
        switch (i) {
            case 4:
                this.f16634c = editText;
                this.f16632a = new dcq(editText);
                return;
            default:
                this.f16634c = editText;
                fpo fpoVar = new fpo(editText);
                this.f16632a = fpoVar;
                editText.addTextChangedListener(fpoVar);
                if (ewe.f16266b == null) {
                    synchronized (ewe.f16265a) {
                        try {
                            if (ewe.f16266b == null) {
                                ewe eweVar = new ewe();
                                try {
                                    ewe.f16267c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, ewe.class.getClassLoader());
                                } catch (Throwable unused) {
                                }
                                ewe.f16266b = eweVar;
                            }
                        } finally {
                        }
                    }
                }
                editText.setEditableFactory(ewe.f16266b);
                return;
        }
    }

    public fdy(WorkDatabase workDatabase) {
        this.f16633b = 0;
        this.f16634c = workDatabase;
        this.f16632a = new sw(workDatabase);
    }

    public /* synthetic */ fdy(zzek zzekVar) {
        this.f16633b = 20;
        this.f16634c = zzekVar;
        this.f16632a = new zzed();
    }

    public fdy(cdp cdpVar) {
        this.f16633b = 18;
        this.f16634c = cdpVar;
    }

    public fdy(dur durVar) {
        this.f16633b = 6;
        this.f16632a = durVar;
    }

    public fdy(hed hedVar) {
        this.f16633b = 15;
        this.f16634c = hedVar;
        this.f16632a = new HashMap();
    }

    public /* synthetic */ fdy(Object obj, int i, Object obj2) {
        this.f16633b = i;
        this.f16634c = obj;
        this.f16632a = obj2;
    }

    private final void ao(Throwable th) {
    }

    public static ArrayList d(int i, int i2, List list) {
        int i3 = (i - i2) / 2;
        ArrayList arrayList = new ArrayList();
        gzl gzlVar = new gzl();
        gzlVar.q = i3;
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            if (i4 == 0) {
                arrayList.add(gzlVar);
            }
            arrayList.add((gzl) list.get(i4));
            if (i4 == list.size() - 1) {
                arrayList.add(gzlVar);
            }
        }
        return arrayList;
    }

    public static int[] e(int i, ArrayList arrayList, SparseIntArray sparseIntArray) {
        Collections.sort(arrayList);
        sparseIntArray.clear();
        int[] iArr = new int[i];
        Iterator it = arrayList.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            dpl dplVar = (dpl) it.next();
            int i3 = dplVar.f14592a;
            iArr[i2] = i3;
            sparseIntArray.append(i3, dplVar.f14593b);
            i2++;
        }
        return iArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void f(View view) {
        boolean z;
        gth gthVar = (gth) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        boolean z2 = true;
        if (measuredWidth < gthVar.mn()) {
            measuredWidth = gthVar.mn();
        } else {
            if (measuredWidth <= gthVar.kk()) {
                z = false;
                if (measuredHeight >= gthVar.ia()) {
                    measuredHeight = gthVar.ia();
                } else if (measuredHeight > gthVar.o()) {
                    measuredHeight = gthVar.o();
                } else {
                    z2 = z;
                }
                if (z2) {
                    return;
                }
                view.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(measuredHeight, C.ENCODING_PCM_32BIT));
                return;
            }
            measuredWidth = gthVar.kk();
        }
        z = true;
        if (measuredHeight >= gthVar.ia()) {
        }
        if (z2) {
        }
    }

    public void aa(View view, gzl gzlVar, int i, int i2, int i3, int i4) {
        gth gthVar = (gth) view.getLayoutParams();
        cdp cdpVar = (cdp) this.f16634c;
        int alignItems = cdpVar.getAlignItems();
        if (gthVar.iw() != -1) {
            alignItems = gthVar.iw();
        }
        int i5 = gzlVar.q;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (cdpVar.getFlexWrap() != 2) {
                    int i6 = i2 + i5;
                    view.layout(i, (i6 - view.getMeasuredHeight()) - gthVar.f(), i3, i6 - gthVar.f());
                    return;
                }
                view.layout(i, gthVar.q() + view.getMeasuredHeight() + (i2 - i5), i3, gthVar.q() + view.getMeasuredHeight() + (i4 - i5));
                return;
            }
            if (alignItems == 2) {
                int q = ((gthVar.q() + (i5 - view.getMeasuredHeight())) - gthVar.f()) / 2;
                if (cdpVar.getFlexWrap() != 2) {
                    int i7 = i2 + q;
                    view.layout(i, i7, i3, view.getMeasuredHeight() + i7);
                    return;
                } else {
                    int i8 = i2 - q;
                    view.layout(i, i8, i3, view.getMeasuredHeight() + i8);
                    return;
                }
            }
            if (alignItems == 3) {
                if (cdpVar.getFlexWrap() != 2) {
                    int max = Math.max(gzlVar.f19059f - view.getBaseline(), gthVar.q());
                    view.layout(i, i2 + max, i3, i4 + max);
                    return;
                } else {
                    int max2 = Math.max(view.getBaseline() + (gzlVar.f19059f - view.getMeasuredHeight()), gthVar.f());
                    view.layout(i, i2 - max2, i3, i4 - max2);
                    return;
                }
            }
            if (alignItems != 4) {
                return;
            }
        }
        if (cdpVar.getFlexWrap() != 2) {
            view.layout(i, gthVar.q() + i2, i3, gthVar.q() + i4);
        } else {
            view.layout(i, i2 - gthVar.f(), i3, i4 - gthVar.f());
        }
    }

    public void ab(int i, int i2, gzl gzlVar, int i3, int i4, boolean z) {
        int i5;
        cdp cdpVar;
        int i6;
        double d2;
        double d3;
        cdp cdpVar2 = (cdp) this.f16634c;
        float f2 = gzlVar.n;
        if (f2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || i3 < (i5 = gzlVar.f19060g)) {
            return;
        }
        float f3 = (i3 - i5) / f2;
        gzlVar.f19060g = i4 + gzlVar.i;
        if (!z) {
            gzlVar.q = Integer.MIN_VALUE;
        }
        int i7 = 0;
        boolean z2 = false;
        int i8 = 0;
        float f4 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        while (i7 < gzlVar.f19054a) {
            int i9 = gzlVar.f19056c + i7;
            View t = cdpVar2.t(i9);
            if (t == null || t.getVisibility() == 8) {
                cdpVar = cdpVar2;
            } else {
                gth gthVar = (gth) t.getLayoutParams();
                int flexDirection = cdpVar2.getFlexDirection();
                if (flexDirection == 0 || flexDirection == 1) {
                    int measuredWidth = t.getMeasuredWidth();
                    int measuredHeight = t.getMeasuredHeight();
                    cdpVar = cdpVar2;
                    if (!((boolean[]) this.f16632a)[i9] && gthVar.p() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        float p = (gthVar.p() * f3) + measuredWidth;
                        if (i7 == gzlVar.f19054a - 1) {
                            p += f4;
                            f4 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        }
                        int round = Math.round(p);
                        if (round > gthVar.kk()) {
                            round = gthVar.kk();
                            ((boolean[]) this.f16632a)[i9] = true;
                            gzlVar.n -= gthVar.p();
                            z2 = true;
                        } else {
                            float f5 = (p - round) + f4;
                            double d4 = f5;
                            if (d4 > 1.0d) {
                                round++;
                                d2 = d4 - 1.0d;
                            } else {
                                if (d4 < -1.0d) {
                                    round--;
                                    d2 = d4 + 1.0d;
                                }
                                f4 = f5;
                            }
                            f5 = (float) d2;
                            f4 = f5;
                        }
                        t.measure(View.MeasureSpec.makeMeasureSpec(round, C.ENCODING_PCM_32BIT), y(i2, gthVar, gzlVar.k));
                        measuredWidth = t.getMeasuredWidth();
                        measuredHeight = t.getMeasuredHeight();
                    }
                    int max = Math.max(i8, gthVar.f() + gthVar.q() + measuredHeight);
                    gzlVar.f19060g = gthVar.jy() + gthVar.mp() + measuredWidth + gzlVar.f19060g;
                    i6 = max;
                } else {
                    int measuredHeight2 = t.getMeasuredHeight();
                    int measuredWidth2 = t.getMeasuredWidth();
                    if (!((boolean[]) this.f16632a)[i9] && gthVar.p() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        float p2 = (gthVar.p() * f3) + measuredHeight2;
                        if (i7 == gzlVar.f19054a - 1) {
                            p2 += f4;
                            f4 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        }
                        int round2 = Math.round(p2);
                        if (round2 > gthVar.o()) {
                            round2 = gthVar.o();
                            ((boolean[]) this.f16632a)[i9] = true;
                            gzlVar.n -= gthVar.p();
                            z2 = true;
                        } else {
                            float f6 = (p2 - round2) + f4;
                            double d5 = f6;
                            if (d5 > 1.0d) {
                                round2++;
                                d3 = d5 - 1.0d;
                            } else if (d5 < -1.0d) {
                                round2--;
                                d3 = d5 + 1.0d;
                            } else {
                                f4 = f6;
                            }
                            f4 = (float) d3;
                        }
                        t.measure(ad(i, gthVar, gzlVar.k), View.MeasureSpec.makeMeasureSpec(round2, C.ENCODING_PCM_32BIT));
                        measuredWidth2 = t.getMeasuredWidth();
                        measuredHeight2 = t.getMeasuredHeight();
                    }
                    i6 = Math.max(i8, gthVar.jy() + gthVar.mp() + measuredWidth2);
                    gzlVar.f19060g = gthVar.f() + gthVar.q() + measuredHeight2 + gzlVar.f19060g;
                    cdpVar = cdpVar2;
                }
                gzlVar.q = Math.max(gzlVar.q, i6);
                i8 = i6;
            }
            i7++;
            cdpVar2 = cdpVar;
        }
        if (!z2 || i5 == gzlVar.f19060g) {
            return;
        }
        ab(i, i2, gzlVar, i3, i4, true);
    }

    @Override // g.gon
    public void ac(ezz ezzVar) {
        try {
            ((zzbqz) this.f16634c).zzf(ezzVar.h());
        } catch (RemoteException e2) {
            agd.f("", e2);
        }
    }

    public int ad(int i, gth gthVar, int i2) {
        cdp cdpVar = (cdp) this.f16634c;
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, gthVar.jy() + gthVar.mp() + cdpVar.getPaddingRight() + cdpVar.getPaddingLeft() + i2, gthVar.dq());
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        return size > gthVar.kk() ? View.MeasureSpec.makeMeasureSpec(gthVar.kk(), View.MeasureSpec.getMode(childMeasureSpec)) : size < gthVar.mn() ? View.MeasureSpec.makeMeasureSpec(gthVar.mn(), View.MeasureSpec.getMode(childMeasureSpec)) : childMeasureSpec;
    }

    public ArrayList ae(int i) {
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            gth gthVar = (gth) ((cdp) this.f16634c).getChildAt(i2).getLayoutParams();
            dpl dplVar = new dpl();
            dplVar.f14593b = gthVar.ox();
            dplVar.f14592a = i2;
            arrayList.add(dplVar);
        }
        return arrayList;
    }

    public void af(int i, int i2, int i3) {
        int mode;
        int size;
        cdp cdpVar = (cdp) this.f16634c;
        int flexDirection = cdpVar.getFlexDirection();
        if (flexDirection == 0 || flexDirection == 1) {
            mode = View.MeasureSpec.getMode(i2);
            size = View.MeasureSpec.getSize(i2);
        } else {
            if (flexDirection != 2 && flexDirection != 3) {
                throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
            }
            mode = View.MeasureSpec.getMode(i);
            size = View.MeasureSpec.getSize(i);
        }
        List<gzl> flexLinesInternal = cdpVar.getFlexLinesInternal();
        if (mode == 1073741824) {
            int sumOfCrossSize = cdpVar.getSumOfCrossSize() + i3;
            int i4 = 0;
            if (flexLinesInternal.size() == 1) {
                flexLinesInternal.get(0).q = size - i3;
                return;
            }
            if (flexLinesInternal.size() >= 2) {
                int alignContent = cdpVar.getAlignContent();
                if (alignContent == 1) {
                    gzl gzlVar = new gzl();
                    gzlVar.q = size - sumOfCrossSize;
                    flexLinesInternal.add(0, gzlVar);
                    return;
                }
                if (alignContent == 2) {
                    cdpVar.setFlexLines(d(size, sumOfCrossSize, flexLinesInternal));
                    return;
                }
                if (alignContent == 3) {
                    if (sumOfCrossSize < size) {
                        float size2 = (size - sumOfCrossSize) / (flexLinesInternal.size() - 1);
                        ArrayList arrayList = new ArrayList();
                        int size3 = flexLinesInternal.size();
                        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        while (i4 < size3) {
                            arrayList.add(flexLinesInternal.get(i4));
                            if (i4 != flexLinesInternal.size() - 1) {
                                gzl gzlVar2 = new gzl();
                                if (i4 == flexLinesInternal.size() - 2) {
                                    gzlVar2.q = Math.round(f2 + size2);
                                    f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                } else {
                                    gzlVar2.q = Math.round(size2);
                                }
                                int i5 = gzlVar2.q;
                                float f3 = (size2 - i5) + f2;
                                if (f3 > 1.0f) {
                                    gzlVar2.q = i5 + 1;
                                    f3 -= 1.0f;
                                } else if (f3 < -1.0f) {
                                    gzlVar2.q = i5 - 1;
                                    f3 += 1.0f;
                                }
                                f2 = f3;
                                arrayList.add(gzlVar2);
                            }
                            i4++;
                        }
                        cdpVar.setFlexLines(arrayList);
                        return;
                    }
                    return;
                }
                if (alignContent == 4) {
                    if (sumOfCrossSize >= size) {
                        cdpVar.setFlexLines(d(size, sumOfCrossSize, flexLinesInternal));
                        return;
                    }
                    int size4 = (size - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                    ArrayList arrayList2 = new ArrayList();
                    gzl gzlVar3 = new gzl();
                    gzlVar3.q = size4;
                    for (gzl gzlVar4 : flexLinesInternal) {
                        arrayList2.add(gzlVar3);
                        arrayList2.add(gzlVar4);
                        arrayList2.add(gzlVar3);
                    }
                    cdpVar.setFlexLines(arrayList2);
                    return;
                }
                if (alignContent == 5 && sumOfCrossSize < size) {
                    float size5 = (size - sumOfCrossSize) / flexLinesInternal.size();
                    int size6 = flexLinesInternal.size();
                    float f4 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    while (i4 < size6) {
                        gzl gzlVar5 = flexLinesInternal.get(i4);
                        float f5 = gzlVar5.q + size5;
                        if (i4 == flexLinesInternal.size() - 1) {
                            f5 += f4;
                            f4 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        }
                        int round = Math.round(f5);
                        float f6 = (f5 - round) + f4;
                        if (f6 > 1.0f) {
                            round++;
                            f6 -= 1.0f;
                        } else if (f6 < -1.0f) {
                            round--;
                            f6 += 1.0f;
                        }
                        f4 = f6;
                        gzlVar5.q = round;
                        i4++;
                    }
                }
            }
        }
    }

    public Long ag(String str) {
        fcg o = fcg.o(1, "SELECT long_value FROM Preference where `key`=?");
        o.e(1, str);
        gac gacVar = (gac) this.f16634c;
        gacVar.al();
        Cursor ag = gacVar.ag(o);
        try {
            Long l = null;
            if (ag.moveToFirst() && !ag.isNull(0)) {
                l = Long.valueOf(ag.getLong(0));
            }
            return l;
        } finally {
            ag.close();
            o.p();
        }
    }

    public void ah(View view, gzl gzlVar, boolean z, int i, int i2, int i3, int i4) {
        gth gthVar = (gth) view.getLayoutParams();
        int alignItems = ((cdp) this.f16634c).getAlignItems();
        if (gthVar.iw() != -1) {
            alignItems = gthVar.iw();
        }
        int i5 = gzlVar.q;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (!z) {
                    view.layout(((i + i5) - view.getMeasuredWidth()) - gthVar.jy(), i2, ((i3 + i5) - view.getMeasuredWidth()) - gthVar.jy(), i4);
                    return;
                }
                view.layout(gthVar.mp() + view.getMeasuredWidth() + (i - i5), i2, gthVar.mp() + view.getMeasuredWidth() + (i3 - i5), i4);
                return;
            }
            if (alignItems == 2) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                int marginStart = ((marginLayoutParams.getMarginStart() + (i5 - view.getMeasuredWidth())) - marginLayoutParams.getMarginEnd()) / 2;
                if (z) {
                    view.layout(i - marginStart, i2, i3 - marginStart, i4);
                    return;
                } else {
                    view.layout(i + marginStart, i2, i3 + marginStart, i4);
                    return;
                }
            }
            if (alignItems != 3 && alignItems != 4) {
                return;
            }
        }
        if (z) {
            view.layout(i - gthVar.jy(), i2, i3 - gthVar.jy(), i4);
        } else {
            view.layout(gthVar.mp() + i, i2, gthVar.mp() + i3, i4);
        }
    }

    @Override // g.dds
    public void ai() {
        Activity activity = (Activity) this.f16634c;
        if (activity instanceof elf) {
            elf elfVar = (elf) activity;
            String str = ((ert) this.f16632a).q;
            if (str == null) {
                elfVar.v = null;
            } else {
                elfVar.v = str;
                elfVar.x = true;
            }
        }
        fyt.h(activity, new String[]{"android.permission.READ_PHONE_STATE"}, 100);
    }

    public void aj(int i, int i2) {
        int[] iArr = (int[]) this.f16634c;
        if (iArr == null || i >= iArr.length) {
            return;
        }
        int i3 = i + i2;
        m(i3);
        int[] iArr2 = (int[]) this.f16634c;
        System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
        int[] iArr3 = (int[]) this.f16634c;
        Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
        List list = (List) this.f16632a;
        if (list == null) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            blc blcVar = (blc) ((List) this.f16632a).get(size);
            int i4 = blcVar.mPosition;
            if (i4 >= i) {
                if (i4 < i3) {
                    ((List) this.f16632a).remove(size);
                } else {
                    blcVar.mPosition = i4 - i2;
                }
            }
        }
    }

    public void ak(enb enbVar) {
        fdw fdwVar = (fdw) this.f16632a;
        try {
            try {
                ((bmm) this.f16634c).ad(fdwVar, fdwVar.o(enbVar));
            } catch (Throwable th) {
                aky.t(th);
                th.printStackTrace();
            }
        } catch (Throwable th2) {
            aky.t(th2);
            r(th2);
        }
    }

    public void al(int i, int i2) {
        int[] iArr = (int[]) this.f16634c;
        if (iArr == null || i >= iArr.length) {
            return;
        }
        int i3 = i + i2;
        m(i3);
        int[] iArr2 = (int[]) this.f16634c;
        System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
        Arrays.fill((int[]) this.f16634c, i, i3, -1);
        List list = (List) this.f16632a;
        if (list == null) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            blc blcVar = (blc) ((List) this.f16632a).get(size);
            int i4 = blcVar.mPosition;
            if (i4 >= i) {
                blcVar.mPosition = i4 + i2;
            }
        }
    }

    public void am() {
        View t;
        cdp cdpVar = (cdp) this.f16634c;
        if (cdpVar.getFlexItemCount() <= 0) {
            return;
        }
        int flexDirection = cdpVar.getFlexDirection();
        if (cdpVar.getAlignItems() != 4) {
            for (gzl gzlVar : cdpVar.getFlexLinesInternal()) {
                Iterator it = gzlVar.f19057d.iterator();
                while (it.hasNext()) {
                    View t2 = cdpVar.t(((Integer) it.next()).intValue());
                    if (flexDirection == 0 || flexDirection == 1) {
                        an(t2, gzlVar.q);
                    } else {
                        if (flexDirection != 2 && flexDirection != 3) {
                            throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
                        }
                        q(t2, gzlVar.q);
                    }
                }
            }
            return;
        }
        List<gzl> flexLinesInternal = cdpVar.getFlexLinesInternal();
        int size = flexLinesInternal.size();
        for (int i = 0; i < size; i++) {
            gzl gzlVar2 = flexLinesInternal.get(i);
            int i2 = gzlVar2.f19054a;
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = gzlVar2.f19056c + i3;
                if (i3 < cdpVar.getFlexItemCount() && (t = cdpVar.t(i4)) != null && t.getVisibility() != 8) {
                    gth gthVar = (gth) t.getLayoutParams();
                    if (gthVar.iw() == -1 || gthVar.iw() == 4) {
                        if (flexDirection == 0 || flexDirection == 1) {
                            an(t, gzlVar2.q);
                        } else {
                            if (flexDirection != 2 && flexDirection != 3) {
                                throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
                            }
                            q(t, gzlVar2.q);
                        }
                    }
                }
            }
        }
    }

    public void an(View view, int i) {
        gth gthVar = (gth) view.getLayoutParams();
        view.measure(View.MeasureSpec.makeMeasureSpec(view.getMeasuredWidth(), C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(Math.min(Math.max((i - gthVar.q()) - gthVar.f(), gthVar.ia()), gthVar.o()), C.ENCODING_PCM_32BIT));
    }

    public KeyListener g(KeyListener keyListener) {
        if (keyListener instanceof NumberKeyListener) {
            return keyListener;
        }
        ((fdy) ((dcq) this.f16632a).f13976f).getClass();
        if (keyListener instanceof eiz) {
            return keyListener;
        }
        if (keyListener == null) {
            return null;
        }
        return keyListener instanceof NumberKeyListener ? keyListener : new eiz(keyListener);
    }

    public void h(int i, int i2, gzl gzlVar, int i3, int i4, boolean z) {
        cdp cdpVar;
        int i5;
        cdp cdpVar2 = (cdp) this.f16634c;
        int i6 = gzlVar.f19060g;
        float f2 = gzlVar.f19055b;
        if (f2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || i3 > i6) {
            return;
        }
        float f3 = (i6 - i3) / f2;
        gzlVar.f19060g = i4 + gzlVar.i;
        if (!z) {
            gzlVar.q = Integer.MIN_VALUE;
        }
        int i7 = 0;
        boolean z2 = false;
        int i8 = 0;
        float f4 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        while (i7 < gzlVar.f19054a) {
            int i9 = gzlVar.f19056c + i7;
            View t = cdpVar2.t(i9);
            if (t == null || t.getVisibility() == 8) {
                cdpVar = cdpVar2;
            } else {
                gth gthVar = (gth) t.getLayoutParams();
                int flexDirection = cdpVar2.getFlexDirection();
                if (flexDirection == 0 || flexDirection == 1) {
                    int measuredWidth = t.getMeasuredWidth();
                    int measuredHeight = t.getMeasuredHeight();
                    cdpVar = cdpVar2;
                    if (!((boolean[]) this.f16632a)[i9] && gthVar.s() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        float s = measuredWidth - (gthVar.s() * f3);
                        if (i7 == gzlVar.f19054a - 1) {
                            s += f4;
                            f4 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        }
                        int round = Math.round(s);
                        if (round < gthVar.mn()) {
                            round = gthVar.mn();
                            ((boolean[]) this.f16632a)[i9] = true;
                            gzlVar.f19055b -= gthVar.s();
                            z2 = true;
                        } else {
                            float f5 = (s - round) + f4;
                            double d2 = f5;
                            if (d2 > 1.0d) {
                                round++;
                                f5 -= 1.0f;
                            } else if (d2 < -1.0d) {
                                round--;
                                f5 += 1.0f;
                            }
                            f4 = f5;
                        }
                        t.measure(View.MeasureSpec.makeMeasureSpec(round, C.ENCODING_PCM_32BIT), y(i2, gthVar, gzlVar.k));
                        measuredWidth = t.getMeasuredWidth();
                        measuredHeight = t.getMeasuredHeight();
                    }
                    int max = Math.max(i8, gthVar.f() + gthVar.q() + measuredHeight);
                    gzlVar.f19060g = gthVar.jy() + gthVar.mp() + measuredWidth + gzlVar.f19060g;
                    i5 = max;
                } else {
                    int measuredHeight2 = t.getMeasuredHeight();
                    int measuredWidth2 = t.getMeasuredWidth();
                    if (!((boolean[]) this.f16632a)[i9] && gthVar.s() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        float s2 = measuredHeight2 - (gthVar.s() * f3);
                        if (i7 == gzlVar.f19054a - 1) {
                            s2 += f4;
                            f4 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        }
                        int round2 = Math.round(s2);
                        if (round2 < gthVar.ia()) {
                            round2 = gthVar.ia();
                            ((boolean[]) this.f16632a)[i9] = true;
                            gzlVar.f19055b -= gthVar.s();
                            z2 = true;
                        } else {
                            float f6 = (s2 - round2) + f4;
                            double d3 = f6;
                            if (d3 > 1.0d) {
                                round2++;
                                f6 -= 1.0f;
                            } else if (d3 < -1.0d) {
                                round2--;
                                f6 += 1.0f;
                            }
                            f4 = f6;
                        }
                        t.measure(ad(i, gthVar, gzlVar.k), View.MeasureSpec.makeMeasureSpec(round2, C.ENCODING_PCM_32BIT));
                        measuredWidth2 = t.getMeasuredWidth();
                        measuredHeight2 = t.getMeasuredHeight();
                    }
                    i5 = Math.max(i8, gthVar.jy() + gthVar.mp() + measuredWidth2);
                    gzlVar.f19060g = gthVar.f() + gthVar.q() + measuredHeight2 + gzlVar.f19060g;
                    cdpVar = cdpVar2;
                }
                gzlVar.q = Math.max(gzlVar.q, i5);
                i8 = i5;
            }
            i7++;
            cdpVar2 = cdpVar;
        }
        if (!z2 || i6 == gzlVar.f19060g) {
            return;
        }
        h(i, i2, gzlVar, i3, i4, true);
    }

    public void i(ejd ejdVar, List list) {
        ((efc) this.f16632a).f(ejdVar, list, "a", (vg) this.f16634c);
    }

    public void j(int i, int i2) {
        int size;
        int paddingLeft;
        int paddingRight;
        int i3;
        int i4;
        cdp cdpVar = (cdp) this.f16634c;
        int flexItemCount = cdpVar.getFlexItemCount();
        boolean[] zArr = (boolean[]) this.f16632a;
        int i5 = 0;
        if (zArr == null) {
            this.f16632a = new boolean[Math.max(flexItemCount, 10)];
        } else if (zArr.length < flexItemCount) {
            this.f16632a = new boolean[Math.max(zArr.length * 2, flexItemCount)];
        } else {
            Arrays.fill(zArr, false);
        }
        if (cdpVar.getFlexItemCount() <= 0) {
            return;
        }
        int flexDirection = cdpVar.getFlexDirection();
        int flexDirection2 = cdpVar.getFlexDirection();
        if (flexDirection2 == 0 || flexDirection2 == 1) {
            int mode = View.MeasureSpec.getMode(i);
            size = View.MeasureSpec.getSize(i);
            int largestMainSize = cdpVar.getLargestMainSize();
            if (mode != 1073741824) {
                size = Math.min(largestMainSize, size);
            }
            paddingLeft = cdpVar.getPaddingLeft();
            paddingRight = cdpVar.getPaddingRight();
        } else {
            if (flexDirection2 != 2 && flexDirection2 != 3) {
                throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
            }
            int mode2 = View.MeasureSpec.getMode(i2);
            size = View.MeasureSpec.getSize(i2);
            if (mode2 != 1073741824) {
                size = cdpVar.getLargestMainSize();
            }
            paddingLeft = cdpVar.getPaddingTop();
            paddingRight = cdpVar.getPaddingBottom();
        }
        int i6 = paddingRight + paddingLeft;
        int i7 = size;
        List<gzl> flexLinesInternal = cdpVar.getFlexLinesInternal();
        int size2 = flexLinesInternal.size();
        while (i5 < size2) {
            gzl gzlVar = flexLinesInternal.get(i5);
            int i8 = gzlVar.f19060g;
            if (i8 >= i7 || !gzlVar.j) {
                i3 = i;
                i4 = i2;
                if (i8 > i7 && gzlVar.o) {
                    h(i3, i4, gzlVar, i7, i6, false);
                }
            } else {
                i3 = i;
                i4 = i2;
                ab(i3, i4, gzlVar, i7, i6, false);
            }
            i5++;
            i = i3;
            i2 = i4;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a9  */
    @Override // g.ghx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public anp k(View view, anp anpVar) {
        boolean z;
        boolean z2;
        boolean z3;
        gez gezVar = (gez) this.f16634c;
        br brVar = (br) this.f16632a;
        int i = brVar.f12061a;
        int i2 = brVar.f12062b;
        int i3 = brVar.f12063c;
        dif difVar = anpVar.f10526b;
        oi i4 = difVar.i(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX);
        oi i5 = difVar.i(32);
        BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) gezVar.f18008e;
        int i6 = i4.f19760d;
        int i7 = i4.f19761e;
        int i8 = i4.f19759c;
        bottomSheetBehavior.aq = i6;
        boolean z4 = view.getLayoutDirection() == 1;
        int paddingBottom = view.getPaddingBottom();
        int paddingLeft = view.getPaddingLeft();
        int paddingRight = view.getPaddingRight();
        boolean z5 = bottomSheetBehavior.t;
        if (z5) {
            int f2 = anpVar.f();
            bottomSheetBehavior.ao = f2;
            paddingBottom = f2 + i3;
        }
        if (bottomSheetBehavior.au) {
            paddingLeft = (z4 ? i2 : i) + i8;
        }
        int i9 = paddingLeft;
        if (bottomSheetBehavior.bd) {
            if (!z4) {
                i = i2;
            }
            paddingRight = i + i7;
        }
        int i10 = paddingRight;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        if (!bottomSheetBehavior.at || marginLayoutParams.leftMargin == i8) {
            z = false;
        } else {
            marginLayoutParams.leftMargin = i8;
            z = true;
        }
        if (bottomSheetBehavior.bf && marginLayoutParams.rightMargin != i7) {
            marginLayoutParams.rightMargin = i7;
            z = true;
        }
        if (bottomSheetBehavior.ah) {
            int i11 = marginLayoutParams.topMargin;
            int i12 = i4.f19760d;
            if (i11 != i12) {
                marginLayoutParams.topMargin = i12;
                z2 = true;
                if (z2) {
                    view.setLayoutParams(marginLayoutParams);
                }
                view.setPadding(i9, view.getPaddingTop(), i10, paddingBottom);
                z3 = gezVar.f18010g;
                if (z3) {
                    bottomSheetBehavior.av = i5.f19758b;
                }
                if (z5 && !z3) {
                    return anpVar;
                }
                bottomSheetBehavior.ck();
                return anpVar;
            }
        }
        z2 = z;
        if (z2) {
        }
        view.setPadding(i9, view.getPaddingTop(), i10, paddingBottom);
        z3 = gezVar.f18010g;
        if (z3) {
        }
        if (z5) {
        }
        bottomSheetBehavior.ck();
        return anpVar;
    }

    @Override // g.ehn
    public dpa l(gey geyVar) {
        dpa u = ((dpa) this.f16634c).u();
        String str = (String) this.f16632a;
        u.m(str, geyVar);
        ((HashMap) u.f14565c).put(str, Boolean.TRUE);
        return u;
    }

    public void m(int i) {
        int[] iArr = (int[]) this.f16634c;
        if (iArr == null) {
            int[] iArr2 = new int[Math.max(i, 10) + 1];
            this.f16634c = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i >= iArr.length) {
            int length = iArr.length;
            while (length <= i) {
                length *= 2;
            }
            int[] iArr3 = new int[length];
            this.f16634c = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            int[] iArr4 = (int[]) this.f16634c;
            Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
        }
    }

    public dql n(InputConnection inputConnection) {
        dcq dcqVar = (dcq) this.f16632a;
        if (inputConnection == null) {
            dcqVar.getClass();
            inputConnection = null;
        } else {
            fdy fdyVar = (fdy) dcqVar.f13976f;
            fdyVar.getClass();
            if (!(inputConnection instanceof dql)) {
                inputConnection = new dql((EditText) fdyVar.f16634c, inputConnection);
            }
        }
        return (dql) inputConnection;
    }

    public void o() {
        int[] iArr = (int[]) this.f16634c;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        this.f16632a = null;
    }

    @Override // g.dad
    public void onCancel() {
        ((Animator) this.f16634c).end();
        if (androidx.fragment.app.v.ao(2)) {
            Objects.toString((androidx.fragment.app.a) this.f16632a);
        }
    }

    @Override // g.bjb
    public void onConnected(Bundle bundle) {
        try {
            ((zzcao) this.f16634c).zzc(((zzblo) this.f16632a).f4867a.zzp());
        } catch (DeadObjectException e2) {
            ((zzcao) this.f16634c).zzd(e2);
        }
    }

    @Override // g.bjb
    public void onConnectionSuspended(int i) {
        ((zzcao) this.f16634c).zzd(new RuntimeException(awf.ac(i, "onConnectionSuspended: ")));
    }

    public void p(cmk cmkVar) {
        gac gacVar = (gac) this.f16634c;
        gacVar.al();
        gacVar.an();
        try {
            ((sw) this.f16632a).c(cmkVar);
            gacVar.ah();
        } finally {
            gacVar.am();
        }
    }

    public void q(View view, int i) {
        gth gthVar = (gth) view.getLayoutParams();
        int min = Math.min(Math.max((i - gthVar.mp()) - gthVar.jy(), gthVar.mn()), gthVar.kk());
        view.measure(View.MeasureSpec.makeMeasureSpec(min, C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), C.ENCODING_PCM_32BIT));
    }

    public void r(Throwable th) {
        try {
            ((bmm) this.f16634c).w((fdw) this.f16632a, th);
        } catch (Throwable th2) {
            aky.t(th2);
            th2.printStackTrace();
        }
    }

    public void s(List list, gzl gzlVar, int i, int i2) {
        gzlVar.k = i2;
        cdp cdpVar = (cdp) this.f16634c;
        if (cdpVar.aa()) {
            if ((cdpVar.f12702e & 4) > 0) {
                int i3 = gzlVar.f19060g;
                int i4 = cdpVar.f12704g;
                gzlVar.f19060g = i3 + i4;
                gzlVar.i += i4;
            }
        } else if ((cdpVar.m & 4) > 0) {
            int i5 = gzlVar.f19060g;
            int i6 = cdpVar.h;
            gzlVar.f19060g = i5 + i6;
            gzlVar.i += i6;
        }
        list.add(gzlVar);
    }

    @Override // g.dds
    public void t() {
        Activity activity = (Activity) this.f16634c;
        ert ertVar = (ert) this.f16632a;
        if (ertVar.f16056e) {
            acw.aa(activity);
        }
        fso.y(activity, ertVar.q, "fail_permission_cancel");
    }

    public void u(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = ((EditText) this.f16634c).getContext().obtainStyledAttributes(attributeSet, acs.r, i, 0);
        try {
            boolean z = obtainStyledAttributes.hasValue(14) ? obtainStyledAttributes.getBoolean(14, true) : true;
            obtainStyledAttributes.recycle();
            z(z);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int v(int i) {
        int i2;
        int[] iArr = (int[]) this.f16634c;
        if (iArr == null || i >= iArr.length) {
            return -1;
        }
        List list = (List) this.f16632a;
        if (list != null) {
            blc blcVar = null;
            if (list != null) {
                int size = list.size() - 1;
                while (true) {
                    if (size < 0) {
                        break;
                    }
                    blc blcVar2 = (blc) ((List) this.f16632a).get(size);
                    if (blcVar2.mPosition == i) {
                        blcVar = blcVar2;
                        break;
                    }
                    size--;
                }
            }
            if (blcVar != null) {
                ((List) this.f16632a).remove(blcVar);
            }
            int size2 = ((List) this.f16632a).size();
            int i3 = 0;
            while (true) {
                if (i3 >= size2) {
                    i3 = -1;
                    break;
                }
                if (((blc) ((List) this.f16632a).get(i3)).mPosition >= i) {
                    break;
                }
                i3++;
            }
            if (i3 != -1) {
                blc blcVar3 = (blc) ((List) this.f16632a).get(i3);
                ((List) this.f16632a).remove(i3);
                i2 = blcVar3.mPosition;
                if (i2 != -1) {
                    int[] iArr2 = (int[]) this.f16634c;
                    Arrays.fill(iArr2, i, iArr2.length, -1);
                    return ((int[]) this.f16634c).length;
                }
                int min = Math.min(i2 + 1, ((int[]) this.f16634c).length);
                Arrays.fill((int[]) this.f16634c, i, min, -1);
                return min;
            }
        }
        i2 = -1;
        if (i2 != -1) {
        }
    }

    public void w(int i, int i2, int i3, int i4) {
        dur durVar = (dur) this.f16632a;
        durVar.l.set(i, i2, i3, i4);
        Rect rect = durVar.k;
        super/*android.widget.FrameLayout*/.setPadding(i + rect.left, i2 + rect.top, i3 + rect.right, i4 + rect.bottom);
    }

    /* JADX WARN: Code restructure failed: missing block: B:163:0x023c, code lost:
    
        if (r7 >= (r9 + r12)) goto L104;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x039c  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x03d4  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x03e5 A[EDGE_INSN: B:110:0x03e5->B:111:0x03e5 BREAK  A[LOOP:0: B:11:0x0063->B:22:0x03e8], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x03e8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x037b  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x036b  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0376  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0383  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void x(ta taVar, int i, int i2) {
        int i3;
        int i4;
        ArrayList arrayList;
        int i5;
        int childMeasureSpec;
        gth gthVar;
        int i6;
        int i7;
        fdy fdyVar;
        ArrayList arrayList2;
        int i8;
        int i9;
        boolean z;
        Drawable drawable;
        fdy fdyVar2 = this;
        cdp cdpVar = (cdp) fdyVar2.f16634c;
        boolean aa = cdpVar.aa();
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        ArrayList arrayList3 = new ArrayList();
        taVar.f20025a = arrayList3;
        int paddingStart = aa ? cdpVar.getPaddingStart() : cdpVar.getPaddingTop();
        int paddingEnd = aa ? cdpVar.getPaddingEnd() : cdpVar.getPaddingBottom();
        int paddingTop = aa ? cdpVar.getPaddingTop() : cdpVar.getPaddingStart();
        int paddingBottom = aa ? cdpVar.getPaddingBottom() : cdpVar.getPaddingEnd();
        gzl gzlVar = new gzl();
        int i10 = 0;
        gzlVar.f19056c = 0;
        int i11 = paddingStart + paddingEnd;
        gzlVar.f19060g = i11;
        int flexItemCount = cdpVar.getFlexItemCount();
        int i12 = paddingTop;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = Integer.MIN_VALUE;
        while (i10 < flexItemCount) {
            int i17 = flexItemCount;
            View t = cdpVar.t(i10);
            if (t == null) {
                if (i10 == i17 - 1 && gzlVar.r() != 0) {
                    fdyVar2.s(arrayList3, gzlVar, i10, i15);
                }
                i4 = i11;
                i3 = paddingBottom;
            } else {
                i3 = paddingBottom;
                i4 = i11;
                if (t.getVisibility() == 8) {
                    gzlVar.l++;
                    gzlVar.f19054a++;
                    if (i10 == i17 - 1 && gzlVar.r() != 0) {
                        fdyVar2.s(arrayList3, gzlVar, i10, i15);
                    }
                } else {
                    if (t instanceof CompoundButton) {
                        CompoundButton compoundButton = (CompoundButton) t;
                        gth gthVar2 = (gth) compoundButton.getLayoutParams();
                        int mn = gthVar2.mn();
                        int ia = gthVar2.ia();
                        arrayList = arrayList3;
                        i5 = i15;
                        if (Build.VERSION.SDK_INT >= 23) {
                            drawable = compoundButton.getButtonDrawable();
                        } else {
                            if (!ffb.f16690f) {
                                try {
                                    Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                                    ffb.m = declaredField;
                                    z = true;
                                    try {
                                        declaredField.setAccessible(true);
                                    } catch (NoSuchFieldException unused) {
                                    }
                                } catch (NoSuchFieldException unused2) {
                                    z = true;
                                }
                                ffb.f16690f = z;
                            }
                            Field field = ffb.m;
                            if (field != null) {
                                try {
                                    drawable = (Drawable) field.get(compoundButton);
                                } catch (IllegalAccessException unused3) {
                                    ffb.m = null;
                                }
                            }
                            drawable = null;
                        }
                        int minimumWidth = drawable == null ? 0 : drawable.getMinimumWidth();
                        int minimumHeight = drawable == null ? 0 : drawable.getMinimumHeight();
                        if (mn == -1) {
                            mn = minimumWidth;
                        }
                        gthVar2.dq(mn);
                        if (ia == -1) {
                            ia = minimumHeight;
                        }
                        gthVar2.d(ia);
                    } else {
                        arrayList = arrayList3;
                        i5 = i15;
                    }
                    gth gthVar3 = (gth) t.getLayoutParams();
                    if (gthVar3.iw() == 4) {
                        gzlVar.f19057d.add(Integer.valueOf(i10));
                    }
                    int dq = aa ? gthVar3.dq() : gthVar3.d();
                    if (gthVar3.ig() != -1.0f && mode == 1073741824) {
                        dq = Math.round(gthVar3.ig() * size);
                    }
                    if (aa) {
                        childMeasureSpec = ViewGroup.getChildMeasureSpec(i, gthVar3.jy() + gthVar3.mp() + i4, dq);
                        t.measure(childMeasureSpec, ViewGroup.getChildMeasureSpec(i2, gthVar3.f() + gthVar3.q() + i12 + i3 + i5, gthVar3.d()));
                    } else {
                        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i2, gthVar3.jy() + gthVar3.mp() + i12 + i3 + i5, gthVar3.dq());
                        childMeasureSpec = ViewGroup.getChildMeasureSpec(i, gthVar3.f() + gthVar3.q() + i4, dq);
                        t.measure(childMeasureSpec2, childMeasureSpec);
                    }
                    f(t);
                    i13 = View.combineMeasuredStates(i13, t.getMeasuredState());
                    int i18 = gzlVar.f19060g;
                    int measuredWidth = (aa ? t.getMeasuredWidth() : t.getMeasuredHeight()) + (aa ? gthVar3.mp() : gthVar3.q()) + (aa ? gthVar3.jy() : gthVar3.f());
                    int size2 = arrayList.size();
                    if (cdpVar.getFlexWrap() != 0) {
                        if (gthVar3.no()) {
                            gthVar = gthVar3;
                        } else if (mode != 0) {
                            int maxLine = cdpVar.getMaxLine();
                            gthVar = gthVar3;
                            if (maxLine == -1 || maxLine > size2 + 1) {
                                if (cdpVar.aa()) {
                                    i6 = cdpVar.z(i10, i14) ? cdpVar.f12704g : 0;
                                    if ((cdpVar.f12702e & 4) > 0) {
                                        i7 = cdpVar.f12704g;
                                        i6 += i7;
                                    }
                                    if (i6 > 0) {
                                        measuredWidth += i6;
                                    }
                                } else {
                                    i6 = cdpVar.z(i10, i14) ? cdpVar.h : 0;
                                    if ((cdpVar.m & 4) > 0) {
                                        i7 = cdpVar.h;
                                        i6 += i7;
                                    }
                                    if (i6 > 0) {
                                    }
                                }
                            }
                            fdyVar = this;
                            i8 = i4;
                            arrayList2 = arrayList;
                            int i19 = i5;
                            gzlVar.f19054a++;
                            i14++;
                            i15 = i19;
                            i9 = i16;
                            gzlVar.j |= gthVar.p() != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                            gzlVar.o |= gthVar.s() != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                            gzlVar.f19060g = (aa ? t.getMeasuredWidth() : t.getMeasuredHeight()) + (aa ? gthVar.mp() : gthVar.q()) + (aa ? gthVar.jy() : gthVar.f()) + gzlVar.f19060g;
                            gzlVar.n = gthVar.p() + gzlVar.n;
                            gzlVar.f19055b = gthVar.s() + gzlVar.f19055b;
                            if (cdpVar.z(i10, i14)) {
                                if (cdpVar.aa()) {
                                    int i20 = gzlVar.f19060g;
                                    int i21 = cdpVar.f12704g;
                                    gzlVar.f19060g = i20 + i21;
                                    gzlVar.i += i21;
                                } else {
                                    int i22 = gzlVar.f19060g;
                                    int i23 = cdpVar.h;
                                    gzlVar.f19060g = i22 + i23;
                                    gzlVar.i += i23;
                                }
                            }
                            int max = Math.max(i9, (aa ? t.getMeasuredHeight() : t.getMeasuredWidth()) + (aa ? gthVar.q() : gthVar.mp()) + (aa ? gthVar.f() : gthVar.jy()));
                            gzlVar.q = Math.max(gzlVar.q, max);
                            if (aa) {
                                i16 = max;
                                if (cdpVar.getFlexWrap() != 2) {
                                    gzlVar.f19059f = Math.max(gzlVar.f19059f, gthVar.q() + t.getBaseline());
                                } else {
                                    gzlVar.f19059f = Math.max(gzlVar.f19059f, gthVar.f() + (t.getMeasuredHeight() - t.getBaseline()));
                                }
                            } else {
                                i16 = max;
                            }
                            if (i10 == i17 - 1 && gzlVar.r() != 0) {
                                fdyVar.s(arrayList2, gzlVar, i10, i15);
                                i15 += gzlVar.q;
                            }
                            if (i15 > Integer.MAX_VALUE) {
                                break;
                            }
                            i10++;
                            fdyVar2 = fdyVar;
                            arrayList3 = arrayList2;
                            flexItemCount = i17;
                            paddingBottom = i3;
                            i11 = i8;
                        }
                        if (gzlVar.r() > 0) {
                            fdyVar = this;
                            arrayList2 = arrayList;
                            int i24 = i5;
                            fdyVar.s(arrayList2, gzlVar, i10 > 0 ? i10 - 1 : 0, i24);
                            i15 = i24 + gzlVar.q;
                        } else {
                            fdyVar = this;
                            arrayList2 = arrayList;
                            i15 = i5;
                        }
                        if (aa) {
                            if (gthVar.d() == -1) {
                                t.measure(childMeasureSpec, ViewGroup.getChildMeasureSpec(i2, gthVar.f() + gthVar.q() + cdpVar.getPaddingBottom() + cdpVar.getPaddingTop() + i15, gthVar.d()));
                                f(t);
                            }
                        } else if (gthVar.dq() == -1) {
                            t.measure(ViewGroup.getChildMeasureSpec(i2, gthVar.jy() + gthVar.mp() + cdpVar.getPaddingRight() + cdpVar.getPaddingLeft() + i15, gthVar.dq()), childMeasureSpec);
                            f(t);
                        }
                        gzlVar = new gzl();
                        gzlVar.f19054a = 1;
                        i8 = i4;
                        gzlVar.f19060g = i8;
                        gzlVar.f19056c = i10;
                        i14 = 0;
                        i9 = Integer.MIN_VALUE;
                        gzlVar.j |= gthVar.p() != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        gzlVar.o |= gthVar.s() != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        gzlVar.f19060g = (aa ? t.getMeasuredWidth() : t.getMeasuredHeight()) + (aa ? gthVar.mp() : gthVar.q()) + (aa ? gthVar.jy() : gthVar.f()) + gzlVar.f19060g;
                        gzlVar.n = gthVar.p() + gzlVar.n;
                        gzlVar.f19055b = gthVar.s() + gzlVar.f19055b;
                        if (cdpVar.z(i10, i14)) {
                        }
                        int max2 = Math.max(i9, (aa ? t.getMeasuredHeight() : t.getMeasuredWidth()) + (aa ? gthVar.q() : gthVar.mp()) + (aa ? gthVar.f() : gthVar.jy()));
                        gzlVar.q = Math.max(gzlVar.q, max2);
                        if (aa) {
                        }
                        if (i10 == i17 - 1) {
                            fdyVar.s(arrayList2, gzlVar, i10, i15);
                            i15 += gzlVar.q;
                        }
                        if (i15 > Integer.MAX_VALUE) {
                        }
                    }
                    fdyVar = this;
                    gthVar = gthVar3;
                    i8 = i4;
                    arrayList2 = arrayList;
                    int i192 = i5;
                    gzlVar.f19054a++;
                    i14++;
                    i15 = i192;
                    i9 = i16;
                    gzlVar.j |= gthVar.p() != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    gzlVar.o |= gthVar.s() != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    gzlVar.f19060g = (aa ? t.getMeasuredWidth() : t.getMeasuredHeight()) + (aa ? gthVar.mp() : gthVar.q()) + (aa ? gthVar.jy() : gthVar.f()) + gzlVar.f19060g;
                    gzlVar.n = gthVar.p() + gzlVar.n;
                    gzlVar.f19055b = gthVar.s() + gzlVar.f19055b;
                    if (cdpVar.z(i10, i14)) {
                    }
                    int max22 = Math.max(i9, (aa ? t.getMeasuredHeight() : t.getMeasuredWidth()) + (aa ? gthVar.q() : gthVar.mp()) + (aa ? gthVar.f() : gthVar.jy()));
                    gzlVar.q = Math.max(gzlVar.q, max22);
                    if (aa) {
                    }
                    if (i10 == i17 - 1) {
                    }
                    if (i15 > Integer.MAX_VALUE) {
                    }
                }
            }
            arrayList2 = arrayList3;
            i8 = i4;
            fdyVar = fdyVar2;
            i10++;
            fdyVar2 = fdyVar;
            arrayList3 = arrayList2;
            flexItemCount = i17;
            paddingBottom = i3;
            i11 = i8;
        }
        taVar.f20026b = i13;
    }

    public int y(int i, gth gthVar, int i2) {
        cdp cdpVar = (cdp) this.f16634c;
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, gthVar.f() + gthVar.q() + cdpVar.getPaddingBottom() + cdpVar.getPaddingTop() + i2, gthVar.d());
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        return size > gthVar.o() ? View.MeasureSpec.makeMeasureSpec(gthVar.o(), View.MeasureSpec.getMode(childMeasureSpec)) : size < gthVar.ia() ? View.MeasureSpec.makeMeasureSpec(gthVar.ia(), View.MeasureSpec.getMode(childMeasureSpec)) : childMeasureSpec;
    }

    public void z(boolean z) {
        fpo fpoVar = (fpo) ((fdy) ((dcq) this.f16632a).f13976f).f16632a;
        if (fpoVar.f17205b != z) {
            fpoVar.f17205b = z;
            if (z) {
                awt.q();
                throw null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacb
    public zzaca zza(zzacs zzacsVar, long j) {
        long zzf = zzacsVar.zzf();
        int min = (int) Math.min(20000L, zzacsVar.zzd() - zzf);
        zzed zzedVar = (zzed) this.f16632a;
        zzedVar.zzI(min);
        zzacsVar.zzh(zzedVar.zzN(), 0, min);
        int i = -1;
        long j2 = -9223372036854775807L;
        int i2 = -1;
        while (zzedVar.zzb() >= 4) {
            if (dby.f(zzedVar.zzd(), zzedVar.zzN()) != 442) {
                zzedVar.zzM(1);
            } else {
                zzedVar.zzM(4);
                long i3 = bsk.i(zzedVar);
                if (i3 != -9223372036854775807L) {
                    long zzb = ((zzek) this.f16634c).zzb(i3);
                    if (zzb > j) {
                        return j2 == -9223372036854775807L ? zzaca.zzd(zzb, zzf) : zzaca.zze(zzf + i2);
                    }
                    if (100000 + zzb > j) {
                        return zzaca.zze(zzf + zzedVar.zzd());
                    }
                    i2 = zzedVar.zzd();
                    j2 = zzb;
                }
                int zze = zzedVar.zze();
                if (zzedVar.zzb() >= 10) {
                    zzedVar.zzM(9);
                    int zzm = zzedVar.zzm() & 7;
                    if (zzedVar.zzb() >= zzm) {
                        zzedVar.zzM(zzm);
                        if (zzedVar.zzb() >= 4) {
                            if (dby.f(zzedVar.zzd(), zzedVar.zzN()) == 443) {
                                zzedVar.zzM(4);
                                int zzq = zzedVar.zzq();
                                if (zzedVar.zzb() < zzq) {
                                    zzedVar.zzL(zze);
                                } else {
                                    zzedVar.zzM(zzq);
                                }
                            }
                            while (true) {
                                if (zzedVar.zzb() < 4) {
                                    break;
                                }
                                int f2 = dby.f(zzedVar.zzd(), zzedVar.zzN());
                                if (f2 == 442 || f2 == 441 || (f2 >>> 8) != 1) {
                                    break;
                                }
                                zzedVar.zzM(4);
                                if (zzedVar.zzb() < 2) {
                                    zzedVar.zzL(zze);
                                    break;
                                }
                                zzedVar.zzL(Math.min(zzedVar.zze(), zzedVar.zzd() + zzedVar.zzq()));
                            }
                        } else {
                            zzedVar.zzL(zze);
                        }
                    } else {
                        zzedVar.zzL(zze);
                    }
                } else {
                    zzedVar.zzL(zze);
                }
                i = zzedVar.zzd();
            }
        }
        return j2 != -9223372036854775807L ? zzaca.zzf(j2, zzf + i) : zzaca.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzaqk
    public File zza() {
        if (((File) this.f16634c) == null) {
            this.f16634c = new File(((Context) this.f16632a).getCacheDir(), "volley");
        }
        return (File) this.f16634c;
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
        switch (this.f16633b) {
            case 25:
                ((zzcaq) this.f16632a).mo3zza();
                break;
            case 26:
                zzcaj.zze.execute(new zzcrz((zzcsf) this.f16632a));
                ((zzgee) this.f16634c).zza(th);
                break;
            case 27:
                break;
            case 28:
                try {
                    ((zzbvq) this.f16632a).zze(gvi.zzb(th));
                    break;
                } catch (RemoteException unused) {
                    agd.h();
                    return;
                }
            default:
                ((zzfjh) this.f16632a).f7918d.f7924d.zzb((zzfix) this.f16634c, th);
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacb
    public void zzb() {
        byte[] bArr = zzen.zzf;
        int length = bArr.length;
        ((zzed) this.f16632a).zzJ(bArr, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zzb(Object obj) {
        switch (this.f16633b) {
            case 25:
                ((zzcas) this.f16634c).zza(obj);
                break;
            case 26:
                zzcaj.zze.execute(new zzcrz((zzcsf) this.f16632a));
                ((zzgee) this.f16634c).zzb((zzcrq) obj);
                break;
            case 27:
                ((zzcfk) obj).zzag((String) this.f16634c, (zzbjr) this.f16632a);
                break;
            case 28:
                try {
                    ((zzbvq) this.f16632a).zzf((String) obj, (zzbuz) this.f16634c);
                    break;
                } catch (RemoteException unused) {
                    agd.h();
                    return;
                }
            default:
                ((zzfjh) this.f16632a).f7918d.f7924d.zzd((zzfix) this.f16634c);
                break;
        }
    }
}
