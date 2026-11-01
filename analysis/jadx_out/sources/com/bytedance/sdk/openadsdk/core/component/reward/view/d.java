package com.bytedance.sdk.openadsdk.core.component.reward.view;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.gx;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.res.s;

/* loaded from: classes3.dex */
public class d extends AlertDialog implements e.dq {

    /* renamed from: d, reason: collision with root package name */
    protected final e f2667d;
    public com.bytedance.sdk.openadsdk.core.d.d dq;
    private final dq ia;
    private TextView iw;
    private long kk;
    private final String mn;
    private boolean o;
    private Context ox;
    private TextView p;
    private TextView s;

    public interface dq {
        void d(Dialog dialog);

        void dq(Dialog dialog);
    }

    public d(Context context, j jVar, dq dqVar) {
        super(context);
        this.f2667d = new e(Looper.getMainLooper(), this);
        this.o = false;
        this.ox = context;
        if (context == null) {
            this.ox = wp.getContext();
        }
        this.mn = gx.iw(jVar);
        this.ia = dqVar;
        if (gx.s(jVar) != 3) {
            this.kk = gx.ia(jVar);
        } else {
            this.o = true;
            this.kk = 5L;
        }
    }

    private void dq() {
        this.p = (TextView) findViewById(2114387831);
        this.s = (TextView) findViewById(2114387641);
        this.iw = (TextView) findViewById(2114387838);
        if (this.ia == null) {
            return;
        }
        ce.dq((View) this.s, (View.OnClickListener) this.dq, "goLiveListener");
        ce.dq(this.iw, new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.view.d.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d.this.ia.dq(d.this);
            }
        }, "cancelTv");
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        dq dqVar;
        if (message.what == 101) {
            long j = this.kk - 1;
            this.kk = j;
            if (j > 0) {
                if (this.o) {
                    ce.dq(this.iw, r.dq(this.ox, "tt_reward_live_dialog_cancel_text"));
                } else {
                    ce.dq(this.iw, String.format(r.dq(this.ox, "tt_reward_live_dialog_cancel_count_down_text"), String.valueOf(j)));
                }
                this.f2667d.sendEmptyMessageDelayed(101, 1000L);
                return;
            }
            if (this.o && (dqVar = this.ia) != null) {
                dqVar.d(this);
            }
            dq dqVar2 = this.ia;
            if (dqVar2 != null) {
                dqVar2.dq(this);
            }
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.core.d.d dVar) {
        this.dq = dVar;
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(s.ce(this.ox));
        setCanceledOnTouchOutside(false);
        dq();
        this.f2667d.sendEmptyMessageDelayed(101, 1000L);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (!z) {
            this.f2667d.removeMessages(101);
        } else {
            this.f2667d.removeMessages(101);
            this.f2667d.sendEmptyMessageDelayed(101, 1000L);
        }
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        ce.dq(this.p, this.mn);
    }
}
