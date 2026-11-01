package g;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.player.C;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class fis extends chy {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f16855a;

    /* renamed from: b, reason: collision with root package name */
    public String f16856b;
    public final ArrayList o;
    public final LinearLayout.LayoutParams p;
    public final LinearLayout q;

    /* JADX WARN: Removed duplicated region for block: B:20:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public fis(fts ftsVar, cbc cbcVar, Context context) {
        super(ftsVar, cbcVar);
        List list;
        String str;
        int i;
        this.p = new LinearLayout.LayoutParams(-2, -2);
        this.o = new ArrayList();
        this.f16855a = new ArrayList();
        hcl hclVar = this.f12908f;
        if (hclVar == null || (list = hclVar.k) == null || list.size() <= 0) {
            return;
        }
        LinearLayout linearLayout = new LinearLayout(context);
        this.q = linearLayout;
        linearLayout.setOrientation(0);
        String str2 = ((fhe) list.get(0)).f16789g;
        if (TextUtils.isEmpty(str2)) {
            linearLayout.setGravity(17);
        } else {
            str2.getClass();
            if (str2.equals("left")) {
                linearLayout.setGravity(3);
            } else if (str2.equals("right")) {
                linearLayout.setGravity(5);
            } else {
                linearLayout.setGravity(17);
            }
        }
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(80);
        linearLayout.addView(linearLayout2);
        List s = s();
        for (int i2 = 0; i2 < list.size(); i2++) {
            fhe fheVar = (fhe) list.get(i2);
            TextView textView = new TextView(context);
            if (s != null) {
                ArrayList arrayList = (ArrayList) s;
                if (i2 < arrayList.size()) {
                    str = (String) arrayList.get(i2);
                    r(textView, fheVar, str);
                    i = fheVar.f16786d;
                    if (i == 0) {
                        this.p.bottomMargin = (int) (ebx.h() * i);
                        linearLayout2.addView(textView, this.p);
                    } else {
                        linearLayout2.addView(textView);
                    }
                }
            }
            str = "";
            r(textView, fheVar, str);
            i = fheVar.f16786d;
            if (i == 0) {
            }
        }
        float h = ebx.h();
        LinearLayout linearLayout3 = this.q;
        hcl hclVar2 = this.f12908f;
        int i3 = (int) (hclVar2.f19224e * h);
        int i4 = (int) (hclVar2.h * h);
        linearLayout3.layout(0, 0, i3, i4);
        linearLayout3.measure(View.MeasureSpec.makeMeasureSpec(i3, C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(i4, C.ENCODING_PCM_32BIT));
        linearLayout3.layout(0, 0, linearLayout3.getMeasuredWidth(), linearLayout3.getMeasuredHeight());
    }

    public static void r(TextView textView, fhe fheVar, String str) {
        if (TextUtils.isEmpty(str)) {
            textView.setText("");
        } else {
            textView.setText(str);
        }
        if (!TextUtils.isEmpty(fheVar.f16788f)) {
            textView.setTextColor(Color.parseColor(fheVar.f16788f));
        }
        if (!TextUtils.isEmpty(fheVar.f16783a)) {
            textView.setBackgroundColor(Color.parseColor(fheVar.f16783a));
        }
        textView.setGravity(17);
        textView.setTextSize(fheVar.f16784b);
    }

    @Override // g.chy, g.grq
    public final void d(Canvas canvas, Matrix matrix, int i) {
        List list;
        String str;
        LinearLayout linearLayout = this.q;
        if (linearLayout == null) {
            super.d(canvas, matrix, i);
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        bj(i);
        float f2 = this.ao;
        hcl hclVar = this.f12908f;
        if (hclVar != null && (list = hclVar.k) != null && list.size() > 0) {
            linearLayout.setOrientation(0);
            linearLayout.setGravity(17);
            if (linearLayout.getChildCount() > 0) {
                LinearLayout linearLayout2 = (LinearLayout) linearLayout.getChildAt(0);
                linearLayout2.setOrientation(0);
                linearLayout2.setGravity(80);
                linearLayout.removeAllViews();
                if (linearLayout2.getChildCount() == list.size()) {
                    List s = s();
                    ArrayList arrayList = this.f16855a;
                    arrayList.clear();
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        fhe fheVar = (fhe) list.get(i2);
                        TextView textView = (TextView) linearLayout2.getChildAt(i2);
                        arrayList.add(textView);
                        if (s != null) {
                            ArrayList arrayList2 = (ArrayList) s;
                            if (i2 < arrayList2.size()) {
                                str = (String) arrayList2.get(i2);
                                r(textView, fheVar, str);
                            }
                        }
                        str = "";
                        r(textView, fheVar, str);
                    }
                    linearLayout2.removeAllViews();
                    for (int i3 = 0; i3 < list.size(); i3++) {
                        fhe fheVar2 = (fhe) list.get(i3);
                        TextView textView2 = (TextView) arrayList.get(i3);
                        textView2.setAlpha(f2);
                        linearLayout2.setAlpha(f2);
                        int i4 = fheVar2.f16786d;
                        if (i4 != 0) {
                            int h = (int) (ebx.h() * i4);
                            LinearLayout.LayoutParams layoutParams = this.p;
                            layoutParams.bottomMargin = h;
                            linearLayout2.addView(textView2, layoutParams);
                        } else {
                            linearLayout2.addView(textView2);
                        }
                    }
                    linearLayout.setAlpha(f2);
                    linearLayout.addView(linearLayout2);
                    float h2 = ebx.h();
                    int i5 = (int) (hclVar.f19224e * h2);
                    int i6 = (int) (hclVar.h * h2);
                    linearLayout.layout(0, 0, i5, i6);
                    linearLayout.measure(View.MeasureSpec.makeMeasureSpec(i5, C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(i6, C.ENCODING_PCM_32BIT));
                    linearLayout.layout(0, 0, linearLayout.getMeasuredWidth(), linearLayout.getMeasuredHeight());
                }
            }
        }
        linearLayout.draw(canvas);
        canvas.restore();
    }

    public final List s() {
        fts ftsVar;
        dpc dpcVar;
        List list;
        hcl hclVar = this.f12908f;
        if (hclVar == null || (ftsVar = this.af) == null || (dpcVar = ftsVar.h) == null) {
            return null;
        }
        String str = hclVar.f19225f;
        if ((TextUtils.isEmpty(str) && TextUtils.isEmpty(this.f16856b)) || (list = hclVar.k) == null) {
            return null;
        }
        String str2 = this.f16856b;
        if (TextUtils.isEmpty(str2)) {
            str2 = dpcVar.b(str);
        }
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        int length = str2.length();
        ArrayList arrayList = this.o;
        arrayList.clear();
        for (int i = 0; i < list.size(); i++) {
            fhe fheVar = (fhe) list.get(i);
            int i2 = fheVar.f16785c;
            int i3 = fheVar.f16787e;
            if (i2 < 0) {
                i2 = Math.max(i2 + length, 0);
            }
            if (i3 < 0) {
                i3 = Math.max(i3 + length, 0);
            }
            if (i2 + i3 > length) {
                arrayList.add("");
            } else {
                if (list.size() == 1 && i2 == 0 && i3 == 0) {
                    i3 = length;
                }
                arrayList.add(str2.substring(i2, i3 + i2));
            }
        }
        return arrayList;
    }
}
