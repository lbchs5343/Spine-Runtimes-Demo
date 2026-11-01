package com.bytedance.sdk.component.ox.d.dq.ox;

import com.bytedance.android.live.base.api.push.ILivePush;
import com.bytedance.sdk.component.ox.d.bl;
import com.bytedance.sdk.component.ox.d.ji;
import com.bytedance.sdk.component.ox.d.kx;
import com.bytedance.sdk.component.ox.d.r;
import com.bytedance.sdk.component.ox.dq.cd;
import g.tn;
import java.io.IOException;
import java.net.ProtocolException;

/* loaded from: classes.dex */
public final class d implements r {
    private final boolean dq;

    public static final class dq extends com.bytedance.sdk.component.ox.dq.mn {
        long dq;

        public dq(cd cdVar) {
            super(cdVar);
        }

        @Override // com.bytedance.sdk.component.ox.dq.mn, com.bytedance.sdk.component.ox.dq.cd
        public void a_(com.bytedance.sdk.component.ox.dq.ox oxVar, long j) throws IOException {
            super.a_(oxVar, j);
            this.dq += j;
        }
    }

    public d(boolean z) {
        this.dq = z;
    }

    @Override // com.bytedance.sdk.component.ox.d.r
    public bl dq(r.dq dqVar) throws IOException {
        ji jiVar;
        mn mnVar = (mn) dqVar;
        ox mn = mnVar.mn();
        com.bytedance.sdk.component.ox.d.dq.d.mn iw = mnVar.iw();
        com.bytedance.sdk.component.ox.d.dq.d.ox oxVar = (com.bytedance.sdk.component.ox.d.dq.d.ox) mnVar.s();
        kx dq2 = mnVar.dq();
        long currentTimeMillis = System.currentTimeMillis();
        if (dq2 != null && (jiVar = dq2.iw) != null) {
            jiVar.dq(currentTimeMillis);
        }
        mnVar.call();
        mn.dq(dq2);
        mnVar.call();
        bl.dq dqVar2 = null;
        if (iw.ox(dq2.d()) && dq2.p() != null) {
            if ("100-continue".equalsIgnoreCase(dq2.dq("Expect"))) {
                mn.dq();
                mnVar.call();
                dqVar2 = mn.dq(true);
            }
            if (dqVar2 == null) {
                mnVar.call();
                com.bytedance.sdk.component.ox.dq.p dq3 = com.bytedance.sdk.component.ox.dq.ig.dq(new dq(mn.dq(dq2, dq2.p().d())));
                dq2.p().dq(dq3);
                dq3.close();
                mnVar.call();
            } else if (!oxVar.s()) {
                iw.p();
            }
        }
        mn.d();
        if (dqVar2 == null) {
            mnVar.call();
            dqVar2 = mn.dq(false);
        }
        long currentTimeMillis2 = System.currentTimeMillis();
        ji jiVar2 = dq2.iw;
        if (jiVar2 != null) {
            jiVar2.d(currentTimeMillis2);
        }
        bl dq4 = dqVar2.dq(dq2).dq(iw.d().p()).dq(currentTimeMillis).d(currentTimeMillis2).dq();
        mnVar.call();
        int ox = dq4.ox();
        bl dq5 = (this.dq && ox == 101) ? dq4.kk().dq(com.bytedance.sdk.component.ox.d.dq.ox.ox).dq() : dq4.kk().dq(mn.dq(dq4)).dq();
        if (ILivePush.ClickType.CLOSE.equalsIgnoreCase(dq5.dq().dq("Connection")) || ILivePush.ClickType.CLOSE.equalsIgnoreCase(dq5.dq("Connection"))) {
            iw.p();
        }
        if ((ox != 204 && ox != 205) || dq5.ia().d() <= 0) {
            return dq5;
        }
        StringBuilder z = tn.z(ox, "HTTP ", " had non-zero Content-Length: ");
        z.append(dq5.ia().d());
        throw new ProtocolException(z.toString());
    }
}
