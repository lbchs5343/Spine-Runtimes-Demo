package com.bytedance.sdk.component.iw.ox;

import android.content.Context;
import com.bytedance.sdk.component.iw.cd;
import com.bytedance.sdk.component.iw.fw;
import com.bytedance.sdk.component.iw.gh;
import com.bytedance.sdk.component.iw.i;
import com.bytedance.sdk.component.iw.ig;
import com.bytedance.sdk.component.iw.mp;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public class s implements mp {

    /* renamed from: d, reason: collision with root package name */
    private ExecutorService f1974d;
    private ig dq;
    private com.bytedance.sdk.component.iw.d ia;
    private com.bytedance.sdk.component.iw.ox iw;
    private i kk;
    private fw mn;
    private com.bytedance.sdk.component.iw.p ox;
    private cd p;
    private gh s;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private ExecutorService f1975d;
        private ig dq;
        private com.bytedance.sdk.component.iw.d ia;
        private com.bytedance.sdk.component.iw.ox iw;
        private i kk;
        private fw mn;
        private com.bytedance.sdk.component.iw.p ox;
        private cd p;
        private gh s;

        public dq dq(com.bytedance.sdk.component.iw.d dVar) {
            this.ia = dVar;
            return this;
        }

        public dq dq(com.bytedance.sdk.component.iw.p pVar) {
            this.ox = pVar;
            return this;
        }

        public dq dq(ExecutorService executorService) {
            this.f1975d = executorService;
            return this;
        }

        public s dq() {
            return new s(this);
        }
    }

    private s(dq dqVar) {
        this.dq = dqVar.dq;
        this.f1974d = dqVar.f1975d;
        this.ox = dqVar.ox;
        this.p = dqVar.p;
        this.s = dqVar.s;
        this.iw = dqVar.iw;
        this.ia = dqVar.ia;
        this.mn = dqVar.mn;
        this.kk = dqVar.kk;
    }

    public static s dq(Context context) {
        return new dq().dq();
    }

    @Override // com.bytedance.sdk.component.iw.mp
    public ExecutorService d() {
        return this.f1974d;
    }

    @Override // com.bytedance.sdk.component.iw.mp
    public ig dq() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.component.iw.mp
    public fw ia() {
        return this.mn;
    }

    @Override // com.bytedance.sdk.component.iw.mp
    public gh iw() {
        return this.s;
    }

    @Override // com.bytedance.sdk.component.iw.mp
    public com.bytedance.sdk.component.iw.d kk() {
        return this.ia;
    }

    @Override // com.bytedance.sdk.component.iw.mp
    public com.bytedance.sdk.component.iw.ox mn() {
        return this.iw;
    }

    @Override // com.bytedance.sdk.component.iw.mp
    public i ox() {
        return this.kk;
    }

    @Override // com.bytedance.sdk.component.iw.mp
    public com.bytedance.sdk.component.iw.p p() {
        return this.ox;
    }

    @Override // com.bytedance.sdk.component.iw.mp
    public cd s() {
        return this.p;
    }
}
