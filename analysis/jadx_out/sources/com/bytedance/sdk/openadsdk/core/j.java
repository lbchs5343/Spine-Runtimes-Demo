package com.bytedance.sdk.openadsdk.core;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import java.util.HashSet;

/* loaded from: classes3.dex */
public class j {
    private static final HashSet<String> ia;
    private static final HashSet<String> mn;
    private static final boolean dq = com.bytedance.sdk.openadsdk.core.ir.e.jy();

    /* renamed from: d, reason: collision with root package name */
    private static final boolean f3085d = dq();
    private static int ox = -1;
    private static int p = -1;
    private static int s = -1;
    private static Handler iw = null;

    static {
        HashSet<String> hashSet = new HashSet<>();
        hashSet.add("HUAWEI C8812");
        hashSet.add("HUAWEI C8812E");
        hashSet.add("HUAWEI C8825D");
        hashSet.add("HUAWEI U8825D");
        hashSet.add("HUAWEI C8950D");
        hashSet.add("HUAWEI U8950D");
        mn = hashSet;
        HashSet<String> hashSet2 = new HashSet<>();
        hashSet2.add("ZTE V955");
        hashSet2.add("ZTE N881E");
        hashSet2.add("ZTE N881F");
        hashSet2.add("ZTE N880G");
        hashSet2.add("ZTE N880F");
        hashSet2.add("ZTE V889F");
        ia = hashSet2;
    }

    public static void d(Context context, com.bytedance.sdk.component.mp.dq dqVar) {
        if (context == null || dqVar == null || !(context instanceof Activity)) {
            return;
        }
        Activity activity = (Activity) context;
        if (activity.isFinishing()) {
            try {
                dqVar.dq("about:blank");
                if (s > 0) {
                    View rootView = dqVar.getView().getRootView();
                    if (rootView instanceof ViewGroup) {
                        View childAt = ((ViewGroup) rootView).getChildAt(0);
                        childAt.setDrawingCacheEnabled(true);
                        Bitmap createBitmap = Bitmap.createBitmap(childAt.getDrawingCache());
                        childAt.setDrawingCacheEnabled(false);
                        ImageView imageView = new ImageView(activity);
                        imageView.setImageBitmap(createBitmap);
                        imageView.setVisibility(0);
                        ((ViewGroup) rootView).addView(imageView, new ViewGroup.LayoutParams(-1, -1));
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void dq(final Context context, final com.bytedance.sdk.component.mp.dq dqVar) {
        com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.j.1
            @Override // java.lang.Runnable
            public void run() {
                j.d(context, dqVar);
            }
        });
    }

    public static void dq(final com.bytedance.sdk.component.mp.dq dqVar) {
        com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.j.2
            @Override // java.lang.Runnable
            public void run() {
                j.ox(com.bytedance.sdk.component.mp.dq.this);
            }
        });
    }

    private static boolean dq() {
        return dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ox(com.bytedance.sdk.component.mp.dq dqVar) {
        if (dqVar == null) {
            return;
        }
        dqVar.setWebChromeClient(null);
        dqVar.setWebViewClient(null);
        View view = dqVar.getView();
        ViewParent parent = view.getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            ((ViewGroup) parent).removeView(view);
        }
        dqVar.removeAllViews();
        try {
            dqVar.dq();
        } catch (Throwable unused) {
        }
    }
}
