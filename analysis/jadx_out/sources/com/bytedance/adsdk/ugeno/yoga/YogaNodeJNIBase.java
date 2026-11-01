package com.bytedance.adsdk.ugeno.yoga;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@com.bytedance.adsdk.ugeno.yoga.dq.dq
/* loaded from: classes.dex */
public abstract class YogaNodeJNIBase extends o implements Cloneable {

    @com.bytedance.adsdk.ugeno.yoga.dq.dq
    private float[] arr;

    /* renamed from: d, reason: collision with root package name */
    private YogaNodeJNIBase f692d;
    protected long dq;
    private Object iw;

    @com.bytedance.adsdk.ugeno.yoga.dq.dq
    private int mLayoutDirection;
    private boolean mn;
    private List<YogaNodeJNIBase> ox;
    private mn p;
    private d s;

    public YogaNodeJNIBase() {
        this(YogaNative.jni_YGNodeNewJNI());
    }

    private YogaNodeJNIBase(long j) {
        this.arr = null;
        this.mLayoutDirection = 0;
        this.mn = true;
        if (j == 0) {
            throw new IllegalStateException("Failed to allocate native memory");
        }
        this.dq = j;
    }

    @com.bytedance.adsdk.ugeno.yoga.dq.dq
    private final long replaceChild(YogaNodeJNIBase yogaNodeJNIBase, int i) {
        List<YogaNodeJNIBase> list = this.ox;
        if (list == null) {
            throw new IllegalStateException("Cannot replace child. YogaNode does not have children");
        }
        list.remove(i);
        this.ox.add(i, yogaNodeJNIBase);
        yogaNodeJNIBase.f692d = this;
        return yogaNodeJNIBase.dq;
    }

