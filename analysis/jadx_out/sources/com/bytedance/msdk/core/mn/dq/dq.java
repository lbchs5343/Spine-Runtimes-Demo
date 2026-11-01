package com.bytedance.msdk.core.mn.dq;

import android.content.Context;
import android.os.Handler;
import com.bytedance.msdk.core.mn.ox;
import com.bytedance.msdk.core.no.d;
import com.bytedance.msdk.dq.s.s;
import g.tn;

/* loaded from: classes.dex */
public abstract class dq extends com.bytedance.msdk.core.mn.d.dq {

    /* renamed from: d, reason: collision with root package name */
    private boolean f958d;
    private RunnableC0059dq dq;

    /* renamed from: com.bytedance.msdk.core.mn.dq.dq$dq, reason: collision with other inner class name */
    public class RunnableC0059dq implements Runnable {

        /* renamed from: d, reason: collision with root package name */
        private int f959d;
        private boolean ox;

        public RunnableC0059dq(int i, boolean z) {
            this.f959d = i;
            this.ox = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((ox) dq.this).mn != null) {
                ((ox) dq.this).mn.s().put("serverBidding_timeout", Boolean.TRUE);
            }
            dq.this.f958d = true;
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", s.dq(((ox) dq.this).kk) + "wfRequestAfExchange with LabelValueAuto !!!");
            dq.super.d(this.f959d, this.ox);
        }
    }

    public dq(Context context, String str, int i) {
        super(context, str, i);
        this.f958d = false;
    }

    @Override // com.bytedance.msdk.core.mn.iw, com.bytedance.msdk.core.mn.s
    public void d(int i, boolean z) {
        d dVar;
        if (this.o == null || (dVar = this.mn) == null || dVar.iw() != 4) {
            super.d(i, z);
            return;
        }
        d dVar2 = this.mn;
        if (dVar2 != null) {
            dVar2.s().put("serverBidding_timeout", Boolean.FALSE);
        }
        this.f958d = false;
        StringBuilder sb = new StringBuilder();
        tn.h(sb, this.kk, "wfRequestAfExchange with LabelValueAuto timeout:");
        sb.append(this.mn.mn());
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", sb.toString());
        RunnableC0059dq runnableC0059dq = new RunnableC0059dq(i, z);
        this.dq = runnableC0059dq;
        this.o.postDelayed(runnableC0059dq, this.mn.mn());
    }

    @Override // com.bytedance.msdk.core.mn.ox
    public void e() {
        d dVar;
        if (this.o == null || this.dq == null || (dVar = this.mn) == null || dVar.iw() != 4 || this.f958d) {
            return;
        }
        this.o.removeCallbacks(this.dq);
        this.o.post(this.dq);
    }

    @Override // com.bytedance.msdk.core.mn.ox
    public void wp() {
        RunnableC0059dq runnableC0059dq;
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", s.dq(this.kk) + "cancel wfRequestAfExchange with LabelValueAuto !!!");
        Handler handler = this.o;
        if (handler == null || (runnableC0059dq = this.dq) == null) {
            return;
        }
        handler.removeCallbacks(runnableC0059dq);
    }
}
