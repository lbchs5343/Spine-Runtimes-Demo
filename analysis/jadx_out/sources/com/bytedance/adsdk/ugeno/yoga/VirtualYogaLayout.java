package com.bytedance.adsdk.ugeno.yoga;

import android.view.View;
import android.view.ViewGroup;
import com.bytedance.adsdk.ugeno.yoga.YogaLayout;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class VirtualYogaLayout extends ViewGroup {

    /* renamed from: d, reason: collision with root package name */
    private final Map<View, o> f687d;
    private final List<View> dq;
    private final o ox;

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof VirtualYogaLayout) {
            VirtualYogaLayout virtualYogaLayout = (VirtualYogaLayout) view;
            virtualYogaLayout.dq(this);
            o yogaNode = virtualYogaLayout.getYogaNode();
            o oVar = this.ox;
            oVar.dq(yogaNode, oVar.dq());
            return;
        }
        o dq = no.dq();
        YogaLayout.dq(new YogaLayout.dq(layoutParams), dq, view);
        dq.dq(view);
        dq.dq((mn) new YogaLayout.d());
        o oVar2 = this.ox;
        oVar2.dq(dq, oVar2.dq());
        dq(view, dq);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof YogaLayout.dq;
    }

    public void dq(View view, o oVar) {
        this.dq.add(view);
        this.f687d.put(view, oVar);
    }

    public void dq(ViewGroup viewGroup) {
        if (viewGroup instanceof VirtualYogaLayout) {
            for (View view : this.dq) {
                ((VirtualYogaLayout) viewGroup).dq(view, this.f687d.get(view));
            }
        } else {
            if (!(viewGroup instanceof YogaLayout)) {
                throw new RuntimeException("VirtualYogaLayout cannot transfer children to ViewGroup of type " + viewGroup.getClass().getCanonicalName() + ".  Must either be a VirtualYogaLayout or a YogaLayout.");
            }
            for (View view2 : this.dq) {
                ((YogaLayout) viewGroup).dq(view2, this.f687d.get(view2));
            }
        }
        this.dq.clear();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new YogaLayout.dq(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new YogaLayout.dq(layoutParams);
    }

    public o getYogaNode() {
        return this.ox;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        throw new RuntimeException("Attempting to layout a VirtualYogaLayout");
    }
}
