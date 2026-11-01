package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Loader;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.r.nh;
import g.cpo;
import g.hat;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class u implements Loader {

    /* renamed from: d, reason: collision with root package name */
    private volatile Context f3531d;
    private final h dq = wp.dq();

    public u(Context context) {
        this.f3531d = context == null ? wp.getContext() : context;
    }

    private void dq(com.bytedance.sdk.component.o.kk kkVar, int i) {
        if (dq()) {
            com.bytedance.sdk.component.o.mn.s(kkVar);
        } else {
            com.bytedance.sdk.component.o.no.f2029d.no().execute(kkVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        com.bytedance.sdk.component.utils.f.dq(dVar.kk() > 0, "必须设置图片素材尺寸");
        com.bytedance.sdk.component.utils.f.dq(dVar.o() > 0, "必须设置图片素材尺寸");
    }

    private boolean dq() {
        return AdSdkInitializerHolder.isSdkInitSuccess();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, boolean z) {
        if (dVar == null) {
            return false;
        }
        return (z && !wp.d().no(dVar.mn())) || dVar.no() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context getContext() {
        if (this.f3531d == null) {
            this.f3531d = wp.getContext();
        }
        return this.f3531d;
    }

    private void ia(ValueSet valueSet, Bridge bridge) {
        dq(com.bytedance.sdk.openadsdk.core.ir.h.dq(5, valueSet), new com.bytedance.sdk.openadsdk.core.dq.s(bridge));
    }

    private void kk(ValueSet valueSet, Bridge bridge) {
        dq(com.bytedance.sdk.openadsdk.core.ir.h.dq(7, valueSet), new com.bytedance.sdk.openadsdk.core.dq.kk(bridge));
    }

    public void d(ValueSet valueSet, Bridge bridge) {
        dq(com.bytedance.sdk.openadsdk.core.ir.h.dq(9, valueSet), new com.bytedance.sdk.openadsdk.core.dq.p(bridge));
    }

    public void d(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final com.bytedance.sdk.openadsdk.r.dq.d.dq.iw iwVar) {
        com.bytedance.sdk.component.o.kk kkVar = new com.bytedance.sdk.component.o.kk("loadExpressDrawFeedAd") { // from class: com.bytedance.sdk.openadsdk.core.u.10
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (!com.bytedance.sdk.openadsdk.core.bl.iw.dq()) {
                        iwVar.dq(1000, "广告请求开关已关闭,请联系穿山甲管理员");
                    } else if (u.this.dq(dVar, false)) {
                        com.bytedance.sdk.openadsdk.core.nativeexpress.p.dq(u.this.getContext()).dq(dVar, 9, iwVar, MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE);
                    } else {
                        iwVar.dq(110, o.dq(110));
                    }
                } catch (Throwable th) {
                    iwVar.dq(TTAdConstant.INIT_LOCAL_FAIL_CODE, " msg = " + th.getMessage());
                    com.bytedance.sdk.component.utils.ig.d("TTAdNativeImpl", "Error msg =", th);
                }
            }
        };
        if (le.dq) {
            dq(kkVar, 9);
            com.bytedance.sdk.openadsdk.core.s.dq.ox().dq(9, dVar);
        } else {
            com.bytedance.sdk.component.utils.ig.p("TTAdNativeImpl", "please exec TTAdSdk.init and TTAdSdk.start before load ad");
            iwVar.dq(10000, "please exec TTAdSdk.init and TTAdSdk.start before load ad");
        }
    }

    public void d(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final com.bytedance.sdk.openadsdk.r.dq.d.dq.ox oxVar) {
        com.bytedance.sdk.component.o.kk kkVar = new com.bytedance.sdk.component.o.kk("loadStream") { // from class: com.bytedance.sdk.openadsdk.core.u.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (com.bytedance.sdk.openadsdk.core.bl.iw.dq()) {
                        com.bytedance.sdk.openadsdk.core.component.dq.dq.dq().d(u.this.getContext(), dVar, oxVar);
                    } else {
                        oxVar.dq(1000, "广告请求开关已关闭,请联系穿山甲管理员");
                    }
                } catch (Throwable th) {
                    oxVar.dq(TTAdConstant.INIT_LOCAL_FAIL_CODE, "feed component maybe not exist, pls check1, msg = " + th.getMessage());
                    com.bytedance.sdk.component.utils.ig.d("TTAdNativeImpl", "feed component maybe not exist, pls check1", th);
                }
            }
        };
        if (le.dq) {
            dq(kkVar, 6);
            com.bytedance.sdk.openadsdk.core.s.dq.ox().dq(6, dVar);
        } else {
            com.bytedance.sdk.component.utils.ig.p("TTAdNativeImpl", "please exec TTAdSdk.init and TTAdSdk.start before load ad");
            oxVar.dq(10000, "please exec TTAdSdk.init and TTAdSdk.start before load ad");
        }
    }

    public void dq(final int i, final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final com.bytedance.sdk.openadsdk.r.dq.d.dq.s sVar) {
        final long currentTimeMillis = System.currentTimeMillis();
        com.bytedance.sdk.component.o.kk kkVar = new com.bytedance.sdk.component.o.kk("loadNativeAd") { // from class: com.bytedance.sdk.openadsdk.core.u.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (!com.bytedance.sdk.openadsdk.core.bl.iw.dq()) {
                        sVar.dq(1000, "广告请求开关已关闭,请联系穿山甲管理员");
                        return;
                    }
                    nh nhVar = new nh();
                    nhVar.kk = currentTimeMillis;
                    u.this.dq.dq(dVar, nhVar, i, new h.d() { // from class: com.bytedance.sdk.openadsdk.core.u.5.1
                        @Override // com.bytedance.sdk.openadsdk.core.h.d
                        public void dq(int i2, String str, com.bytedance.sdk.openadsdk.core.r.d dVar2) {
                            sVar.dq(i2, str);
                            dVar2.dq(i2);
                            com.bytedance.sdk.openadsdk.core.r.d.dq(dVar2);
                        }

                        @Override // com.bytedance.sdk.openadsdk.core.h.d
                        public void dq(com.bytedance.sdk.openadsdk.core.r.dq dqVar, com.bytedance.sdk.openadsdk.core.r.d dVar2) {
                            if (dqVar.d() == null || dqVar.d().isEmpty()) {
                                sVar.dq(-3, o.dq(-3));
                                dVar2.dq(-3);
                                com.bytedance.sdk.openadsdk.core.r.d.dq(dVar2);
                                return;
                            }
                            List<com.bytedance.sdk.openadsdk.core.r.j> d2 = dqVar.d();
                            ArrayList arrayList = new ArrayList(d2.size());
                            for (com.bytedance.sdk.openadsdk.core.r.j jVar : d2) {
                                if (jVar.xo()) {
                                    Context context = u.this.getContext();
                                    AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                    arrayList.add(new com.bytedance.sdk.openadsdk.core.i.ox(context, jVar, i, dVar, false));
                                }
                            }
                            if (!arrayList.isEmpty()) {
                                com.bytedance.sdk.openadsdk.core.ig.ox.d(d2.get(0), com.bytedance.sdk.openadsdk.core.ir.c.d(dVar.k()), currentTimeMillis);
                                sVar.dq(arrayList);
                            } else {
                                sVar.dq(-4, o.dq(-4));
                                dVar2.dq(-4);
                                com.bytedance.sdk.openadsdk.core.r.d.dq(dVar2);
                            }
                        }
                    });
                } catch (Throwable th) {
                    sVar.dq(TTAdConstant.INIT_LOCAL_FAIL_CODE, " msg = " + th.getMessage());
                    com.bytedance.sdk.component.utils.ig.ox("TTAdNativeImpl", "Error msg = ", th.getMessage());
                }
            }
        };
        if (le.dq) {
            dq(kkVar, i);
            com.bytedance.sdk.openadsdk.core.s.dq.ox().dq(i, dVar.mn());
        } else {
            com.bytedance.sdk.component.utils.ig.p("TTAdNativeImpl", "please exec TTAdSdk.init and TTAdSdk.start before load ad");
            sVar.dq(10000, "please exec TTAdSdk.init and TTAdSdk.start before load ad");
        }
    }

    public void dq(ValueSet valueSet, Bridge bridge) {
        d(com.bytedance.sdk.openadsdk.core.ir.h.dq(6, valueSet), new com.bytedance.sdk.openadsdk.core.dq.s(bridge));
    }

    public void dq(ValueSet valueSet, Bridge bridge, int i) {
        dq(com.bytedance.sdk.openadsdk.core.ir.h.dq(3, valueSet), new com.bytedance.sdk.openadsdk.core.dq.ox(bridge), i);
    }

    public void dq(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final com.bytedance.sdk.openadsdk.r.dq.d.dq.d dVar2) {
        com.bytedance.sdk.component.o.kk kkVar = new com.bytedance.sdk.component.o.kk("loadDrawFeedAd") { // from class: com.bytedance.sdk.openadsdk.core.u.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (!com.bytedance.sdk.openadsdk.core.bl.iw.dq()) {
                        dVar2.dq(1000, "广告请求开关已关闭,请联系穿山甲管理员");
                    } else {
                        u.this.dq(dVar);
                        com.bytedance.sdk.openadsdk.core.component.dq.dq.dq().dq(u.this.getContext(), dVar, dVar2);
                    }
                } catch (Throwable th) {
                    dVar2.dq(TTAdConstant.INIT_LOCAL_FAIL_CODE, "feed component maybe not exist, pls check2, msg = " + th.getMessage());
                    com.bytedance.sdk.component.utils.ig.d("TTAdNativeImpl", "feed component maybe not exist, pls check2", th);
                }
            }
        };
        if (le.dq) {
            dq(kkVar, 9);
            com.bytedance.sdk.openadsdk.core.s.dq.ox().dq(9, dVar);
        } else {
            com.bytedance.sdk.component.utils.ig.p("TTAdNativeImpl", "please exec TTAdSdk.init and TTAdSdk.start before load ad");
            dVar2.dq(10000, "please exec TTAdSdk.init and TTAdSdk.start before load ad");
        }
    }

    public void dq(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final com.bytedance.sdk.openadsdk.r.dq.d.dq.dq dqVar, final int i) {
        int kk = wp.d().kk(com.bytedance.sdk.openadsdk.core.ir.c.dq(dVar));
        com.bytedance.sdk.component.o.kk kkVar = new com.bytedance.sdk.component.o.kk("loadSplashAd b") { // from class: com.bytedance.sdk.openadsdk.core.u.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (!com.bytedance.sdk.openadsdk.core.bl.iw.dq()) {
                        dqVar.dq(new com.bytedance.sdk.openadsdk.f.d.s(1000, "广告请求开关已关闭,请联系穿山甲管理员"));
                    }
                    no.ia().mn(1);
                    com.bytedance.sdk.openadsdk.core.component.splash.mn.dq(u.this.getContext()).dq(dVar, dqVar, i);
                } catch (Throwable th) {
                    dqVar.dq(new com.bytedance.sdk.openadsdk.f.d.s(TTAdConstant.INIT_LOCAL_FAIL_CODE, " msg = " + th.getMessage()));
                    com.bytedance.sdk.component.utils.ig.d("TTAdNativeImpl", "splash component maybe not exist, pls check1", th);
                }
            }
        };
        if (!le.dq) {
            com.bytedance.sdk.component.utils.ig.p("TTAdNativeImpl", "please exec TTAdSdk.init and TTAdSdk.start before load ad");
            dqVar.dq(new com.bytedance.sdk.openadsdk.f.d.s(10000, "please exec TTAdSdk.init and TTAdSdk.start before load ad"));
            return;
        }
        if (AdSdkInitializerHolder.isSdkInitSuccess() && (kk == 4 || com.bytedance.sdk.openadsdk.core.component.splash.mn.dq(dVar))) {
            kkVar.run();
        } else if (dq()) {
            com.bytedance.sdk.component.o.mn.s(kkVar);
        } else {
            com.bytedance.sdk.component.o.no.f2029d.no().execute(kkVar);
        }
        com.bytedance.sdk.openadsdk.core.s.dq.ox().dq(3, dVar);
    }

    public void dq(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final com.bytedance.sdk.openadsdk.r.dq.d.dq.iw iwVar) {
        com.bytedance.sdk.component.o.kk kkVar = new com.bytedance.sdk.component.o.kk("loadNativeExpressAd") { // from class: com.bytedance.sdk.openadsdk.core.u.9
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (!com.bytedance.sdk.openadsdk.core.bl.iw.dq()) {
                        iwVar.dq(1000, "广告请求开关已关闭,请联系穿山甲管理员");
                    } else if (u.this.dq(dVar, false)) {
                        com.bytedance.sdk.openadsdk.core.nativeexpress.p.dq(u.this.getContext()).dq(dVar, 5, iwVar, MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE);
                    } else {
                        iwVar.dq(110, o.dq(110));
                    }
                } catch (Throwable th) {
                    iwVar.dq(TTAdConstant.INIT_LOCAL_FAIL_CODE, " msg = " + th.getMessage());
                    com.bytedance.sdk.component.utils.ig.d("TTAdNativeImpl", "Error msg = ", th);
                }
            }
        };
        if (le.dq) {
            dq(kkVar, 5);
            com.bytedance.sdk.openadsdk.core.s.dq.ox().dq(5, dVar);
        } else {
            com.bytedance.sdk.component.utils.ig.p("TTAdNativeImpl", "please exec TTAdSdk.init and TTAdSdk.start before load ad");
            iwVar.dq(10000, "please exec TTAdSdk.init and TTAdSdk.start before load ad");
        }
    }

    public void dq(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final com.bytedance.sdk.openadsdk.r.dq.d.dq.mn mnVar) {
        com.bytedance.sdk.component.o.kk kkVar = new com.bytedance.sdk.component.o.kk("loadRewardVideoAd") { // from class: com.bytedance.sdk.openadsdk.core.u.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (com.bytedance.sdk.openadsdk.core.bl.iw.dq()) {
                        com.bytedance.sdk.openadsdk.core.component.reward.dq.s.dq().dq(dVar, new com.bytedance.sdk.openadsdk.core.component.reward.dq.ox(mnVar));
                    } else {
                        mnVar.dq(1000, "广告请求开关已关闭,请联系穿山甲管理员");
                    }
                } catch (Throwable th) {
                    mnVar.dq(TTAdConstant.INIT_LOCAL_FAIL_CODE, " msg = " + th.getMessage());
                    com.bytedance.sdk.component.utils.ig.d("TTAdNativeImpl", "reward  component maybe not exist, pls check1", th);
                }
            }
        };
        if (le.dq) {
            dq(kkVar, 7);
            com.bytedance.sdk.openadsdk.core.s.dq.ox().dq(7, dVar);
        } else {
            com.bytedance.sdk.component.utils.ig.p("TTAdNativeImpl", "please exec TTAdSdk.init and TTAdSdk.start before load ad");
            mnVar.dq(10000, "please exec TTAdSdk.init and TTAdSdk.start before load ad");
        }
    }

    public void dq(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final com.bytedance.sdk.openadsdk.r.dq.d.dq.ox oxVar) {
        com.bytedance.sdk.component.o.kk kkVar = new com.bytedance.sdk.component.o.kk("loadFeedAd") { // from class: com.bytedance.sdk.openadsdk.core.u.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (com.bytedance.sdk.openadsdk.core.bl.iw.dq()) {
                        com.bytedance.sdk.openadsdk.core.component.dq.dq.dq().dq(u.this.getContext(), dVar, oxVar);
                    } else {
                        oxVar.dq(1000, "广告请求开关已关闭,请联系穿山甲管理员");
                    }
                } catch (Throwable th) {
                    oxVar.dq(TTAdConstant.INIT_LOCAL_FAIL_CODE, "feed component maybe not exist, pls check1, msg = " + th.getMessage());
                    com.bytedance.sdk.component.utils.ig.d("TTAdNativeImpl", "feed component maybe not exist, pls check1", th);
                }
            }
        };
        if (le.dq) {
            dq(kkVar, 5);
            com.bytedance.sdk.openadsdk.core.s.dq.ox().dq(5, dVar);
        } else {
            com.bytedance.sdk.component.utils.ig.p("TTAdNativeImpl", "please exec TTAdSdk.init and TTAdSdk.start before load ad");
            oxVar.dq(10000, "Please exec  TTAdSdk.init and TTAdSdk.start before load ad");
        }
    }

    public void dq(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final com.bytedance.sdk.openadsdk.r.dq.d.dq.p pVar) {
        com.bytedance.sdk.component.o.kk kkVar = new com.bytedance.sdk.component.o.kk("loadFullScreenVideoAd") { // from class: com.bytedance.sdk.openadsdk.core.u.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (com.bytedance.sdk.openadsdk.core.bl.iw.dq()) {
                        com.bytedance.sdk.openadsdk.core.component.reward.dq.dq.dq().dq(dVar, new com.bytedance.sdk.openadsdk.core.component.reward.dq.ox(pVar));
                    } else {
                        pVar.dq(1000, "广告请求开关已关闭,请联系穿山甲管理员");
                    }
                } catch (Throwable th) {
                    pVar.dq(TTAdConstant.INIT_LOCAL_FAIL_CODE, " msg = " + th.getMessage());
                    com.bytedance.sdk.component.utils.ig.dq("TTAdNativeImpl", "reward component maybe not exist, pls check2", th);
                }
            }
        };
        if (le.dq) {
            dq(kkVar, 8);
            com.bytedance.sdk.openadsdk.core.s.dq.ox().dq(8, dVar);
        } else {
            com.bytedance.sdk.component.utils.ig.p("TTAdNativeImpl", "please exec TTAdSdk.init and TTAdSdk.start before load ad");
            pVar.dq(10000, "please exec TTAdSdk.init and TTAdSdk.start before load ad");
        }
    }

    public void iw(ValueSet valueSet, Bridge bridge) {
        d(com.bytedance.sdk.openadsdk.core.ir.h.dq(9, valueSet), new com.bytedance.sdk.openadsdk.core.dq.ia(bridge));
    }

    @Override // com.bykv.vk.openvk.api.proto.Loader
    public void load(int i, ValueSet valueSet, EventListener eventListener) {
        if (valueSet == null) {
            com.bytedance.sdk.component.utils.ig.d("load with null valueset");
        }
        Bridge bridge = (Bridge) valueSet.objectValue(1, Bridge.class);
        if (bridge == null) {
            com.bytedance.sdk.component.utils.ig.d("load with null callback");
            return;
        }
        hat e2 = hat.e(valueSet);
        e2.o(1, 0);
        cpo k = e2.k();
        if (i == 1) {
            if (k.booleanValue(2, false)) {
                mn(k, bridge);
                return;
            } else {
                ox(k, bridge);
                return;
            }
        }
        if (i == 3) {
            dq(k, bridge, k.intValue(3, 0));
            return;
        }
        switch (i) {
            case 5:
                if (!k.booleanValue(2, false)) {
                    ia(k, bridge);
                    break;
                } else {
                    s(k, bridge);
                    break;
                }
            case 6:
                dq(k, bridge);
                break;
            case 7:
                kk(k, bridge);
                break;
            case 8:
                p(k, bridge);
                break;
            case 9:
                if (!k.booleanValue(2, false)) {
                    d(k, bridge);
                    break;
                } else {
                    iw(k, bridge);
                    break;
                }
        }
    }

    public void mn(ValueSet valueSet, Bridge bridge) {
        ox(com.bytedance.sdk.openadsdk.core.ir.h.dq(1, valueSet), new com.bytedance.sdk.openadsdk.core.dq.ia(bridge));
    }

    public void ox(ValueSet valueSet, Bridge bridge) {
        dq(1, com.bytedance.sdk.openadsdk.core.ir.h.dq(1, valueSet), new com.bytedance.sdk.openadsdk.core.dq.mn(bridge));
    }

    public void ox(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final com.bytedance.sdk.openadsdk.r.dq.d.dq.iw iwVar) {
        com.bytedance.sdk.component.o.kk kkVar = new com.bytedance.sdk.component.o.kk("loadBannerExpressAd") { // from class: com.bytedance.sdk.openadsdk.core.u.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (!com.bytedance.sdk.openadsdk.core.bl.iw.dq()) {
                        iwVar.dq(1000, "广告请求开关已关闭,请联系穿山甲管理员");
                    } else if (u.this.dq(dVar, false)) {
                        com.bytedance.sdk.openadsdk.core.nativeexpress.p.dq(u.this.getContext()).dq(dVar, 1, iwVar, MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE);
                    } else {
                        iwVar.dq(110, o.dq(110));
                    }
                } catch (Throwable th) {
                    iwVar.dq(TTAdConstant.INIT_LOCAL_FAIL_CODE, " msg = " + th.getMessage());
                    com.bytedance.sdk.component.utils.ig.d("TTAdNativeImpl", "Banner express error, pls check", th);
                }
            }
        };
        if (le.dq) {
            dq(kkVar, 1);
            com.bytedance.sdk.openadsdk.core.s.dq.ox().dq(1, dVar);
        } else {
            com.bytedance.sdk.component.utils.ig.p("TTAdNativeImpl", "please exec TTAdSdk.init and TTAdSdk.start before load ad");
            iwVar.dq(10000, "please exec TTAdSdk.init and TTAdSdk.start before load ad");
        }
    }

    public void p(ValueSet valueSet, Bridge bridge) {
        dq(com.bytedance.sdk.openadsdk.core.ir.h.dq(8, valueSet), new com.bytedance.sdk.openadsdk.core.dq.iw(bridge));
    }

    public void s(ValueSet valueSet, Bridge bridge) {
        dq(com.bytedance.sdk.openadsdk.core.ir.h.dq(5, valueSet), new com.bytedance.sdk.openadsdk.core.dq.ia(bridge));
    }
}
