package com.bytedance.sdk.openadsdk.core.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class dq extends AlertDialog {

    /* renamed from: d, reason: collision with root package name */
    private String f3688d;
    private Context dq;

    public dq(Context context, String str) {
        super(context, r.mn(context, "tt_custom_dialog"));
        this.dq = context == null ? wp.getContext() : context;
        this.f3688d = str;
    }

    private void dq() {
        ((TextView) findViewById(2114387702)).setText(this.f3688d);
        findViewById(2114387760).setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.dq.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dq.this.dismiss();
            }
        });
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.bytedance.sdk.openadsdk.res.s.nh(getContext()));
        dq();
    }
}
