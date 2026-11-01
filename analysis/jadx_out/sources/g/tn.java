package g;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract /* synthetic */ class tn {
    public static void a(com.bytedance.msdk.d.s sVar, StringBuilder sb, String str) {
        sb.append(sVar.b());
        sb.append(str);
    }

    public static ImageView aa(Context context, int i) {
        ImageView imageView = new ImageView(context);
        imageView.setId(i);
        return imageView;
    }

    public static ert ab(byz byzVar, ert ertVar, String str, int i, int i2) {
        byzVar.e(ertVar);
        return new ert(str, i, i2);
    }

    public static RelativeLayout.LayoutParams ac(int i, int i2, int i3, int i4) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i2);
        layoutParams.addRule(i3, i4);
        return layoutParams;
    }

    public static String ad(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static RelativeLayout b(Context context, int i) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setId(i);
        return relativeLayout;
    }

    public static ClassCastException c(Iterator it) {
        it.next().getClass();
        return new ClassCastException();
    }

    public static String d(RecyclerView recyclerView, StringBuilder sb) {
        sb.append(recyclerView.dq());
        return sb.toString();
    }

    public static void e(int i, HashMap hashMap, String str, int i2, String str2) {
        hashMap.put(str, Integer.valueOf(i));
        hashMap.put(str2, Integer.valueOf(i2));
    }

    public static String f(long j, String str, StringBuilder sb) {
        sb.append(j);
        sb.append(str);
        return sb.toString();
    }

    public static LinearLayout.LayoutParams g(TextView textView, int i, int i2, int i3) {
        textView.setId(i);
        return new LinearLayout.LayoutParams(i2, i3);
    }

    public static void h(StringBuilder sb, String str, String str2) {
        sb.append(com.bytedance.msdk.dq.s.s.dq(str));
        sb.append(str2);
    }

    public static String i() {
        return com.bytedance.msdk.ia.r.d(Thread.currentThread().getStackTrace());
    }

    public static LinearLayout j(Context context, int i) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setId(i);
        return linearLayout;
    }

    public static int k(int i, int i2, String str) {
        return (str.hashCode() + i) * i2;
    }

    public static StringBuilder l(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return sb;
    }

    public static String m() {
        return com.bytedance.msdk.ia.r.dq(Thread.currentThread().getStackTrace());
    }

    public static boolean n() {
        return com.bytedance.msdk.ia.fw.d(Thread.currentThread().getStackTrace());
    }

    public static StringBuilder o(String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        sb.append(str5);
        return sb;
    }

    public static HashMap p(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put(str, str2);
        return hashMap;
    }

    public static RelativeLayout.LayoutParams q(int i, int i2, int i3) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i2);
        layoutParams.addRule(i3);
        return layoutParams;
    }

    public static String r(String str, String str2, String str3, String str4, String str5) {
        return str + str2 + str3 + str4 + str5;
    }

    public static String s(Number number, String str) {
        return number.getClass().getName().concat(str);
    }

    public static String t(int i, int i2, String str, String str2) {
        return str + i + str2 + i2;
    }

    public static TextView u(Context context, int i) {
        TextView textView = new TextView(context);
        textView.setId(i);
        return textView;
    }

    public static int v(String str, GradientDrawable gradientDrawable, Context context, float f2) {
        gradientDrawable.setColor(Color.parseColor(str));
        return com.bytedance.sdk.openadsdk.core.ir.ce.ox(context, f2);
    }

    public static ClassCastException w(int i, ArrayList arrayList) {
        arrayList.get(i).getClass();
        return new ClassCastException();
    }

    public static String x(String str, String str2) {
        return str + str2;
    }

    public static void y(String str, String str2, String str3, StringBuilder sb) {
        sb.append(com.bytedance.msdk.dq.s.s.dq(str));
        sb.append(str2);
        com.bytedance.msdk.dq.s.ox.p(str3, sb.toString());
    }

    public static StringBuilder z(int i, String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i);
        sb.append(str2);
        return sb;
    }
}
