package com.ss.android.downloadlib.addownload;

import android.os.SystemClock;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import g.tn;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ig {
    private static final String dq = "ig";

    public static class d {
        private static ig dq = new ig();
    }

    public class dq implements Runnable {

        /* renamed from: d, reason: collision with root package name */
        private final com.ss.android.downloadad.api.dq.d f9161d;

        public dq(com.ss.android.downloadad.api.dq.d dVar) {
            this.f9161d = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    this.f9161d.o(true);
                    ig.this.d(this.f9161d);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } finally {
                this.f9161d.o(false);
            }
        }
    }

    private ig() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(com.ss.android.downloadad.api.dq.d dVar) {
        JSONObject jSONObject = new JSONObject();
        int dq2 = com.ss.android.downloadlib.mn.s.dq(dVar);
        int d2 = com.ss.android.downloadlib.mn.s.d(dVar);
        if (com.ss.android.downloadlib.mn.s.s(dVar) && com.ss.android.downloadlib.mn.s.p(dVar)) {
            com.ss.android.downloadlib.mn.ig.dq().dq(dq, "tryListenInstallFinishEvent", "上层库开启二级线程轮询检测策略");
            dq(dVar, dq2, d2, jSONObject);
        } else {
            com.ss.android.downloadlib.mn.ig.dq().dq(dq, "tryListenInstallFinishEvent", "采用原有默认轮询策略");
            d(dVar, 15, AdBaseConstants.DEFAULT_INSTALL_FINISH_TRY_INTERVAL_MS, jSONObject);
        }
    }

    private boolean d(com.ss.android.downloadad.api.dq.d dVar, int i, int i2, JSONObject jSONObject) {
        com.ss.android.downloadlib.mn.ig.dq().dq(dq, "realListenInstallFinishEvent", tn.t(i2, i, "开始轮询检测,轮询时间间隔为", ",轮询次数为"));
        long j = i2;
        SystemClock.sleep(j);
        while (i > 0) {
            if (com.ss.android.downloadlib.mn.mp.d(dVar)) {
                com.ss.android.downloadlib.dq.dq().dq(dVar.s());
                com.ss.android.downloadlib.mn.ig.dq().dq(dq, "realListenInstallFinishEvent", "检测到安装成功，当前剩余的轮询次数为".concat(String.valueOf(i)));
                return true;
            }
            i--;
            if (i == 0) {
                return false;
            }
            SystemClock.sleep(j);
        }
        return false;
    }

    public static ig dq() {
        return d.dq;
    }

    private void dq(com.ss.android.downloadad.api.dq.d dVar, int i, int i2, JSONObject jSONObject) {
        int optInt = dVar.wn() == 4 ? no.kk().optInt("market_install_finish_check_time", 600) : com.ss.android.downloadlib.mn.s.iw(dVar);
        int i3 = ((optInt * 1000) / AdBaseConstants.DEFAULT_INSTALL_FINISH_TRY_INTERVAL_MS) + 1;
        com.ss.android.downloadlib.mn.ig dq2 = com.ss.android.downloadlib.mn.ig.dq();
        String str = dq;
        dq2.dq(str, "realListenInstallFinishEventOpt", "一级轮询次数，即广播生效期内的轮询次数为:".concat(String.valueOf(i3)));
        if (d(dVar, i3, AdBaseConstants.DEFAULT_INSTALL_FINISH_TRY_INTERVAL_MS, jSONObject)) {
            return;
        }
        if (optInt * 1000 >= com.ss.android.downloadlib.mn.s.mn(dVar)) {
            com.ss.android.downloadlib.mn.ig.dq().dq(str, "tryListenInstallFinishEventOpt", "一级轮询时间小于广播监听时间,且未监听到安装完成事件");
            return;
        }
        com.ss.android.downloadlib.mn.ig.dq().dq(str, "tryListenInstallFinishEventOpt", "广播生效时间外，一级轮询完成且没有检测到安装完成事件，开始二级检测");
        if (d(dVar, i, i2, jSONObject)) {
            return;
        }
        com.ss.android.downloadlib.mn.ig.dq().dq(str, "tryListenInstallFinishEventOpt", "监听时间结束,依然没有监听到安装完成事件");
    }

    public void dq(com.ss.android.downloadad.api.dq.d dVar) {
        com.ss.android.downloadlib.mn.ig.dq().dq(dq, "tryListenInstallFinish", "开始通过轮询线程监听安装完成事件");
        com.ss.android.downloadlib.s.dq().ox(new dq(dVar));
    }
}
