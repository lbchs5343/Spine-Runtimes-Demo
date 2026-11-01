package com.bytedance.msdk.core.dq.dq.d.dq.dq;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.d.s;
import com.bytedance.msdk.dq.s.iw;
import com.bytedance.sdk.openadsdk.adhost.R;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.hat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class ox extends s implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private no f867d;
    private Bridge dq;
    private com.bytedance.msdk.core.dq.dq.d.dq ox;
    private com.bytedance.msdk.api.dq.d p;

    public ox(com.bytedance.msdk.core.dq.dq.d.dq dqVar, Bridge bridge) {
        this.dq = bridge;
        this.ox = dqVar;
        this.f867d = dqVar.f854d;
        this.p = dqVar.dq;
        td();
        i(jb());
        le(iu());
        d(ml());
        i((int) ml());
        k(hz());
        wp(xq());
        e(sp());
        no(xn());
        n(vk());
        op(ne());
        ji(ix());
        kx(gv());
        h(uo());
        gh(hg());
        gh(fa());
        dq(el());
        p(kr());
        ir(vk());
        ia(dn());
        no noVar = this.f867d;
        if (noVar != null) {
            if (noVar.op()) {
                dq(gn());
            } else if (this.f867d.u()) {
                mp(ax());
            }
        }
        if (ps() == 2) {
            ig(5);
        } else if (ps() == 1 || ps() == 4) {
            ig(3);
        } else if (ps() == 3) {
            ig(4);
        } else {
            ig(3);
        }
        if (dn()) {
            mp(4);
        } else {
            mp(3);
        }
        mn(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String ax() {
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        return (dqVar == null || !dqVar.ox()) ? fg() : yj();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int az() {
        int intValue;
        Bridge bridge = this.dq;
        if (bridge == null || (intValue = ((Integer) bridge.call(40003, null, Integer.class)).intValue()) == -1) {
            return 0;
        }
        return intValue;
    }

    private ViewGroup d(Context context) {
        if (this.dq == null || context == null) {
            return null;
        }
        hat f2 = hat.f();
        f2.m(10000, context);
        return (ViewGroup) this.dq.call(40055, f2.k(), ViewGroup.class);
    }

    private void d(List<View> list) {
        if (this.dq != null) {
            hat f2 = hat.f();
            f2.m(50021, list);
            this.dq.call(40059, f2.k(), Void.class);
        }
    }

    private boolean dn() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            return ((Boolean) bridge.call(40052, null, Boolean.class)).booleanValue();
        }
        return false;
    }

    private FrameLayout dq(Context context) {
        if (this.dq == null || context == null) {
            return null;
        }
        hat f2 = hat.f();
        f2.m(10000, context);
        return (FrameLayout) this.dq.call(40057, f2.k(), FrameLayout.class);
    }

    private void dq(Context context, ViewGroup viewGroup, FrameLayout.LayoutParams layoutParams, List<View> list, List<View> list2) {
        if (this.dq == null || context == null) {
            return;
        }
        hat f2 = hat.f();
        f2.m(10000, context);
        f2.m(50013, viewGroup);
        f2.m(50017, layoutParams);
        f2.m(50018, list);
        f2.m(50019, list2);
        this.dq.call(40056, f2.k(), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(Context context, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.bytedance.msdk.api.p.dq.mn.no noVar) {
        ViewGroup d2;
        FrameLayout dq;
        Object tag;
        if (list3 != null) {
            if (list2 == null) {
                list2 = new ArrayList<>();
            }
            list2.addAll(list3);
        }
        List<View> list4 = list2;
        no noVar2 = this.f867d;
        if (noVar2 != null && noVar2.n()) {
            wp(az());
        }
        if (context == null) {
            context = viewGroup.getContext();
        }
        Context context2 = context;
        int i = 0;
        if (viewGroup.getChildCount() == 0 || !ox(viewGroup.getChildAt(0))) {
            d2 = d(context2);
            if (d2 != null) {
                d2.setTag(R.id.tt_mediation_gdt_developer_view_root_tag_key, MediationConstant.TT_GDT_NATIVE_ROOT_VIEW_TAG);
                while (viewGroup.getChildCount() > 0) {
                    View childAt = viewGroup.getChildAt(0);
                    childAt.setTag(R.id.tt_mediation_gdt_developer_view_tag_key, MediationConstant.TT_GDT_NATIVE_VIEW_TAG);
                    viewGroup.removeViewInLayout(childAt);
                    d2.addView(childAt, childAt.getLayoutParams());
                }
                viewGroup.removeAllViews();
                viewGroup.addView(d2, -1, -1);
            }
        } else {
            d2 = (ViewGroup) viewGroup.getChildAt(0);
            while (i < d2.getChildCount()) {
                View childAt2 = d2.getChildAt(i);
                if (childAt2 == null || ((tag = childAt2.getTag(R.id.tt_mediation_gdt_developer_view_tag_key)) != null && (tag instanceof String) && ((String) tag).equals(MediationConstant.TT_GDT_NATIVE_VIEW_TAG))) {
                    i++;
                } else {
                    d2.removeView(childAt2);
                }
            }
        }
        ViewGroup viewGroup2 = d2;
        FrameLayout frameLayout = (FrameLayout) viewGroup.findViewById(noVar.mn);
        dq(context2, viewGroup2, dr(), list, list4);
        if (frameLayout != null && yo() == 5 && (dq = dq(context2)) != null) {
            frameLayout.removeAllViews();
            frameLayout.addView(dq, -1, -1);
            dq(dq);
        }
        if (!TextUtils.isEmpty(ix())) {
            View findViewById = viewGroup.findViewById(noVar.p);
            ArrayList arrayList = new ArrayList();
            arrayList.add(findViewById);
            d(arrayList);
        }
        ri();
    }

    private void dq(FrameLayout frameLayout) {
        Object obj;
        if (this.dq != null) {
            hat f2 = hat.f();
            f2.m(50013, frameLayout);
            com.bytedance.msdk.api.dq.d dVar = this.p;
            if (dVar != null && dVar.wn() != null && (obj = this.p.wn().get(MediationConstant.KEY_GDT_VIDEO_OPTION)) != null) {
                f2.m(50020, obj);
            }
            this.dq.call(40058, f2.k(), Void.class);
        }
    }

    private FrameLayout.LayoutParams dr() {
        com.bytedance.msdk.api.dq.d dVar = this.p;
        if (dVar == null || dVar.wn() == null) {
            return null;
        }
        Object obj = this.p.wn().get(MediationConstant.KEY_GDT_NATIVE_LOGO_PARAMS);
        if (obj instanceof FrameLayout.LayoutParams) {
            return (FrameLayout.LayoutParams) obj;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i) {
        if (this.dq != null) {
            hat f2 = hat.f();
            f2.o(50007, i);
            this.dq.call(40013, f2.k(), Void.class);
        }
    }

    private List<String> el() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            return (List) bridge.call(40050, null, List.class);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ez() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            bridge.call(40061, null, Void.class);
        }
    }

    private int fa() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            return ((Integer) bridge.call(40049, null, Integer.class)).intValue();
        }
        return 0;
    }

    private String fg() {
        Bridge bridge = this.dq;
        return bridge == null ? "" : (String) bridge.call(40004, null, String.class);
    }

    private int fn() {
        try {
            Integer num = (Integer) iw.dq(new Callable<Integer>() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.dq.ox.6
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public Integer call() throws Exception {
                    return Integer.valueOf(ox.this.az());
                }
            }).get(500L, TimeUnit.MILLISECONDS);
            if (num != null) {
                return num.intValue();
            }
            return 0;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    private double gn() {
        if (this.dq == null) {
            return 0.0d;
        }
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        return (dqVar == null || !dqVar.ox()) ? az() : fn();
    }

    private String gv() {
        Bridge bridge = this.dq;
        return bridge != null ? (String) bridge.call(40046, null, String.class) : "";
    }

    private int hg() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            return ((Integer) bridge.call(40048, null, Integer.class)).intValue();
        }
        return 0;
    }

    private String hz() {
        Bridge bridge = this.dq;
        return bridge != null ? (String) bridge.call(40041, null, String.class) : "";
    }

    private com.bytedance.msdk.api.p.dq.dq.dq il() {
        return (com.bytedance.msdk.api.p.dq.dq.dq) this.ig;
    }

    private String iu() {
        Bridge bridge = this.dq;
        return bridge != null ? (String) bridge.call(40039, null, String.class) : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void iw(Map<String, Object> map) {
        if (this.dq != null) {
            hat f2 = hat.f();
            f2.m(50010, map);
            this.dq.call(40014, f2.k(), Void.class);
        }
    }

    private String ix() {
        Bridge bridge = this.dq;
        return bridge != null ? (String) bridge.call(40045, null, String.class) : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void iy() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            bridge.call(40064, null, Void.class);
        }
    }

    private String jb() {
        Bridge bridge = this.dq;
        return bridge != null ? (String) bridge.call(40038, null, String.class) : "";
    }

    private MediationConstant.AdIsReadyStatus ju() {
        try {
            MediationConstant.AdIsReadyStatus adIsReadyStatus = (MediationConstant.AdIsReadyStatus) iw.dq(new Callable<MediationConstant.AdIsReadyStatus>() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.dq.ox.9
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public MediationConstant.AdIsReadyStatus call() throws Exception {
                    return ox.this.ru();
                }
            }).get(500L, TimeUnit.MILLISECONDS);
            return adIsReadyStatus != null ? adIsReadyStatus : MediationConstant.AdIsReadyStatus.AD_IS_NOT_READY;
        } catch (Exception e2) {
            e2.printStackTrace();
            return MediationConstant.AdIsReadyStatus.AD_IS_NOT_READY;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int kf() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            int intValue = ((Integer) bridge.call(40053, null, Integer.class)).intValue();
            if (intValue == 0) {
                return 0;
            }
            if (intValue == 1) {
                return 6;
            }
            if (intValue == 2) {
                return 8;
            }
            if (intValue == 4) {
                return 2;
            }
            if (intValue == 8) {
                return 5;
            }
            if (intValue == 16) {
                return 4;
            }
            if (intValue == 32) {
                return 3;
            }
            if (intValue == 64) {
                return 7;
            }
        }
        return 1;
    }

    private String kj() {
        try {
            return (String) iw.dq(new Callable<String>() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.dq.ox.13
                @Override // java.util.concurrent.Callable
                public String call() throws Exception {
                    return ox.this.rv();
                }
            }).get(500L, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private double kr() {
        if (this.dq != null) {
            return ((Integer) r0.call(40051, null, Integer.class)).intValue();
        }
        return 0.0d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lm() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            bridge.call(40062, null, Void.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mj() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            bridge.call(40011, null, Void.class);
        }
    }

    private long ml() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            return ((Long) bridge.call(40040, null, Long.class)).longValue();
        }
        return 0L;
    }

    private String ne() {
        Bridge bridge = this.dq;
        return bridge != null ? (String) bridge.call(40033, null, String.class) : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nm() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            bridge.call(40063, null, Void.class);
        }
    }

    private boolean ox(View view) {
        if (this.dq == null) {
            return false;
        }
        hat f2 = hat.f();
        f2.m(50013, view);
        return ((Boolean) this.dq.call(40054, f2.k(), Boolean.class)).booleanValue();
    }

    private int ps() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            return ((Integer) bridge.call(40021, null, Integer.class)).intValue();
        }
        return 0;
    }

    private void ri() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            bridge.call(40060, null, Void.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MediationConstant.AdIsReadyStatus ru() {
        Bridge bridge = this.dq;
        return (bridge == null || !((Boolean) bridge.call(40010, null, Boolean.class)).booleanValue()) ? MediationConstant.AdIsReadyStatus.AD_IS_NOT_READY : MediationConstant.AdIsReadyStatus.AD_IS_READY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String rv() {
        Map map;
        Object obj;
        Bridge bridge = this.dq;
        return (bridge == null || (map = (Map) bridge.call(40015, null, Map.class)) == null || (obj = map.get("request_id")) == null) ? "" : obj.toString();
    }

    private String sp() {
        Bridge bridge = this.dq;
        return bridge != null ? (String) bridge.call(40043, null, String.class) : "";
    }

    private void td() {
        if (this.dq != null) {
            hat f2 = hat.f();
            f2.m(50009, this);
            this.dq.call(40009, f2.k(), null);
        }
    }

    private int u() {
        try {
            Integer num = (Integer) iw.dq(new Callable<Integer>() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.dq.ox.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public Integer call() throws Exception {
                    return Integer.valueOf(ox.this.kf());
                }
            }).get(500L, TimeUnit.MILLISECONDS);
            if (num != null) {
                return num.intValue();
            }
            return 1;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 1;
        }
    }

    private String uo() {
        Bridge bridge = this.dq;
        return bridge != null ? (String) bridge.call(40047, null, String.class) : "";
    }

    private String vk() {
        Bridge bridge = this.dq;
        return bridge != null ? (String) bridge.call(40032, null, String.class) : "";
    }

    private void wp(int i) {
        if (this.dq != null) {
            hat f2 = hat.f();
            f2.o(50007, i);
            this.dq.call(40007, f2.k(), null);
        }
    }

    private String xn() {
        Bridge bridge = this.dq;
        return bridge != null ? (String) bridge.call(40044, null, String.class) : "";
    }

    private String xq() {
        Bridge bridge = this.dq;
        return bridge != null ? (String) bridge.call(40042, null, String.class) : "";
    }

    private String yj() {
        try {
            String str = (String) iw.dq(new Callable<String>() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.dq.ox.7
                @Override // java.util.concurrent.Callable
                public String call() throws Exception {
                    return ox.this.ax();
                }
            }).get(500L, TimeUnit.MILLISECONDS);
            return str != null ? str : "";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 60004) {
            if (this.ig instanceof com.bytedance.msdk.api.p.dq.dq.dq) {
                il().dq(null);
            }
        } else if (i == 60009 && (this.ig instanceof com.bytedance.msdk.api.p.dq.dq.dq)) {
            il().d(null);
        }
        return null;
    }

    @Override // com.bytedance.msdk.d.s
    public int cd() {
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        return (dqVar == null || !dqVar.ox()) ? kf() : u();
    }

    @Override // com.bytedance.msdk.d.s
    public void ce() {
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        if (dqVar == null || !dqVar.ox()) {
            lm();
        } else {
            iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.dq.ox.3
                @Override // java.lang.Runnable
                public void run() {
                    ox.this.lm();
                }
            });
        }
    }

    @Override // com.bytedance.msdk.d.s
    public void d(Map<String, Object> map) {
        no noVar = this.f867d;
        if (noVar != null && noVar.op()) {
            final int dk = (int) dk();
            com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
            if (dqVar == null || !dqVar.ox()) {
                e(dk);
            } else {
                iw.p(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.dq.ox.11
                    @Override // java.lang.Runnable
                    public void run() {
                        ox.this.e(dk);
                    }
                });
            }
        }
    }

    @Override // com.bytedance.msdk.d.s
    public void dq(final Activity activity, final ViewGroup viewGroup, final List<View> list, final List<View> list2, final List<View> list3, final com.bytedance.msdk.api.p.dq.mn.no noVar, List<View> list4) {
        super.dq(activity, viewGroup, list, list2, list3, noVar, list4);
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        if (dqVar == null || !dqVar.ox()) {
            dq(activity, viewGroup, list, list2, list3, noVar);
        } else {
            iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.dq.ox.8
                @Override // java.lang.Runnable
                public void run() {
                    ox.this.dq(activity, viewGroup, (List<View>) list, (List<View>) list2, (List<View>) list3, noVar);
                }
            });
        }
    }

    @Override // com.bytedance.msdk.d.s
    public void dq(final Map<String, Object> map) {
        no noVar = this.f867d;
        if (noVar == null || !noVar.op() || map == null) {
            return;
        }
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        if (dqVar == null || !dqVar.ox()) {
            iw(map);
        } else {
            iw.p(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.dq.ox.12
                @Override // java.lang.Runnable
                public void run() {
                    ox.this.iw((Map<String, Object>) map);
                }
            });
        }
    }

    @Override // com.bytedance.msdk.d.s
    public boolean e() {
        return true;
    }

    @Override // com.bytedance.msdk.d.s
    public void er() {
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        if (dqVar == null || !dqVar.ox()) {
            ez();
        } else {
            iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.dq.ox.2
                @Override // java.lang.Runnable
                public void run() {
                    ox.this.ez();
                }
            });
        }
    }

    @Override // com.bytedance.msdk.d.s
    public void f() {
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        if (dqVar == null || !dqVar.ox()) {
            iy();
        } else {
            iw.p(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.dq.ox.5
                @Override // java.lang.Runnable
                public void run() {
                    ox.this.iy();
                }
            });
        }
    }

    @Override // com.bytedance.msdk.d.s
    public String iw() {
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        return (dqVar == null || !dqVar.ox()) ? rv() : kj();
    }

    @Override // com.bytedance.msdk.d.s
    public void jy() {
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        if (dqVar == null || !dqVar.ox()) {
            nm();
        } else {
            iw.p(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.dq.ox.4
                @Override // java.lang.Runnable
                public void run() {
                    ox.this.nm();
                }
            });
        }
    }

    @Override // com.bytedance.msdk.d.s
    public MediationConstant.AdIsReadyStatus kx() {
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        return (dqVar == null || !dqVar.ox()) ? ru() : ju();
    }

    @Override // com.bytedance.msdk.d.s
    public void p() {
        super.p();
        iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.dq.ox.10
            @Override // java.lang.Runnable
            public void run() {
                ox.this.mj();
            }
        });
    }

    @Override // com.bytedance.msdk.d.s
    public boolean s() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            return ((Boolean) bridge.call(40012, null, Boolean.class)).booleanValue();
        }
        return false;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return null;
    }
}
