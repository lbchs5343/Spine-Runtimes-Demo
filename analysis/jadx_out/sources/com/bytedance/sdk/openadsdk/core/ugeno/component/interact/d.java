package com.bytedance.sdk.openadsdk.core.ugeno.component.interact;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;
import g.tn;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class d {

    /* renamed from: d, reason: collision with root package name */
    protected dq f3559d;
    protected final j dq;
    private EasyPlayableContainer iw;
    protected ox ox;
    protected boolean p = false;
    protected Runnable s;

    public d(j jVar, dq dqVar, ox oxVar) {
        this.dq = jVar;
        this.f3559d = dqVar;
        this.ox = oxVar;
    }

    public abstract mn d();

    public abstract void d(ViewGroup viewGroup, View view, boolean z);

    public abstract int dq();

    public void dq(final ViewGroup viewGroup, final View view, final View view2, final boolean z, final boolean z2) {
        final HashMap hashMap = new HashMap();
        hashMap.put("render_type", Integer.valueOf(dq()));
        if (viewGroup != null && view != null && view2 != null) {
            view.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.interact.d.3
                @Override // java.lang.Runnable
                public void run() {
                    if (!d.this.dq(view.getWidth(), view.getHeight())) {
                        hashMap.put("view_width", Integer.valueOf(view.getWidth()));
                        hashMap.put("view_height", Integer.valueOf(view.getHeight()));
                        hashMap.put("error_code", 103);
                        d.this.ox.dq(false, (Map<String, Object>) hashMap);
                        return;
                    }
                    d dVar = d.this;
                    dVar.ox.d(dVar.dq());
                    if (view2.getParent() != null) {
                        ((ViewGroup) view2.getParent()).removeView(view2);
                    }
                    d.this.iw = new EasyPlayableContainer(wp.getContext(), d.this.d());
                    d.this.iw.setTag("easy_pfwv");
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(view.getWidth(), view.getHeight());
                    layoutParams.gravity = 17;
                    d.this.iw.addView(view2, layoutParams);
                    hashMap.put("container_name", viewGroup.getClass().getName());
                    ViewGroup viewGroup2 = viewGroup;
                    if (viewGroup2 instanceof RelativeLayout) {
                        d.this.iw.setLayoutParams(tn.q(-2, -2, 13));
                        viewGroup.addView(d.this.iw);
                        if (!z) {
                            viewGroup.setClipChildren(false);
                        }
                        if (!z2) {
                            d.this.ox.dq(true, (Map<String, Object>) hashMap);
                            return;
                        }
                        hashMap.put("error_code", 105);
                    } else if (viewGroup2 instanceof FrameLayout) {
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
                        layoutParams2.gravity = 17;
                        d.this.iw.setLayoutParams(layoutParams2);
                        viewGroup.addView(d.this.iw);
                        if (!z) {
                            viewGroup.setClipChildren(false);
                        }
                        if (!z2) {
                            d.this.ox.dq(true, (Map<String, Object>) hashMap);
                            return;
                        }
                        hashMap.put("error_code", 105);
                    }
                    d.this.ox.dq(false, (Map<String, Object>) hashMap);
                }
            });
        } else {
            hashMap.put("error_code", 102);
            this.ox.dq(false, (Map<String, Object>) hashMap);
        }
    }

    public void dq(final ViewGroup viewGroup, final View view, final boolean z) {
        this.s = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.interact.d.1
            @Override // java.lang.Runnable
            public void run() {
                d.this.d(viewGroup, view, z);
            }
        };
        viewGroup.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.interact.d.2
            @Override // java.lang.Runnable
            public void run() {
                int height = viewGroup.getHeight();
                int width = viewGroup.getWidth();
                if (height == 0 || width == 0 || viewGroup.getVisibility() != 0) {
                    d.this.p = true;
                    return;
                }
                Runnable runnable = d.this.s;
                if (runnable != null) {
                    runnable.run();
                }
            }
        });
    }

    public abstract boolean dq(int i, int i2);
}
