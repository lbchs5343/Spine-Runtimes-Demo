package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.d.mp;
import com.bytedance.sdk.component.adexpress.d.no;
import com.bytedance.sdk.component.adexpress.d.q;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;
import com.bytedance.sdk.component.adexpress.dynamic.ox.iw;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class DynamicRootView extends FrameLayout implements com.bytedance.sdk.component.adexpress.dynamic.p, com.bytedance.sdk.component.adexpress.theme.dq {
    private Map<Integer, String> cd;

    /* renamed from: d, reason: collision with root package name */
    boolean f1716d;
    protected final q dq;

    /* renamed from: f, reason: collision with root package name */
    private Context f1717f;
    private String fw;
    private com.bytedance.sdk.component.adexpress.dynamic.d ia;
    private com.bytedance.sdk.component.adexpress.dynamic.s ig;
    private com.bytedance.sdk.component.adexpress.dynamic.s.dq iw;
    private mp jy;
    private ViewGroup kk;
    private ThemeStatusBroadcastReceiver mn;
    private int mp;
    private List<com.bytedance.sdk.component.adexpress.dynamic.ox> no;
    private int o;
    public View ox;
    private no p;
    private int q;
    private DynamicBaseWidget s;

    public DynamicRootView(Context context, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z, mp mpVar, com.bytedance.sdk.component.adexpress.dynamic.s.dq dqVar) {
        super(context);
        this.kk = null;
        this.o = 0;
        this.no = new ArrayList();
        this.mp = 0;
        this.q = 0;
        this.f1717f = context;
        q qVar = new q();
        this.dq = qVar;
        qVar.dq(2);
        this.iw = dqVar;
        dqVar.dq(this);
        this.mn = themeStatusBroadcastReceiver;
        themeStatusBroadcastReceiver.dq(this);
        this.f1716d = z;
        this.jy = mpVar;
    }

    private void dq(ViewGroup viewGroup, ia iaVar) {
        ViewGroup viewGroup2;
        if (viewGroup == null || (viewGroup2 = (ViewGroup) viewGroup.getParent()) == null || !iaVar.wp()) {
            return;
        }
        viewGroup2.setClipChildren(false);
        viewGroup2.setClipToPadding(false);
        ViewGroup viewGroup3 = (ViewGroup) viewGroup2.getParent();
        if (viewGroup3 != null) {
            viewGroup3.setClipChildren(false);
            viewGroup3.setClipToPadding(false);
        }
    }

    private void dq(ia iaVar) {
        iw s;
        com.bytedance.sdk.component.adexpress.dynamic.ox.s o = iaVar.o();
        if (o == null || (s = o.s()) == null) {
            return;
        }
        this.dq.d(s.w());
    }

    @Override // com.bytedance.sdk.component.adexpress.theme.dq
    public void b_(int i) {
        DynamicBaseWidget dynamicBaseWidget = this.s;
        if (dynamicBaseWidget == null) {
            return;
        }
        dynamicBaseWidget.dq(i);
    }

    public void d() {
        dq(this.s, 4);
    }

    public DynamicBaseWidget dq(ia iaVar, ViewGroup viewGroup, int i) {
        if (iaVar == null) {
            return null;
        }
        List<ia> no = iaVar.no();
        DynamicBaseWidget dq = com.bytedance.sdk.component.adexpress.dynamic.dq.d.dq(this.f1717f, this, iaVar);
        if (dq instanceof DynamicUnKnowView) {
            dq(i == 3 ? TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME : 118, "unknow widget");
            return null;
        }
        dq(iaVar);
        dq.dq();
        if (viewGroup != null) {
            viewGroup.addView(dq);
            dq(viewGroup, iaVar);
        }
        if (no == null || no.size() <= 0) {
            return null;
        }
        Iterator<ia> it = no.iterator();
        while (it.hasNext()) {
            dq(it.next(), dq, i);
        }
        return dq;
    }

    public void dq() {
        dq(this.s, 0);
    }

    public void dq(double d2, double d3, double d4, double d5, float f2) {
        this.dq.ox(d2);
        this.dq.p(d3);
        this.dq.s(d4);
        this.dq.iw(d5);
        this.dq.dq(f2);
        this.dq.d(f2);
        this.dq.ox(f2);
        this.dq.p(f2);
    }

    public void dq(int i, String str) {
        this.dq.dq(false);
        this.dq.d(i);
        this.dq.dq(str);
        this.p.dq(this.dq);
    }

    public void dq(DynamicBaseWidget dynamicBaseWidget, int i) {
        if (dynamicBaseWidget == null) {
            return;
        }
        if (dynamicBaseWidget.getBeginInvisibleAndShow()) {
            dynamicBaseWidget.setVisibility(i);
            View view = dynamicBaseWidget.jy;
            if (view != null) {
                view.setVisibility(i);
            }
        }
        int childCount = dynamicBaseWidget.getChildCount();
        if (childCount <= 0) {
            return;
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            if (dynamicBaseWidget.getChildAt(i2) instanceof DynamicBaseWidget) {
                dq((DynamicBaseWidget) dynamicBaseWidget.getChildAt(i2), i);
            }
        }
    }

    public void dq(ia iaVar, int i) {
        this.s = dq(iaVar, this, i);
        this.dq.dq(true);
        this.dq.dq(this.s.s);
        this.dq.d(this.s.iw);
        this.dq.dq(this.ox);
        this.p.dq(this.dq);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.p
    public void dq(CharSequence charSequence, int i, int i2, boolean z) {
        for (int i3 = 0; i3 < this.no.size(); i3++) {
            if (this.no.get(i3) != null) {
                this.no.get(i3).dq(charSequence, i == 1, i2, z);
            }
        }
    }

    public String getBgColor() {
        return this.fw;
    }

    public Map<Integer, String> getBgMaterialCenterCalcColor() {
        return this.cd;
    }

    public com.bytedance.sdk.component.adexpress.dynamic.s.dq getDynamicClickListener() {
        return this.iw;
    }

    public int getLogoUnionHeight() {
        return this.mp;
    }

    public no getRenderListener() {
        return this.p;
    }

    public mp getRenderRequest() {
        return this.jy;
    }

    public int getScoreCountWithIcon() {
        return this.q;
    }

    public ViewGroup getTimeOut() {
        return this.kk;
    }

    public List<com.bytedance.sdk.component.adexpress.dynamic.ox> getTimeOutListener() {
        return this.no;
    }

    public int getTimedown() {
        return this.o;
    }

    public void setBgColor(String str) {
        this.fw = str;
    }

    public void setBgMaterialCenterCalcColor(Map<Integer, String> map) {
        this.cd = map;
    }

    public void setDislikeView(View view) {
        this.iw.d(view);
    }

    public void setLogoUnionHeight(int i) {
        this.mp = i;
    }

    public void setMuteListener(com.bytedance.sdk.component.adexpress.dynamic.d dVar) {
        this.ia = dVar;
    }

    public void setRenderListener(no noVar) {
        this.p = noVar;
        this.iw.dq(noVar);
    }

    public void setScoreCountWithIcon(int i) {
        this.q = i;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.p
    public void setSoundMute(boolean z) {
        com.bytedance.sdk.component.adexpress.dynamic.d dVar = this.ia;
        if (dVar != null) {
            dVar.setSoundMute(z);
        }
    }

    public void setTimeOut(ViewGroup viewGroup) {
        this.kk = viewGroup;
    }

    public void setTimeOutListener(com.bytedance.sdk.component.adexpress.dynamic.ox oxVar) {
        this.no.add(oxVar);
    }

    public void setTimeUpdate(int i) {
        this.ig.setTimeUpdate(i);
    }

    public void setTimedown(int i) {
        this.o = i;
    }

    public void setVideoListener(com.bytedance.sdk.component.adexpress.dynamic.s sVar) {
        this.ig = sVar;
    }
}
