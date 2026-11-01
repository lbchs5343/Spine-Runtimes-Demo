package com.bytedance.sdk.openadsdk.core.o.ox;

import android.content.Context;
import android.graphics.Color;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.le;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.l;
import com.bytedance.sdk.openadsdk.core.wp;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Stack;

/* loaded from: classes3.dex */
public class jy {
    private static ImageView d(Context context) {
        ImageView imageView = new ImageView(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(ce.ox(context, 1.0f), ce.ox(context, 8.0f));
        int ox = ce.ox(context, 6.0f);
        layoutParams.leftMargin = ox;
        layoutParams.rightMargin = ox;
        imageView.setLayoutParams(layoutParams);
        imageView.setBackgroundColor(Color.parseColor("#80FFFFFF"));
        return imageView;
    }

    public static String d(j jVar) {
        if (jVar == null) {
            return "";
        }
        com.bytedance.sdk.openadsdk.core.r.p gm = jVar.gm();
        return (gm == null || TextUtils.isEmpty(gm.ox())) ? !TextUtils.isEmpty(jVar.w()) ? jVar.w() : !TextUtils.isEmpty(jVar.gl()) ? jVar.gl() : !TextUtils.isEmpty(jVar.fg()) ? jVar.fg() : "" : gm.ox();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(j jVar, String str, int i) {
        HashMap hashMap = new HashMap();
        hashMap.put("is_pl_pre_5element", Boolean.valueOf(l.wp(jVar)));
        hashMap.put("pl_pre_5element_version", Integer.valueOf(i));
        hashMap.put("event", "csj_sdk_compilance_show");
        com.bytedance.sdk.openadsdk.core.ig.ox.kk(jVar, str, "playable_track", hashMap);
    }

    public static int dq(j jVar) {
        if (jVar == null || jVar.xx() != 1) {
            return 0;
        }
        if (jVar.ah() == 0) {
            return 1;
        }
        return jVar.ah() == 1 ? ox(jVar) ? 0 : 1 : jVar.ah() == 2 ? 2 : 1;
    }

    private static LinearLayout dq(ViewGroup viewGroup, Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        viewGroup.addView(linearLayout);
        linearLayout.setGravity(16);
        linearLayout.setOrientation(0);
        ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -2;
        return linearLayout;
    }

    private static TextView dq(Context context, String str, boolean z) {
        TextView textView = new TextView(context);
        textView.setText(str);
        if (z) {
            textView.setTextSize(1, 10.0f);
        } else {
            textView.setTextSize(1, 8.0f);
        }
        textView.setTextColor(Color.parseColor("#80FFFFFF"));
        return textView;
    }

    public static void dq(final Context context) {
        if (context == null) {
            context = wp.getContext();
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            le.iw().post(new com.bytedance.sdk.component.o.kk("tt_download_toast") { // from class: com.bytedance.sdk.openadsdk.core.o.ox.jy.1
                @Override // java.lang.Runnable
                public void run() {
                    Toast makeText = Toast.makeText(context, "", 1);
                    makeText.setText("应用信息缺失，暂无法响应下载");
                    makeText.show();
                }
            });
            return;
        }
        Toast makeText = Toast.makeText(context, "", 1);
        makeText.setText("应用信息缺失，暂无法响应下载");
        makeText.show();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r0v23, types: [android.view.ViewGroup] */
    public static void dq(final j jVar, final ViewGroup viewGroup, Context context, final String str, boolean z, com.bytedance.sdk.openadsdk.core.d.iw iwVar, final boolean z2) {
        int i;
        boolean z3 = z;
        if (jVar == null || viewGroup == null) {
            return;
        }
        if (!l.wp(jVar)) {
            d(jVar, str, 0);
            return;
        }
        if (l.e(jVar)) {
            if (!p(jVar)) {
                d(jVar, str, -1);
                return;
            }
            viewGroup.setOnClickListener(null);
            viewGroup.setOnTouchListener(null);
            Context context2 = (Context) new WeakReference(context).get();
            Context context3 = wp.getContext();
            if (context2 == null) {
                context2 = context3;
            }
            WeakReference weakReference = new WeakReference(iwVar);
            int o = ce.o(context3) - ce.ox(context3, 32.0f);
            final int dq = l.dq(context3, jVar, z2);
            viewGroup.setVisibility(4);
            com.bytedance.sdk.openadsdk.core.r.s hy = jVar.hy();
            Stack stack = new Stack();
            stack.push("隐私");
            stack.push("权限");
            stack.push("功能");
            String o2 = hy.o();
            if (!TextUtils.isEmpty(o2)) {
                stack.push("备案号：" + o2);
            }
            stack.push("版本号：" + hy.s());
            stack.push("开发者：" + hy.mn());
            stack.push("应用名称：" + hy.mp());
            LinearLayout dq2 = dq(viewGroup, context2);
            int i2 = o;
            while (true) {
                if (!stack.isEmpty()) {
                    String str2 = (String) stack.pop();
                    TextView dq3 = dq(context2, str2, z3);
                    float measureText = dq3.getPaint().measureText("隐");
                    boolean z4 = dq2.getChildCount() > 0;
                    int ox = ce.ox(context3, 21.0f);
                    boolean z5 = z4;
                    float f2 = ox;
                    boolean z6 = f2 + measureText < ((float) i2);
                    int length = ((int) (str2.length() * measureText)) + 1;
                    if ("权限".equals(str2)) {
                        length = ((int) ((8.0f * measureText) + f2)) + 1;
                        z6 = length < i2;
                    }
                    int i3 = length;
                    boolean z7 = z6;
                    if (z5 && z7) {
                        i2 -= ox;
                        dq2.addView(d(context2));
                    }
                    if (z7) {
                        i = i2;
                    } else {
                        dq2 = dq(viewGroup, context2);
                        i = o;
                    }
                    if (i3 >= i) {
                        int i4 = i;
                        ?? r0 = dq2;
                        dq2 = dq(viewGroup, context2);
                        z3 = z;
                        Context context4 = context3;
                        if (dq(jVar, context2, str, (Stack<String>) stack, dq2, str2, z3)) {
                            break;
                        }
                        int i5 = (int) (i4 / measureText);
                        Stack stack2 = stack;
                        dq3.setText(str2.substring(0, i5));
                        r0.addView(dq3);
                        String substring = str2.substring(i5);
                        float f3 = o;
                        int i6 = (int) (f3 / measureText);
                        while (substring.length() > i6) {
                            String substring2 = substring.substring(0, i6);
                            substring = substring.substring(i6);
                            dq2.addView(dq(context2, substring2, z3));
                            dq2 = dq(viewGroup, context2);
                            i4 = o;
                        }
                        if (TextUtils.isEmpty(substring)) {
                            stack = stack2;
                            i2 = i4;
                            dq2 = r0;
                            context3 = context4;
                        } else {
                            dq2.addView(dq(context2, substring, z3));
                            i2 = (int) (f3 - (substring.length() * measureText));
                            context3 = context4;
                            stack = stack2;
                        }
                    } else {
                        int i7 = i;
                        ?? r02 = dq2;
                        if (dq(jVar, context2, str, (Stack<String>) stack, dq2, str2, z3)) {
                            z3 = z;
                            break;
                        }
                        r02.addView(dq3);
                        i2 = i7 - i3;
                        z3 = z;
                        dq2 = r02;
                    }
                } else {
                    break;
                }
            }
            final com.bytedance.sdk.openadsdk.core.d.iw iwVar2 = (com.bytedance.sdk.openadsdk.core.d.iw) weakReference.get();
            final Context context5 = context2;
            final boolean z8 = z3;
            viewGroup.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.jy.2
                @Override // java.lang.Runnable
                public void run() {
                    if (viewGroup.getHeight() <= dq) {
                        viewGroup.setVisibility(0);
                        com.bytedance.sdk.openadsdk.core.d.iw iwVar3 = iwVar2;
                        if (iwVar3 != null) {
                            iwVar3.d();
                        }
                        jy.d(jVar, str, 2);
                        return;
                    }
                    viewGroup.setVisibility(8);
                    viewGroup.removeAllViews();
                    if (z8) {
                        jy.dq(jVar, viewGroup, context5, str, false, iwVar2, z2);
                        return;
                    }
                    com.bytedance.sdk.openadsdk.core.d.iw iwVar4 = iwVar2;
                    if (iwVar4 != null) {
                        iwVar4.dq();
                    }
                    jy.d(jVar, str, 0);
                }
            });
        }
    }

    private static boolean dq(final j jVar, final Context context, final String str, Stack<String> stack, LinearLayout linearLayout, String str2, boolean z) {
        if (!"功能".equals(str2)) {
            return false;
        }
        TextView dq = dq(context, str2, z);
        dq.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.jy.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                j jVar2 = j.this;
                if (jVar2 == null) {
                    return;
                }
                com.bytedance.sdk.openadsdk.core.ir.iw.dq(context, jVar2, str);
            }
        });
        linearLayout.addView(dq);
        linearLayout.addView(d(context));
        TextView dq2 = dq(context, stack.pop(), z);
        dq2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.jy.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                j jVar2 = j.this;
                if (jVar2 == null) {
                    return;
                }
                com.bytedance.sdk.openadsdk.core.ir.iw.d(jVar2, context, str);
            }
        });
        linearLayout.addView(dq2);
        linearLayout.addView(d(context));
        TextView dq3 = dq(context, stack.pop(), z);
        dq3.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.jy.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                j jVar2 = j.this;
                if (jVar2 == null) {
                    return;
                }
                com.bytedance.sdk.openadsdk.core.ir.iw.dq(jVar2, context, str);
            }
        });
        linearLayout.addView(dq3);
        return true;
    }

    public static boolean ox(j jVar) {
        if (jVar == null) {
            return false;
        }
        return p(jVar);
    }

    public static boolean p(j jVar) {
        com.bytedance.sdk.openadsdk.core.r.s hy = jVar.hy();
        return (hy == null || TextUtils.isEmpty(hy.mp()) || TextUtils.isEmpty(hy.s()) || TextUtils.isEmpty(hy.mn()) || hy.dq() == null || hy.dq().size() <= 0 || TextUtils.isEmpty(hy.ia()) || TextUtils.isEmpty(hy.kk())) ? false : true;
    }
}