    @com.bytedance.adsdk.ugeno.yoga.dq.dq
    public final float baseline(float f2, float f3) {
        return this.s.dq(this, f2, f3);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void d(float f2) {
        YogaNative.jni_YGNodeStyleSetFlexShrinkJNI(this.dq, f2);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void d(dq dqVar) {
        YogaNative.jni_YGNodeStyleSetAlignSelfJNI(this.dq, dqVar.dq());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void d(p pVar, float f2) {
        YogaNative.jni_YGNodeStyleSetPaddingJNI(this.dq, pVar.dq(), f2);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public int dq() {
        List<YogaNodeJNIBase> list = this.ox;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public int dq(o oVar) {
        List<YogaNodeJNIBase> list = this.ox;
        if (list == null) {
            return -1;
        }
        return list.indexOf(oVar);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void dq(float f2) {
        YogaNative.jni_YGNodeStyleSetFlexGrowJNI(this.dq, f2);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void dq(float f2, float f3) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this);
        for (int i = 0; i < arrayList.size(); i++) {
            List<YogaNodeJNIBase> list = ((YogaNodeJNIBase) arrayList.get(i)).ox;
            if (list != null) {
                Iterator<YogaNodeJNIBase> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next());
                }
            }
        }
        YogaNodeJNIBase[] yogaNodeJNIBaseArr = (YogaNodeJNIBase[]) arrayList.toArray(new YogaNodeJNIBase[arrayList.size()]);
        long[] jArr = new long[yogaNodeJNIBaseArr.length];
        for (int i2 = 0; i2 < yogaNodeJNIBaseArr.length; i2++) {
            jArr[i2] = yogaNodeJNIBaseArr[i2].dq;
        }
        YogaNative.jni_YGNodeCalculateLayoutJNI(this.dq, f2, f3, jArr, yogaNodeJNIBaseArr);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void dq(dq dqVar) {
        YogaNative.jni_YGNodeStyleSetAlignItemsJNI(this.dq, dqVar.dq());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void dq(iw iwVar) {
        YogaNative.jni_YGNodeStyleSetJustifyContentJNI(this.dq, iwVar.dq());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void dq(mn mnVar) {
        this.p = mnVar;
        YogaNative.jni_YGNodeSetHasMeasureFuncJNI(this.dq, mnVar != null);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void dq(mp mpVar) {
        YogaNative.jni_YGNodeStyleSetPositionTypeJNI(this.dq, mpVar.dq());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void dq(o oVar, int i) {
        if (oVar instanceof YogaNodeJNIBase) {
            YogaNodeJNIBase yogaNodeJNIBase = (YogaNodeJNIBase) oVar;
            if (yogaNodeJNIBase.f692d != null) {
                throw new IllegalStateException("Child already has a parent, it must be removed first.");
            }
            if (this.ox == null) {
                this.ox = new ArrayList(4);
            }
            this.ox.add(i, yogaNodeJNIBase);
            yogaNodeJNIBase.f692d = this;
            YogaNative.jni_YGNodeInsertChildJNI(this.dq, yogaNodeJNIBase.dq, i);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void dq(ox oxVar) {
        YogaNative.jni_YGNodeStyleSetDirectionJNI(this.dq, oxVar.dq());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void dq(p pVar, float f2) {
        YogaNative.jni_YGNodeStyleSetMarginJNI(this.dq, pVar.dq(), f2);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void dq(q qVar) {
        YogaNative.jni_YGNodeStyleSetFlexWrapJNI(this.dq, qVar.dq());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void dq(s sVar) {
        YogaNative.jni_YGNodeStyleSetFlexDirectionJNI(this.dq, sVar.dq());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void dq(Object obj) {
        this.iw = obj;
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public float ia() {
        float[] fArr = this.arr;
        return fArr != null ? fArr[2] : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void ia(float f2) {
        YogaNative.jni_YGNodeStyleSetMinWidthJNI(this.dq, f2);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void ig(float f2) {
        YogaNative.jni_YGNodeStyleSetAspectRatioJNI(this.dq, f2);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public float iw() {
        float[] fArr = this.arr;
        return fArr != null ? fArr[4] : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void iw(float f2) {
        YogaNative.jni_YGNodeStyleSetHeightJNI(this.dq, f2);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public Object kk() {
        return this.iw;
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void kk(float f2) {
        YogaNative.jni_YGNodeStyleSetMinHeightJNI(this.dq, f2);
    }

    @com.bytedance.adsdk.ugeno.yoga.dq.dq
    public final long measure(float f2, int i, float f3, int i2) {
        if (no()) {
            return this.p.dq(this, f2, ia.dq(i), f3, ia.dq(i2));
        }
        throw new RuntimeException("Measure function isn't defined!");
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public float mn() {
        float[] fArr = this.arr;
        return fArr != null ? fArr[1] : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void mn(float f2) {
        YogaNative.jni_YGNodeStyleSetHeightPercentJNI(this.dq, f2);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void no(float f2) {
        YogaNative.jni_YGNodeStyleSetMaxHeightJNI(this.dq, f2);
    }

    public boolean no() {
        return this.p != null;
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    public YogaNodeJNIBase d() {
        return this.f692d;
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void o(float f2) {
        YogaNative.jni_YGNodeStyleSetMaxWidthJNI(this.dq, f2);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    /* renamed from: ox, reason: merged with bridge method [inline-methods] */
    public YogaNodeJNIBase dq(int i) {
        List<YogaNodeJNIBase> list = this.ox;
        if (list != null) {
            return list.get(i);
        }
        throw new IllegalStateException("YogaNode does not have children");
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void ox() {
        YogaNative.jni_YGNodeStyleSetWidthAutoJNI(this.dq);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void ox(float f2) {
        YogaNative.jni_YGNodeStyleSetFlexBasisJNI(this.dq, f2);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void ox(dq dqVar) {
        YogaNative.jni_YGNodeStyleSetAlignContentJNI(this.dq, dqVar.dq());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void ox(p pVar, float f2) {
        YogaNative.jni_YGNodeStyleSetPositionJNI(this.dq, pVar.dq(), f2);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public YogaNodeJNIBase d(int i) {
        List<YogaNodeJNIBase> list = this.ox;
        if (list == null) {
            throw new IllegalStateException("Trying to remove a child of a YogaNode that does not have children");
        }
        YogaNodeJNIBase remove = list.remove(i);
        remove.f692d = null;
        YogaNative.jni_YGNodeRemoveChildJNI(this.dq, remove.dq);
        return remove;
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void p() {
        YogaNative.jni_YGNodeStyleSetHeightAutoJNI(this.dq);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void p(float f2) {
        YogaNative.jni_YGNodeStyleSetWidthJNI(this.dq, f2);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public float s() {
        float[] fArr = this.arr;
        return fArr != null ? fArr[3] : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.o
    public void s(float f2) {
        YogaNative.jni_YGNodeStyleSetWidthPercentJNI(this.dq, f2);
    }
}
