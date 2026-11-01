package com.bytedance.sdk.openadsdk.core.ir;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.ActivityOptions;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.r.j;
import g.tn;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ce {

    /* renamed from: d, reason: collision with root package name */
    private static volatile float f3034d = -1.0f;
    public static volatile int dq = -1;
    private static float ia = 0.0f;
    private static volatile int iw = -1;
    private static int mn = 13;
    private static volatile int ox = -1;
    private static volatile float p = -1.0f;
    private static volatile int s = -1;

    public interface dq {
        void dq(View view);
    }

    private static float cd(Context context) {
        if (context == null) {
            context = com.bytedance.sdk.openadsdk.core.wp.getContext();
        }
        return context.getResources().getDisplayMetrics().density;
    }

    public static int d(float f2, float f3) {
        if (f2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            f2 = 1.0f;
        }
        return (int) ((f3 / f2) + 0.5f);
    }

    public static int d(Context context, float f2) {
        dq(context);
        float mn2 = mn(context);
        if (mn2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            mn2 = 1.0f;
        }
        return (int) ((f2 / mn2) + 0.5f);
    }

    private static Bitmap d(WebView webView) {
        if (webView == null) {
            return null;
        }
        try {
            webView.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            webView.layout(0, 0, webView.getMeasuredWidth(), webView.getMeasuredHeight());
            webView.setDrawingCacheEnabled(true);
            webView.buildDrawingCache();
            if (webView.getMeasuredWidth() > 0 && webView.getMeasuredHeight() > 0) {
                Bitmap createBitmap = Bitmap.createBitmap(webView.getMeasuredWidth(), webView.getMeasuredHeight(), Bitmap.Config.RGB_565);
                Canvas canvas = new Canvas(createBitmap);
                canvas.drawBitmap(createBitmap, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, createBitmap.getHeight(), new Paint());
                webView.draw(canvas);
                return createBitmap;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static Bitmap d(com.bytedance.sdk.component.mp.dq dqVar) {
        WebView webView = dqVar.getWebView();
        if (webView == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        int layerType = webView.getLayerType();
        webView.setLayerType(1, null);
        Bitmap d2 = d(webView);
        if (d2 == null) {
            d2 = dq(webView);
        }
        webView.setLayerType(layerType, null);
        if (d2 == null) {
            return null;
        }
        return com.bytedance.sdk.component.utils.p.dq(d2, d2.getWidth() / 6, d2.getHeight() / 6);
    }

    private static ArrayList<Integer> d(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        try {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int i = width * height;
            int[] iArr = new int[i];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            ArrayList<Integer> arrayList = new ArrayList<>();
            for (int i2 = 0; i2 < i; i2++) {
                int i3 = iArr[i2];
                arrayList.add(Integer.valueOf(Color.rgb((16711680 & i3) >> 16, (65280 & i3) >> 8, i3 & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)));
            }
            return arrayList;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void d(Activity activity) {
        try {
            activity.getWindow().getDecorView().setSystemUiVisibility(2050);
            activity.getWindow().addFlags(134217728);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void d(View view, final float f2) {
        if (view != null && f2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            view.setOutlineProvider(new ViewOutlineProvider() { // from class: com.bytedance.sdk.openadsdk.core.ir.ce.8
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view2, Outline outline) {
                    if (outline == null) {
                        return;
                    }
                    outline.setRoundRect(0, 0, view2.getWidth(), view2.getHeight(), f2);
                }
            });
            view.setClipToOutline(true);
        }
    }

    public static void d(View view, int i, int i2, int i3, int i4) {
        ViewGroup.LayoutParams layoutParams;
        if (view == null || (layoutParams = view.getLayoutParams()) == null || !(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return;
        }
        dq(view, (ViewGroup.MarginLayoutParams) layoutParams, i, i2, i3, i4);
    }

    public static boolean d() {
        return dq == 1 || dq == -1;
    }

    public static int[] d(Context context) {
        WindowMetrics currentWindowMetrics;
        Rect bounds;
        WindowManager windowManager = null;
        if (context == null) {
            return null;
        }
        try {
            windowManager = (WindowManager) context.getSystemService("window");
        } catch (Exception unused) {
        }
        int[] iArr = new int[2];
        if (windowManager != null) {
            try {
                if (Build.VERSION.SDK_INT >= 30) {
                    currentWindowMetrics = windowManager.getCurrentWindowMetrics();
                    bounds = currentWindowMetrics.getBounds();
                    iArr[0] = bounds.width();
                    iArr[1] = bounds.height();
                } else {
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                    iArr[0] = displayMetrics.widthPixels;
                    iArr[1] = displayMetrics.heightPixels;
                }
            } catch (Throwable unused2) {
            }
        }
        if (iArr[0] <= 0 || iArr[1] <= 0) {
            DisplayMetrics displayMetrics2 = context.getResources().getDisplayMetrics();
            iArr[0] = displayMetrics2.widthPixels;
            iArr[1] = displayMetrics2.heightPixels;
        }
        return iArr;
    }

    public static int[] d(View view) {
        if (view == null) {
            return null;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr;
    }

    public static float dq(Context context, float f2) {
        dq(context);
        return TypedValue.applyDimension(2, f2, context.getResources().getDisplayMetrics());
    }

    public static int dq(float f2, float f3) {
        return (int) ((f3 * f2) + 0.5f);
    }

    public static int dq(Bitmap bitmap) {
        try {
            ArrayList<Integer> d2 = d(bitmap);
            if (d2 == null) {
                return -1;
            }
            HashMap hashMap = new HashMap();
            Iterator<Integer> it = d2.iterator();
            while (it.hasNext()) {
                Integer next = it.next();
                if (hashMap.containsKey(next)) {
                    Integer valueOf = Integer.valueOf(((Integer) hashMap.get(next)).intValue() + 1);
                    hashMap.remove(next);
                    hashMap.put(next, valueOf);
                } else {
                    hashMap.put(next, 1);
                }
            }
            int i = 0;
            int i2 = 0;
            for (Map.Entry entry : hashMap.entrySet()) {
                int intValue = ((Integer) entry.getValue()).intValue();
                if (i2 < intValue) {
                    i = ((Integer) entry.getKey()).intValue();
                    i2 = intValue;
                }
            }
            if (i == 0) {
                return -1;
            }
            return (int) ((i2 / ((bitmap.getWidth() * bitmap.getHeight()) * 1.0f)) * 100.0f);
        } catch (Throwable unused) {
            return -1;
        }
    }

    public static int dq(String str, Activity activity) {
        if (e.jy()) {
            try {
                Class<?> loadClass = activity.getClassLoader().loadClass("android.os.SystemProperties");
                return ((Integer) loadClass.getMethod("getInt", String.class, Integer.TYPE).invoke(loadClass, new String(str), new Integer(0))).intValue();
            } catch (ClassNotFoundException e2) {
                e2.printStackTrace();
            } catch (IllegalAccessException e3) {
                e3.printStackTrace();
            } catch (IllegalArgumentException e4) {
                e4.printStackTrace();
            } catch (NoSuchMethodException e5) {
                e5.printStackTrace();
            } catch (InvocationTargetException e6) {
                e6.printStackTrace();
            }
        }
        return 0;
    }

    private static Bitmap dq(WebView webView) {
        Bitmap bitmap = null;
        try {
            Picture capturePicture = webView.capturePicture();
            if (capturePicture != null && capturePicture.getWidth() > 0 && capturePicture.getHeight() > 0) {
                bitmap = Bitmap.createBitmap(capturePicture.getWidth(), capturePicture.getHeight(), Bitmap.Config.ARGB_8888);
                capturePicture.draw(new Canvas(bitmap));
                return bitmap;
            }
            return null;
        } catch (Throwable unused) {
            return bitmap;
        }
    }

    public static JSONObject dq(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            if (!jSONObject.has("app_scene")) {
                jSONObject.put("app_scene", com.bytedance.sdk.openadsdk.core.no.ia().dq() ? 1 : 0);
            }
            if (!jSONObject.has("lock_scene")) {
                jSONObject.put("lock_scene", !dq() ? 1 : 0);
            }
            if (str != null && !str.isEmpty() && !jSONObject.has("auto_show_check")) {
                jSONObject.put("auto_show_check", str);
            }
            return jSONObject;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ig.d("addShowScene error " + th.toString());
            return jSONObject;
        }
    }

    public static void dq(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            activity.getWindow().getDecorView().setSystemUiVisibility(3846);
            d(activity);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void dq(Context context) {
        Resources resources;
        if (context == null) {
            context = com.bytedance.sdk.openadsdk.core.wp.getContext();
        }
        if (context == null || (resources = context.getResources()) == null) {
            return;
        }
        if (p()) {
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            f3034d = displayMetrics.density;
            ox = displayMetrics.densityDpi;
            p = displayMetrics.scaledDensity;
            s = displayMetrics.widthPixels;
            iw = displayMetrics.heightPixels;
        }
        if (resources.getConfiguration() != null) {
            if (resources.getConfiguration().orientation == 1) {
                if (s > iw) {
                    int i = s;
                    s = iw;
                    iw = i;
                    return;
                }
                return;
            }
            if (s < iw) {
                int i2 = s;
                s = iw;
                iw = i2;
            }
        }
    }

    public static void dq(final Context context, final j jVar, final String str, final String str2, final Bitmap bitmap, final boolean z, final int i) {
        com.bytedance.sdk.component.o.mn.dq(new com.bytedance.sdk.component.o.kk("startCheckPlayableStatusPercentage") { // from class: com.bytedance.sdk.openadsdk.core.ir.ce.5
            @Override // java.lang.Runnable
            public void run() {
                ce.ox(context, jVar, str, str2, bitmap, z, i);
            }
        }, 5);
    }

    public static void dq(Context context, String str, int i) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        Toast toast = new Toast(context);
        LinearLayout linearLayout = new LinearLayout(context);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(Color.parseColor("#CC000000"));
        gradientDrawable.setCornerRadius(com.bytedance.sdk.openadsdk.core.dislike.dq.dq.d().dq(context, 4.0f));
        linearLayout.setBackground(gradientDrawable);
        TextView textView = new TextView(context);
        textView.setClickable(false);
        textView.setFocusable(false);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        int ox2 = ox(context, 20.0f);
        int ox3 = ox(context, 11.0f);
        textView.setPadding(ox2, ox3, ox2, ox3);
        textView.setLayoutParams(layoutParams);
        textView.setTextColor(-1);
        textView.setTextSize(mn);
        textView.setGravity(17);
        textView.setText(str);
        linearLayout.addView(textView);
        toast.setView(linearLayout);
        toast.setGravity(17, 0, 0);
        toast.setDuration(i);
        toast.show();
    }

    public static void dq(View view, float f2) {
        if (view == null) {
            return;
        }
        view.setAlpha(f2);
    }

    public static void dq(View view, int i) {
        if (view == null || view.getVisibility() == i || !dq(i)) {
            return;
        }
        view.setVisibility(i);
    }

    public static void dq(View view, int i, int i2, int i3, int i4) {
        Rect rect = new Rect();
        view.getHitRect(rect);
        rect.top -= i;
        rect.bottom += i2;
        rect.left -= i3;
        rect.right += i4;
        ((View) view.getParent()).setTouchDelegate(new com.bytedance.sdk.component.utils.mn(rect, view));
    }

    public static void dq(View view, View.OnClickListener onClickListener, String str) {
        if (view != null) {
            view.setOnClickListener(onClickListener);
            return;
        }
        com.bytedance.sdk.component.utils.ig.p("OnclickListener ", str + " is null , can not set OnClickListener !!!");
    }

    public static void dq(View view, View.OnTouchListener onTouchListener, String str) {
        if (view != null) {
            view.setOnTouchListener(onTouchListener);
            return;
        }
        com.bytedance.sdk.component.utils.ig.p("OnTouchListener ", str + " is null , can not set OnTouchListener !!!");
    }

    public static void dq(View view, View view2) {
        WindowInsets rootWindowInsets;
        int safeInsetTop;
        if (view == null || view2 == null) {
            return;
        }
        try {
            if (Build.VERSION.SDK_INT >= 28 && ia == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                rootWindowInsets = view.getRootWindowInsets();
                DisplayCutout displayCutout = rootWindowInsets != null ? rootWindowInsets.getDisplayCutout() : null;
                if (displayCutout != null) {
                    safeInsetTop = displayCutout.getSafeInsetTop();
                    ia = safeInsetTop;
                }
            }
            if (ia == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                return;
            }
            float max = Math.max(no(view2.getContext()), ia);
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            if (layoutParams instanceof FrameLayout.LayoutParams) {
                ((FrameLayout.LayoutParams) layoutParams).topMargin = (int) (r1.topMargin + max);
            }
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                ((RelativeLayout.LayoutParams) layoutParams).topMargin = (int) (r1.topMargin + max);
            }
            if (layoutParams instanceof LinearLayout.LayoutParams) {
                ((LinearLayout.LayoutParams) layoutParams).topMargin = (int) (r1.topMargin + max);
            }
            view2.setLayoutParams(layoutParams);
        } catch (Throwable unused) {
        }
    }

    private static void dq(View view, ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2, int i3, int i4) {
        if (view == null || marginLayoutParams == null) {
            return;
        }
        if (marginLayoutParams.leftMargin == i && marginLayoutParams.topMargin == i2 && marginLayoutParams.rightMargin == i3 && marginLayoutParams.bottomMargin == i4) {
            return;
        }
        if (i != -3) {
            marginLayoutParams.leftMargin = i;
        }
        if (i2 != -3) {
            marginLayoutParams.topMargin = i2;
        }
        if (i3 != -3) {
            marginLayoutParams.rightMargin = i3;
        }
        if (i4 != -3) {
            marginLayoutParams.bottomMargin = i4;
        }
        view.setLayoutParams(marginLayoutParams);
    }

    public static void dq(final View view, final dq dqVar) {
        if (view == null) {
            return;
        }
        view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.bytedance.sdk.openadsdk.core.ir.ce.6
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                view.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                dq dqVar2 = dqVar;
                if (dqVar2 != null) {
                    dqVar2.dq(view);
                }
            }
        });
    }

    public static void dq(View view, final j jVar) {
        if (view == null || jVar == null) {
            return;
        }
        view.setClickable(true);
        view.setFocusable(true);
        view.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.ir.ce.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                iw.dq(com.bytedance.sdk.openadsdk.core.wp.getContext(), j.this);
            }
        });
    }

    private static void dq(TextView textView) {
        if (textView == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        layoutParams.width = ox(com.bytedance.sdk.openadsdk.core.wp.getContext(), 32.0f);
        layoutParams.height = ox(com.bytedance.sdk.openadsdk.core.wp.getContext(), 14.0f);
        textView.setLayoutParams(layoutParams);
    }

    private static void dq(TextView textView, int i, int i2) {
        if (i <= 0) {
            i = 32;
        }
        if (i2 <= 0) {
            i2 = 14;
        }
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        layoutParams.width = ox(com.bytedance.sdk.openadsdk.core.wp.getContext(), i);
        layoutParams.height = ox(com.bytedance.sdk.openadsdk.core.wp.getContext(), i2);
        textView.setLayoutParams(layoutParams);
    }

    public static void dq(TextView textView, j jVar) {
        if (textView == null || jVar == null) {
            dq(textView);
            return;
        }
        String rr = jVar.rr();
        if (!TextUtils.isEmpty(rr)) {
            dq(textView, rr, com.bytedance.sdk.openadsdk.core.wp.getContext());
        } else {
            dq(textView);
            dq((View) textView, jVar);
        }
    }

    public static void dq(TextView textView, j jVar, int i, int i2) {
        if (textView == null || jVar == null) {
            dq(textView, i, i2);
            return;
        }
        String rr = jVar.rr();
        if (!TextUtils.isEmpty(rr)) {
            dq(textView, rr, com.bytedance.sdk.openadsdk.core.wp.getContext());
        } else {
            dq(textView, i, i2);
            dq((View) textView, jVar);
        }
    }

    public static void dq(TextView textView, CharSequence charSequence) {
        if (textView == null || TextUtils.isEmpty(charSequence)) {
            return;
        }
        textView.setText(charSequence);
    }

    public static void dq(TextView textView, String str, Context context) {
        if (textView == null || TextUtils.isEmpty(str) || context == null) {
            return;
        }
        textView.setText(str);
        textView.setTextSize(2, 8.0f);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(tn.v("#1F161823", gradientDrawable, context, 3.0f));
        textView.setBackgroundDrawable(gradientDrawable);
        textView.setTextColor(com.bytedance.sdk.component.utils.r.kk(context, "tt_adx_logo_desc"));
        textView.setGravity(17);
        textView.setPadding(ox(context, 2.0f), ox(context, 3.0f), ox(context, 2.0f), ox(context, 3.0f));
    }

    public static void dq(final com.bytedance.sdk.component.mp.dq dqVar) {
        if (dqVar == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ir.ce.1
            @Override // java.lang.Runnable
            public void run() {
                WebSettings settings;
                WebView webView = com.bytedance.sdk.component.mp.dq.this.getWebView();
                if (webView == null || (settings = webView.getSettings()) == null) {
                    return;
                }
                settings.setTextZoom(100);
            }
        });
    }

    public static boolean dq() {
        try {
            return !((KeyguardManager) com.bytedance.sdk.openadsdk.core.wp.getContext().getSystemService("keyguard")).inKeyguardRestrictedInputMode();
        } catch (Throwable unused) {
            return false;
        }
    }

    private static boolean dq(int i) {
        return i == 0 || i == 8 || i == 4;
    }

    public static boolean dq(SSWebView sSWebView) {
        if (sSWebView == null || !sSWebView.p()) {
            return false;
        }
        sSWebView.s();
        return true;
    }

    public static int[] dq(View view) {
        if (view == null || view.getVisibility() != 0) {
            return null;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr;
    }

    public static boolean f(Context context) {
        return Build.MANUFACTURER.equals("samsung");
    }

    public static TextView fw(Context context) {
        if (context == null) {
            return null;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(Color.parseColor("#CC000000"));
        gradientDrawable.setCornerRadius(com.bytedance.sdk.openadsdk.core.dislike.dq.dq.d().dq(context, 4.0f));
        TextView textView = new TextView(context);
        textView.setClickable(false);
        textView.setFocusable(false);
        textView.setBackground(gradientDrawable);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        layoutParams.topMargin = (int) (s(context) * (-0.3d));
        int ox2 = ox(context, 20.0f);
        int ox3 = ox(context, 11.0f);
        textView.setPadding(ox2, ox3, ox2, ox3);
        textView.setLayoutParams(layoutParams);
        textView.setTextColor(-1);
        textView.setTextSize(mn);
        textView.setGravity(17);
        return textView;
    }

    public static int ia(Context context) {
        dq(context);
        return ox;
    }

    public static void ia(View view) {
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view);
            }
        }
    }

    public static boolean ia(Activity activity) {
        return (activity.isFinishing() || activity.isDestroyed()) ? false : true;
    }

    public static boolean ig(Context context) {
        try {
            Class<?> loadClass = context.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            return ((Boolean) loadClass.getMethod("hasNotchInScreen", null).invoke(loadClass, null)).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static float iw(Context context) {
        dq(context);
        return f3034d;
    }

    public static void iw(Activity activity) {
        try {
            o(activity);
        } catch (Throwable unused) {
        }
    }

    public static void iw(View view) {
        if (view == null) {
            return;
        }
        dq(view, 0);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.core.ir.ce.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                onAnimationEnd(animator);
            }
        });
        ofFloat.setDuration(300L);
        ofFloat.start();
    }

    public static boolean jy(Context context) {
        String le = com.bytedance.sdk.openadsdk.core.i.le();
        return le.equals("IN2010") || le.equals("IN2020") || le.equals("KB2000");
    }

    public static int kk(Context context) {
        if (context == null) {
            context = com.bytedance.sdk.openadsdk.core.wp.getContext();
        }
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    private static boolean kk(Activity activity) {
        try {
            if (Build.VERSION.SDK_INT >= 26 && activity.getWindow().getDecorView().getHeight() > 0 && activity.getWindow().getDecorView().getWidth() > 0) {
                if (kk((Context) activity) - activity.getWindow().getDecorView().getHeight() <= 0) {
                    return o((Context) activity) - activity.getWindow().getDecorView().getWidth() > 0;
                }
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static float mn(Context context) {
        dq(context);
        return p;
    }

    public static Bitmap mn(View view) {
        if (view == null) {
            return null;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
        Bitmap createBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        view.draw(canvas);
        canvas.save();
        return createBitmap;
    }

    public static void mn(Activity activity) {
        try {
            Class<?> cls = null;
            for (Class<?> cls2 : Activity.class.getDeclaredClasses()) {
                if (cls2.getSimpleName().contains("TranslucentConversionListener")) {
                    cls = cls2;
                }
            }
            Method declaredMethod = Activity.class.getDeclaredMethod("convertToTranslucent", cls);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(activity, null);
        } catch (Throwable unused) {
        }
    }

    public static boolean mp(Context context) {
        try {
            if ("V1938CT".equals(com.bytedance.sdk.openadsdk.core.i.le())) {
                return false;
            }
            Class<?> loadClass = context.getClassLoader().loadClass("android.util.FtFeature");
            return ((Boolean) loadClass.getMethod("isFeatureSupport", Integer.TYPE).invoke(loadClass, 32)).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static float no(Context context) {
        if (context == null) {
            context = com.bytedance.sdk.openadsdk.core.wp.getContext();
        }
        try {
            return context.getApplicationContext().getResources().getIdentifier("status_bar_height", "dimen", "android") > 0 ? context.getApplicationContext().getResources().getDimensionPixelSize(r1) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ig.d("TTUtils", "Get StatusBarHeight failed:" + th.getMessage());
            return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
    }

    public static int o(Context context) {
        if (context == null) {
            context = com.bytedance.sdk.openadsdk.core.wp.getContext();
        }
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    private static void o(Activity activity) {
        try {
            Method declaredMethod = Activity.class.getDeclaredMethod("getActivityOptions", null);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(activity, null);
            Class<?> cls = null;
            for (Class<?> cls2 : Activity.class.getDeclaredClasses()) {
                if (cls2.getSimpleName().startsWith("TranslucentConversionListener")) {
                    cls = cls2;
                }
            }
            Method declaredMethod2 = Activity.class.getDeclaredMethod("convertToTranslucent", cls, ActivityOptions.class);
            declaredMethod2.setAccessible(true);
            declaredMethod2.invoke(activity, null, invoke);
        } catch (Throwable unused) {
        }
    }

    public static int ox(Context context, float f2) {
        dq(context);
        return (int) ((f2 * cd(context)) + 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ox(Context context, j jVar, String str, String str2, Bitmap bitmap, boolean z, int i) {
        if (bitmap != null) {
            try {
                if (bitmap.getWidth() > 0 && bitmap.getHeight() > 0 && !bitmap.isRecycled()) {
                    int dq2 = dq(bitmap);
                    if (dq2 >= 50 || z) {
                        com.bytedance.sdk.openadsdk.core.ig.ox.dq(jVar, str, str2, dq2, i);
                    }
                }
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.ig.p("UIUtils", "(开发者可忽略此检测异常)checkWebViewIsTransparent->throwable ex>>>" + th.toString());
            }
        }
    }

    public static boolean ox() {
        return dq != -1;
    }

    public static boolean ox(Activity activity) {
        return s(activity) || dq("ro.miui.notch", activity) == 1 || ig(activity) || mp(activity) || jy(activity) || f(activity) || kk(activity) || q(activity);
    }

    public static int[] ox(Context context) {
        dq(context);
        return new int[]{s, iw};
    }

    public static int[] ox(View view) {
        if (view != null) {
            return new int[]{view.getWidth(), view.getHeight()};
        }
        return null;
    }

    public static int p(Context context) {
        dq(context);
        return s;
    }

    public static int p(Context context, float f2) {
        dq(context);
        float cd = cd(context);
        if (cd <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            cd = 1.0f;
        }
        return (int) ((f2 / cd) + 0.5f);
    }

    public static void p(Activity activity) {
        if (ox()) {
            return;
        }
        try {
            final WeakReference weakReference = new WeakReference(activity);
            activity.getWindow().getDecorView().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ir.ce.4
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.h.mn.dq(new com.bytedance.sdk.component.o.kk("check_notch") { // from class: com.bytedance.sdk.openadsdk.core.ir.ce.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                Activity activity2 = (Activity) weakReference.get();
                                if (activity2 != null && !ce.ox()) {
                                    ce.dq = ce.ox(activity2) ? 1 : 0;
                                }
                            } catch (Throwable unused) {
                            }
                        }
                    });
                }
            });
        } catch (Throwable unused) {
        }
    }

    private static boolean p() {
        return f3034d < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || ox < 0 || p < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || s < 0 || iw < 0;
    }

    public static boolean p(View view) {
        return view != null && view.getVisibility() == 0;
    }

    public static boolean q(Context context) {
        String kk = c.kk("com.kllk.feature.screen.heteromorphism");
        if (context == null || context.getPackageManager() == null) {
            return false;
        }
        try {
            return context.getPackageManager().hasSystemFeature(kk);
        } catch (Throwable unused) {
            return true;
        }
    }

    public static int s(Context context) {
        dq(context);
        return iw;
    }

    public static void s(final View view) {
        if (view == null) {
            return;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.core.ir.ce.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                ce.dq(view, 8);
                ObjectAnimator.ofFloat(view, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f).setDuration(0L).start();
            }
        });
        ofFloat.setDuration(800L);
        ofFloat.start();
    }

    public static boolean s(Activity activity) {
        WindowInsets rootWindowInsets;
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                rootWindowInsets = activity.getWindow().getDecorView().getRootWindowInsets();
                if ((rootWindowInsets != null ? rootWindowInsets.getDisplayCutout() : null) != null) {
                    return true;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return false;
    }
}
