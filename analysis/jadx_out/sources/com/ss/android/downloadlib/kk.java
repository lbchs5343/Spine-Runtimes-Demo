package com.ss.android.downloadlib;

import com.ss.android.downloadlib.addownload.no;
import com.ss.android.downloadlib.mn.ig;
import com.ss.android.downloadlib.mn.mp;
import com.ss.android.socialbase.appdownloader.ox.jy;

/* loaded from: classes.dex */
public class kk {

    /* renamed from: d, reason: collision with root package name */
    private static boolean f9231d = false;
    private static final String dq = "kk";

    public static class dq {
        private static kk dq = new kk();
    }

    private kk() {
    }

    public static kk dq() {
        return dq.dq;
    }

    public void dq(int i, jy jyVar) {
        ig.dq().dq(dq, "registerMarketInstallFinishBroadcast", "动态广播监听的持续时间为:".concat(String.valueOf(i)));
        if (!f9231d) {
            com.ss.android.socialbase.appdownloader.p.o().dq(jyVar);
            f9231d = true;
        }
        com.ss.android.socialbase.appdownloader.p.o().dq(i);
    }

    public void dq(final com.ss.android.downloadad.api.dq.d dVar) {
        if (!com.ss.android.downloadlib.mn.s.ox(dVar)) {
            ig.dq().dq(dq, "checkMarketInstallFinishEventForReboot", "线程轮询总开关未开启,因此不执行兜底逻辑");
            return;
        }
        if (dVar == null) {
            ig.dq().d(dq, "checkMarketInstallFinishEventForReboot", "nativeDownloadModel为空,不符合预期");
            return;
        }
        if (dVar.s.get() && System.currentTimeMillis() - dVar.ij() > 30000) {
            ig.dq().dq(dq, "checkMarketInstallFinishEventForReboot", "兜底过一次了,不进行重复兜底");
            return;
        }
        if (com.ss.android.downloadlib.mn.s.p(dVar)) {
            long optInt = no.kk().optInt("market_install_finish_check_time", 600) * 1000;
            if (System.currentTimeMillis() - dVar.ij() >= optInt) {
                ig.dq().dq(dq, "checkMarketInstallFinishEventForReboot", "当前时间距离首次检测时间超出了广播生效期,不再执行兜底策略");
            } else {
                dq((int) (((dVar.ij() + optInt) - System.currentTimeMillis()) / 1000), new jy() { // from class: com.ss.android.downloadlib.kk.2
                    @Override // com.ss.android.socialbase.appdownloader.ox.jy
                    public void d() {
                        ig.dq().dq(kk.dq, "checkMarketInstallFinishEventForReboot", "兜底监听执行完毕,解除广播监听");
                        if (!mp.d(dVar)) {
                            ig.dq().dq(kk.dq, "checkMarketInstallFinishEventForReboot", "监听结束依然没有完成安装");
                        }
                        dVar.s.compareAndSet(true, false);
                        dVar.o(false);
                        com.ss.android.downloadlib.addownload.d.kk.dq().dq(dVar);
                    }

                    @Override // com.ss.android.socialbase.appdownloader.ox.jy
                    public void dq() {
                        ig.dq().dq(kk.dq, "checkMarketInstallFinishEventForReboot", "进程被杀,重新注册广播监听成功,正式执行冷启兜底逻辑");
                        dVar.s.compareAndSet(false, true);
                        com.ss.android.downloadlib.addownload.d.kk.dq().dq(dVar);
                    }
                });
            }
        }
    }

    public void dq(com.ss.android.downloadlib.addownload.d.s sVar, final com.ss.android.downloadad.api.dq.d dVar) {
        if (!com.ss.android.downloadlib.mn.s.ox(dVar)) {
            ig.dq().dq(dq, "checkMarketInstallFinishEvent", "开关未开启, 不使用动态广播监听能力");
            return;
        }
        if (dVar == null) {
            ig.dq().d(dq, "checkMarketInstallFinishEvent", "nativeDownloadModel为空,不符合预期");
            return;
        }
        if (dVar.vw()) {
            ig.dq().d(dq, "checkMarketInstallFinishEvent", "正在监听中,不重复监听");
            return;
        }
        try {
            ig dq2 = ig.dq();
            String str = dq;
            dq2.dq(str, "checkMarketInstallFinishEvent", "针对商店直投广告,开始检测安装完成事件");
            if (com.ss.android.downloadlib.mn.s.p(dVar)) {
                ig.dq().dq(str, "checkMarketInstallFinishEvent", "开始进行动态广播监听");
                int optInt = no.kk().optInt("market_install_finish_check_time", 600);
                if (dVar.ij() != 0 && System.currentTimeMillis() - dVar.ij() <= optInt * 1000) {
                    ig.dq().dq(str, "checkMarketInstallFinishEvent", "目前仍在广播监听的生效期内,不进行重复注册");
                }
                dVar.o(System.currentTimeMillis());
                dq(optInt, new jy() { // from class: com.ss.android.downloadlib.kk.1
                    @Override // com.ss.android.socialbase.appdownloader.ox.jy
                    public void d() {
                        ig.dq().dq(kk.dq, "checkMarketInstallFinishEvent", "广播监听时间结束,主动解除了广播监听");
                        if (!mp.d(dVar)) {
                            ig.dq().dq(kk.dq, "checkMarketInstallFinishEvent", "监听结束依然没有完成安装");
                        }
                        dVar.o(false);
                        com.ss.android.downloadlib.addownload.d.iw.dq().dq(dVar);
                    }

                    @Override // com.ss.android.socialbase.appdownloader.ox.jy
                    public void dq() {
                        ig.dq().dq(kk.dq, "checkMarketInstallFinishEvent", "注册广播监听成功,注册耗时" + (System.currentTimeMillis() - dVar.ij()));
                        dVar.o(true);
                        com.ss.android.downloadlib.addownload.d.iw.dq().dq(dVar);
                    }
                });
            }
            if (com.ss.android.downloadlib.mn.s.s(dVar)) {
                ig.dq().dq(str, "checkMarketInstallFinishEvent", "开启轮询线程能力,作为容灾手段");
                com.ss.android.downloadlib.addownload.ig.dq().dq(dVar);
            }
            com.ss.android.downloadlib.addownload.d.kk.dq().dq(dVar);
        } catch (Exception unused) {
            com.ss.android.downloadlib.s.ox.dq().dq(false, "监听商店场景安装完成事件发生异常");
        }
    }
}
