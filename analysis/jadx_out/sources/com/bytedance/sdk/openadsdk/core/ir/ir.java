package com.bytedance.sdk.openadsdk.core.ir;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.he;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class ir {
    public static final int dq = com.bytedance.sdk.component.utils.r.iw(com.bytedance.sdk.openadsdk.core.wp.getContext(), "tt_shake_tag_key");

    /* renamed from: d, reason: collision with root package name */
    private static final ConcurrentHashMap<ViewGroup, Object> f3047d = new ConcurrentHashMap<>();
    private static final Object ox = new Object();
    private static volatile boolean p = false;

    private ir() {
    }

    public static void dq(final int i, final String str) {
        com.bytedance.sdk.openadsdk.core.gh.d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ir.ir.2
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("shake_tag", i);
                    jSONObject.put("error_msg", str);
                } catch (Throwable unused) {
                }
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("stats_shake_tag_key").d(jSONObject.toString());
            }
        }, "stats_shake_tag_key", false);
    }

    private static void dq(ViewGroup viewGroup, boolean z) {
        if (viewGroup == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("is_shake_efficient", Boolean.valueOf(z));
        int i = dq;
        Object tag = viewGroup.getTag(i);
        if (tag != null) {
            try {
                if (!(tag instanceof HashMap)) {
                    return;
                }
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.ig.p("TTShakeChecker", th.getMessage());
                dq(dq, th.getMessage());
                return;
            }
        }
        viewGroup.setTag(i, hashMap);
    }

    public static void dq(WeakReference<ViewGroup> weakReference, float f2, float f3, long j) {
        if (weakReference == null) {
            return;
        }
        ViewGroup viewGroup = weakReference.get();
        if (com.bytedance.sdk.openadsdk.core.er.dq(viewGroup) && dq(f2, f3, j)) {
            f3047d.put(viewGroup, ox);
            if (p) {
                return;
            }
            synchronized (ir.class) {
                try {
                    if (p) {
                        return;
                    }
                    p = true;
                    com.bytedance.sdk.openadsdk.core.le.iw().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ir.ir.3
                        @Override // java.lang.Runnable
                        public void run() {
                            ir.p();
                        }
                    }, 50L);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static void dq(WeakReference<ViewGroup> weakReference, com.bytedance.sdk.openadsdk.core.d.ox oxVar) {
        if (weakReference == null || oxVar == null) {
            return;
        }
        ViewGroup viewGroup = weakReference.get();
        if (!com.bytedance.sdk.openadsdk.core.er.dq(viewGroup)) {
            dq(viewGroup, false);
            return;
        }
        f3047d.put(viewGroup, oxVar);
        if (p) {
            dq(viewGroup, false);
            return;
        }
        synchronized (ir.class) {
            try {
                if (p) {
                    dq(viewGroup, false);
                } else {
                    p = true;
                    com.bytedance.sdk.openadsdk.core.le.iw().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ir.ir.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ir.ox();
                        }
                    }, 50L);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static boolean dq(float f2, float f3, long j) {
        if (f2 == -1.0f) {
            return true;
        }
        if (f2 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            return false;
        }
        if (f2 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && f3 == 2.1474836E9f) {
            return true;
        }
        if (f3 <= f2) {
            return false;
        }
        float currentTimeMillis = (System.currentTimeMillis() - j) / 1000.0f;
        return currentTimeMillis >= f2 && currentTimeMillis <= f3;
    }

    public static boolean dq(View view) {
        if (view == null) {
            return false;
        }
        Object tag = view.getTag(dq);
        if (tag instanceof Map) {
            Object obj = ((Map) tag).get("is_shake_efficient");
            if (obj instanceof Boolean) {
                return ((Boolean) obj).booleanValue();
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0090, code lost:
    
        if (r0.top < r1.top) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void ox() {
        ConcurrentHashMap<ViewGroup, Object> concurrentHashMap = f3047d;
        if (concurrentHashMap.isEmpty()) {
            return;
        }
        int s = ce.s(com.bytedance.sdk.openadsdk.core.wp.getContext());
        Iterator<ViewGroup> it = concurrentHashMap.keySet().iterator();
        ViewGroup viewGroup = null;
        ViewGroup viewGroup2 = null;
        int i = he.UNDEFINED_ITEM_ID;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ViewGroup next = it.next();
            if (next != null) {
                Rect rect = new Rect();
                if (!next.getGlobalVisibleRect(rect)) {
                    f3047d.remove(next);
                } else if (com.bytedance.sdk.openadsdk.core.er.dq(next)) {
                    int i2 = s / 2;
                    int i3 = rect.bottom;
                    int i4 = i3 <= i2 ? i2 - i3 : he.UNDEFINED_ITEM_ID;
                    int i5 = rect.top;
                    int i6 = i5 >= i2 ? i5 - i2 : he.UNDEFINED_ITEM_ID;
                    if (i3 > i2 && i5 < i2) {
                        viewGroup = next;
                        break;
                    }
                    int min = Math.min(i6, i4);
                    if (min < i) {
                        viewGroup = next;
                        i = min;
                    } else if (min == i) {
                        viewGroup2 = next;
                    }
                } else {
                    f3047d.remove(next);
                }
            }
        }
        if (viewGroup == null) {
            return;
        }
        if (viewGroup2 != null) {
            Rect rect2 = new Rect();
            viewGroup.getGlobalVisibleRect(rect2);
            Rect rect3 = new Rect();
            viewGroup2.getGlobalVisibleRect(rect3);
        }
        viewGroup2 = viewGroup;
        ConcurrentHashMap<ViewGroup, Object> concurrentHashMap2 = f3047d;
        com.bytedance.sdk.openadsdk.core.d.ox oxVar = concurrentHashMap2.get(viewGroup2) instanceof com.bytedance.sdk.openadsdk.core.d.ox ? (com.bytedance.sdk.openadsdk.core.d.ox) concurrentHashMap2.get(viewGroup2) : null;
        dq(viewGroup2, true);
        concurrentHashMap2.clear();
        p = false;
        if (oxVar != null) {
            oxVar.dq();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0091, code lost:
    
        if (r0.top < r1.top) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00dd A[LOOP:1: B:32:0x0097->B:40:0x00dd, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00bd A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void p() {
        com.bytedance.sdk.openadsdk.core.d.dq dqVar;
        ConcurrentHashMap<ViewGroup, Object> concurrentHashMap = f3047d;
        if (concurrentHashMap.isEmpty()) {
            return;
        }
        int s = ce.s(com.bytedance.sdk.openadsdk.core.wp.getContext());
        Iterator<ViewGroup> it = concurrentHashMap.keySet().iterator();
        ViewGroup viewGroup = null;
        ViewGroup viewGroup2 = null;
        int i = he.UNDEFINED_ITEM_ID;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ViewGroup next = it.next();
            if (next != null) {
                Rect rect = new Rect();
                if (!next.getGlobalVisibleRect(rect)) {
                    f3047d.remove(next);
                } else if (com.bytedance.sdk.openadsdk.core.er.dq(next)) {
                    int i2 = s / 2;
                    int i3 = rect.bottom;
                    int i4 = i3 <= i2 ? i2 - i3 : he.UNDEFINED_ITEM_ID;
                    int i5 = rect.top;
                    int i6 = i5 >= i2 ? i5 - i2 : he.UNDEFINED_ITEM_ID;
                    if (i3 > i2 && i5 < i2) {
                        viewGroup = next;
                        break;
                    }
                    int min = Math.min(i6, i4);
                    if (min < i) {
                        viewGroup = next;
                        i = min;
                    } else if (min == i) {
                        viewGroup2 = next;
                    }
                } else {
                    f3047d.remove(next);
                }
            }
        }
        if (viewGroup == null) {
            return;
        }
        if (viewGroup2 != null) {
            Rect rect2 = new Rect();
            viewGroup.getGlobalVisibleRect(rect2);
            Rect rect3 = new Rect();
            viewGroup2.getGlobalVisibleRect(rect3);
        }
        viewGroup2 = viewGroup;
        int i7 = 0;
        while (true) {
            if (i7 >= viewGroup2.getChildCount()) {
                break;
            }
            Object tag = viewGroup2.getChildAt(i7).getTag(dq);
            if (tag instanceof Map) {
                Object obj = ((Map) tag).get("click_listener");
                if (obj instanceof com.bytedance.sdk.openadsdk.core.d.dq) {
                    dqVar = (com.bytedance.sdk.openadsdk.core.d.dq) obj;
                    if (dqVar == null) {
                        HashMap hashMap = new HashMap();
                        hashMap.put("click_type", 2);
                        com.bytedance.sdk.openadsdk.core.d.dq.ox.dq dqVar2 = (com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class);
                        dqVar2.dq(hashMap);
                        dqVar2.dq();
                        dqVar.onClick(viewGroup2);
                        break;
                    }
                    i7++;
                }
            }
            dqVar = null;
            if (dqVar == null) {
            }
        }
        f3047d.clear();
        p = false;
    }
}
