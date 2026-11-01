package com.bytedance.sdk.component.ia.dq;

import android.content.Context;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class dq implements s {

    /* renamed from: d, reason: collision with root package name */
    private no f1927d;
    private iw dq;
    private com.bytedance.sdk.component.ia.d.p.d.dq ia;
    private AtomicBoolean ig;
    private com.bytedance.sdk.component.ia.d.p.d.dq iw;
    private com.bytedance.sdk.component.ia.d.p.d.dq kk;
    private com.bytedance.sdk.component.ia.d.p.d.dq mn;
    private int mp;
    private p no;
    private boolean o;
    private String ox;
    private Context p;
    private int q;
    private com.bytedance.sdk.component.ia.d.p.d.dq s;

    /* renamed from: com.bytedance.sdk.component.ia.dq.dq$dq, reason: collision with other inner class name */
    public static class C0117dq {

        /* renamed from: d, reason: collision with root package name */
        private com.bytedance.sdk.component.ia.d.p.d.dq f1928d;
        private no dq;
        private iw ia;
        private String ig;
        private boolean iw;
        private p mn;
        private Context mp;
        private com.bytedance.sdk.component.ia.d.p.d.dq ox;
        private com.bytedance.sdk.component.ia.d.p.d.dq p;
        private com.bytedance.sdk.component.ia.d.p.d.dq s;
        private final AtomicBoolean kk = new AtomicBoolean(false);
        private int o = MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE;
        private int no = 10;

        public C0117dq d(com.bytedance.sdk.component.ia.d.p.d.dq dqVar) {
            this.ox = dqVar;
            return this;
        }

        public C0117dq d(boolean z) {
            this.iw = z;
            return this;
        }

        public C0117dq dq(Context context) {
            this.mp = context;
            return this;
        }

        public C0117dq dq(com.bytedance.sdk.component.ia.d.p.d.dq dqVar) {
            this.f1928d = dqVar;
            return this;
        }

        public C0117dq dq(iw iwVar) {
            this.ia = iwVar;
            return this;
        }

        public C0117dq dq(no noVar) {
            this.dq = noVar;
            return this;
        }

        public C0117dq dq(p pVar) {
            this.mn = pVar;
            return this;
        }

        public C0117dq dq(String str) {
            this.ig = str;
            return this;
        }

        public C0117dq dq(boolean z) {
            this.kk.set(z);
            return this;
        }

        public dq dq() {
            dq dqVar = new dq();
            dqVar.f1927d = this.dq;
            dqVar.s = this.f1928d;
            dqVar.iw = this.ox;
            dqVar.mn = this.p;
            dqVar.ia = this.s;
            dqVar.o = this.iw;
            dqVar.no = this.mn;
            dqVar.dq = this.ia;
            dqVar.ig = this.kk;
            dqVar.ox = this.ig;
            dqVar.p = this.mp;
            dqVar.q = this.no;
            dqVar.mp = this.o;
            return dqVar;
        }

        public C0117dq ox(com.bytedance.sdk.component.ia.d.p.d.dq dqVar) {
            this.p = dqVar;
            return this;
        }
    }

    private dq() {
        this.ig = new AtomicBoolean(false);
        this.mp = 200;
        this.q = 10;
    }

    @Override // com.bytedance.sdk.component.ia.dq.s
    public iw d() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.component.ia.dq.s
    public com.bytedance.sdk.component.ia.d.p.d.dq dq() {
        return this.ia;
    }

    @Override // com.bytedance.sdk.component.ia.dq.s
    public void dq(iw iwVar) {
        this.dq = iwVar;
    }

    @Override // com.bytedance.sdk.component.ia.dq.s
    public void dq(boolean z) {
        this.ig.set(z);
    }

    @Override // com.bytedance.sdk.component.ia.dq.s
    public Context getContext() {
        return this.p;
    }

    @Override // com.bytedance.sdk.component.ia.dq.s
    public com.bytedance.sdk.component.ia.d.p.d.dq ia() {
        return this.iw;
    }

    @Override // com.bytedance.sdk.component.ia.dq.s
    public com.bytedance.sdk.component.ia.d.p.d.dq iw() {
        return this.kk;
    }

    @Override // com.bytedance.sdk.component.ia.dq.s
    public com.bytedance.sdk.component.ia.d.p.d.dq kk() {
        return this.mn;
    }

    @Override // com.bytedance.sdk.component.ia.dq.s
    public com.bytedance.sdk.component.ia.d.p.d.dq mn() {
        return this.s;
    }

    @Override // com.bytedance.sdk.component.ia.dq.s
    public boolean no() {
        return this.o;
    }

    @Override // com.bytedance.sdk.component.ia.dq.s
    public no o() {
        return this.f1927d;
    }

    @Override // com.bytedance.sdk.component.ia.dq.s
    public boolean ox() {
        return this.ig.get();
    }

    @Override // com.bytedance.sdk.component.ia.dq.s
    public p p() {
        return this.no;
    }

    @Override // com.bytedance.sdk.component.ia.dq.s
    public String s() {
        return this.ox;
    }
}
