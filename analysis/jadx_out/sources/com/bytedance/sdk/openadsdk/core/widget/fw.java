package com.bytedance.sdk.openadsdk.core.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class fw extends AlertDialog {

    /* renamed from: d, reason: collision with root package name */
    private String f3696d;
    private Context dq;
    private boolean ox;
    private dq p;

    public interface dq {
        void d(String str);

        void dq(String str);
    }

    public fw(Context context, String str) {
        super(context, r.mn(context, "tt_dialog_full"));
        this.dq = context;
        this.f3696d = str;
        this.ox = TextUtils.isEmpty(str);
    }

    private View d() {
        LinearLayout linearLayout = new LinearLayout(this.dq);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(-16777216);
        linearLayout.setGravity(17);
        TextView textView = new TextView(this.dq);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        textView.setLayoutParams(layoutParams2);
        textView.setText("您要访问的网站存在风险");
        textView.setTextColor(-1);
        textView.setTextSize(20.0f);
        linearLayout.addView(textView);
        int ox = ce.ox(this.dq, 10.0f) * 2;
        TextView textView2 = new TextView(this.dq);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.topMargin = ox;
        layoutParams3.gravity = 17;
        textView2.setLayoutParams(layoutParams3);
        textView2.setText("继续访问可能导致个人隐私泄漏、账号被盗用等危害");
        textView2.setTextColor(-1);
        textView2.setTextSize(15.0f);
        linearLayout.addView(textView2);
        int ox2 = ce.ox(this.dq, 25.0f);
        int ox3 = ce.ox(this.dq, 8.0f);
        if (!this.ox) {
            Button button = new Button(this.dq);
            button.setBackgroundColor(-7829368);
            button.setText("继续访问");
            button.setTextColor(-1);
            button.setPadding(ox2, ox3, ox2, ox3);
            LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(ce.ox(this.dq, 230.0f), -2);
            layoutParams4.topMargin = ox;
            layoutParams4.gravity = 17;
            button.setLayoutParams(layoutParams4);
            button.setTextSize(25.0f);
            button.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.fw.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    fw.this.dismiss();
                    if (fw.this.p == null) {
                        return;
                    }
                    fw.this.p.dq(fw.this.f3696d);
                }
            });
            linearLayout.addView(button);
        }
        Button button2 = new Button(this.dq);
        button2.setBackgroundColor(-65536);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(ce.ox(this.dq, 230.0f), -2);
        layoutParams5.topMargin = ox;
        layoutParams5.gravity = 17;
        button2.setLayoutParams(layoutParams5);
        button2.setText("返回安全链接");
        button2.setTextColor(-1);
        button2.setTextSize(25.0f);
        button2.setTypeface(null, 1);
        button2.setPadding(ox2, ox3, ox2, ox3);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.fw.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                fw.this.dismiss();
                if (fw.this.p == null) {
                    return;
                }
                fw.this.p.d(fw.this.f3696d);
            }
        });
        linearLayout.addView(button2);
        linearLayout.setLayoutParams(layoutParams);
        return linearLayout;
    }

    private void dq() {
        setContentView(d());
    }

    public void dq(dq dqVar) {
        this.p = dqVar;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        dq dqVar = this.p;
        if (dqVar == null) {
            return;
        }
        dqVar.d(this.f3696d);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCanceledOnTouchOutside(false);
        if (this.dq == null) {
            this.dq = wp.getContext();
        }
        dq();
    }
}
