package com.bytedance.sdk.openadsdk.core.dislike.ui;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.core.dislike.ui.p;
import com.bytedance.sdk.openadsdk.f.d.d.iw;
import com.bytedance.sdk.openadsdk.widget.TTDislikeLayout;
import com.bytedance.sdk.openadsdk.widget.TTDislikeScrollListView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class ox extends Dialog {

    /* renamed from: d, reason: collision with root package name */
    private TTDislikeLayout f2815d;
    private com.bytedance.sdk.openadsdk.core.dislike.d.ox dq;
    private final com.bytedance.sdk.openadsdk.core.dislike.ox.d ox;
    private boolean p;
    private TextView s;

    public ox(Context context, com.bytedance.sdk.openadsdk.core.dislike.ox.d dVar) {
        super(context);
        this.p = false;
        getWindow().addFlags(1024);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        this.ox = dVar;
    }

    private void d() {
        Window window = getWindow();
        if (window != null) {
            window.setGravity(17);
            window.setDimAmount(0.34f);
        }
    }

    private void dq(View view) {
        if (view == null) {
            return;
        }
        TextView textView = (TextView) view.findViewById(2047279095);
        this.s = textView;
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.dislike.ui.ox.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (ox.this.dq != null) {
                    ox.this.dq.dq();
                }
                ox.this.dismiss();
            }
        });
        TTDislikeScrollListView tTDislikeScrollListView = (TTDislikeScrollListView) view.findViewById(2047279097);
        tTDislikeScrollListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.bytedance.sdk.openadsdk.core.dislike.ui.ox.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view2, int i, long j) {
                try {
                    if (ox.this.dq != null) {
                        ox.this.dq.dq(i, ox.this.ox.dq().get(i));
                        ox.this.p = true;
                    }
                    ox.this.dismiss();
                } catch (Throwable unused) {
                }
            }
        });
        com.bytedance.sdk.openadsdk.core.dislike.ox.d dVar = this.ox;
        p pVar = new p(getContext(), dVar == null ? new ArrayList<>(0) : dVar.dq());
        pVar.dq(new p.dq() { // from class: com.bytedance.sdk.openadsdk.core.dislike.ui.ox.3
            @Override // com.bytedance.sdk.openadsdk.core.dislike.ui.p.dq
            public void dq(int i, iw iwVar) {
                if (ox.this.dq != null) {
                    ox.this.dq.dq(i, iwVar);
                    ox.this.p = true;
                }
                ox.this.dismiss();
                com.bytedance.sdk.openadsdk.core.dislike.dq.dq.dq().dq(ox.this.ox, iwVar);
            }
        });
        tTDislikeScrollListView.setAdapter((ListAdapter) pVar);
        com.bytedance.sdk.openadsdk.core.dislike.ox.d dVar2 = this.ox;
        if (dVar2 != null) {
            tTDislikeScrollListView.setDislikeController(new com.bytedance.sdk.openadsdk.core.dislike.dq.d(dVar2));
        }
    }

    private void ox() {
        TTDislikeLayout tTDislikeLayout = (TTDislikeLayout) findViewById(2047279103);
        this.f2815d = tTDislikeLayout;
        dq(tTDislikeLayout);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        com.bytedance.sdk.openadsdk.core.dislike.d.ox oxVar = this.dq;
        if (oxVar == null || this.p) {
            return;
        }
        oxVar.ox();
    }

    public ViewGroup.LayoutParams dq() {
        return new ViewGroup.LayoutParams(com.bytedance.sdk.openadsdk.core.dislike.dq.dq.d().dq(getContext(), 345.0f), -2);
    }

    public void dq(com.bytedance.sdk.openadsdk.core.dislike.d.ox oxVar) {
        this.dq = oxVar;
    }

    public void dq(com.bytedance.sdk.openadsdk.core.dislike.ox.d dVar) {
        TTDislikeLayout tTDislikeLayout;
        if (dVar == null || (tTDislikeLayout = this.f2815d) == null) {
            return;
        }
        TTDislikeScrollListView tTDislikeScrollListView = (TTDislikeScrollListView) tTDislikeLayout.findViewById(2047279097);
        p pVar = (p) tTDislikeScrollListView.getAdapter();
        if (pVar != null) {
            tTDislikeScrollListView.setDislikeController(new com.bytedance.sdk.openadsdk.core.dislike.dq.d(dVar));
            pVar.dq(dVar.dq());
        }
    }

    public void dq(String str) {
        TextView textView = this.s;
        if (textView != null) {
            textView.setText(str);
        }
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        setContentView(com.bytedance.sdk.openadsdk.res.p.dq(getContext()), dq());
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        d();
        ox();
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            super.show();
            this.p = false;
            com.bytedance.sdk.openadsdk.core.dislike.d.ox oxVar = this.dq;
            if (oxVar != null) {
                oxVar.d();
            }
        } catch (Exception unused) {
        }
    }
}
