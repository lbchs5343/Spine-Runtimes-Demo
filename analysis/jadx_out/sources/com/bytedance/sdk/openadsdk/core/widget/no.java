package com.bytedance.sdk.openadsdk.core.widget;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.ir.ce;

/* loaded from: classes3.dex */
public class no extends AlertDialog {

    /* renamed from: d, reason: collision with root package name */
    private TextView f3706d;
    private TextView dq;
    private String ia;
    private String iw;
    private String kk;
    private String mn;
    private dq no;
    private Drawable o;
    private Button ox;
    private Button p;
    private Context s;

    public interface dq {
        void d(Dialog dialog);

        void dq(Dialog dialog);
    }

    public no(Context context) {
        super(context, r.mn(context, "tt_custom_dialog"));
        this.s = context;
    }

    private void d() {
        TextView textView = this.dq;
        if (textView != null) {
            textView.setText(this.iw);
            Drawable drawable = this.o;
            if (drawable != null) {
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = this.o.getIntrinsicHeight();
                int ox = ce.ox(this.s, 45.0f);
                if (intrinsicWidth > ox || intrinsicWidth < ox) {
                    intrinsicWidth = ox;
                }
                if (intrinsicHeight > ox || intrinsicHeight < ox) {
                    intrinsicHeight = ox;
                }
                this.o.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
                this.dq.setCompoundDrawables(this.o, null, null, null);
                this.dq.setCompoundDrawablePadding(ce.ox(this.s, 10.0f));
            }
        }
        TextView textView2 = this.f3706d;
        if (textView2 != null) {
            textView2.setText(this.mn);
        }
        Button button = this.ox;
        if (button != null) {
            button.setText(this.ia);
        }
        Button button2 = this.p;
        if (button2 != null) {
            button2.setText(this.kk);
        }
    }

    private void dq() {
        this.dq = (TextView) findViewById(2114387857);
        this.f3706d = (TextView) findViewById(2114387657);
        this.ox = (Button) findViewById(2114387756);
        this.p = (Button) findViewById(2114387894);
        this.ox.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.no.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                no.this.dismiss();
                if (no.this.no != null) {
                    no.this.no.dq(no.this);
                }
            }
        });
        this.p.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.no.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                no.this.dismiss();
                if (no.this.no != null) {
                    no.this.no.d(no.this);
                }
            }
        });
    }

    public no d(String str) {
        this.mn = str;
        return this;
    }

    public no dq(DialogInterface.OnCancelListener onCancelListener) {
        setOnCancelListener(onCancelListener);
        return this;
    }

    public no dq(Drawable drawable) {
        this.o = drawable;
        return this;
    }

    public no dq(dq dqVar) {
        this.no = dqVar;
        return this;
    }

    public no dq(String str) {
        this.iw = str;
        return this;
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.bytedance.sdk.openadsdk.res.s.cv(this.s));
        setCanceledOnTouchOutside(true);
        dq();
    }

    public no ox(String str) {
        this.ia = str;
        return this;
    }

    public no p(String str) {
        this.kk = str;
        return this;
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        d();
    }
}
