package com.bytedance.sdk.openadsdk.f.dq;

import android.util.Pair;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CSJAdError;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.mediation.bridge.MediationAdClassLoader;
import com.bytedance.sdk.openadsdk.mediation.dq.dq.ox;
import com.bytedance.sdk.openadsdk.mediation.dq.dq.p;
import com.bytedance.sdk.openadsdk.mediation.dq.dq.s;
import com.bytedance.sdk.openadsdk.r.dq.dq.dq.iw;
import g.hat;

/* loaded from: classes3.dex */
public abstract class dq {

    /* renamed from: com.bytedance.sdk.openadsdk.f.dq.dq$dq, reason: collision with other inner class name */
    public static class C0200dq implements TTAdNative {
        private final dq dq;

        public C0200dq(dq dqVar) {
            this.dq = dqVar;
        }

        private ValueSet dq(AdSlot adSlot) {
            hat e2 = hat.e(com.bytedance.sdk.openadsdk.f.dq.ox.d.d(adSlot));
            e2.m(8302, MediationAdClassLoader.getInstance());
            if (adSlot.getMediationAdSlot() != null) {
                e2.m(8260028, new s(adSlot.getMediationAdSlot()));
                e2.m(260027, adSlot.getMediationAdSlot());
            }
            return e2.k();
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadBannerExpressAd(AdSlot adSlot, TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
            try {
                this.dq.kk(dq(adSlot), new com.bytedance.sdk.openadsdk.r.dq.dq.dq.s(nativeExpressAdListener));
            } catch (Exception e2) {
                if (nativeExpressAdListener != null) {
                    Pair<Integer, String> dq = this.dq.dq(e2);
                    nativeExpressAdListener.onError(((Integer) dq.first).intValue(), (String) dq.second);
                }
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadDrawFeedAd(AdSlot adSlot, TTAdNative.DrawFeedAdListener drawFeedAdListener) {
            try {
                this.dq.ox(dq(adSlot), new com.bytedance.sdk.openadsdk.mediation.dq.dq.d(drawFeedAdListener));
            } catch (Exception e2) {
                if (drawFeedAdListener != null) {
                    Pair<Integer, String> dq = this.dq.dq(e2);
                    drawFeedAdListener.onError(((Integer) dq.first).intValue(), (String) dq.second);
                }
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadExpressDrawFeedAd(AdSlot adSlot, TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
            try {
                this.dq.ia(dq(adSlot), new com.bytedance.sdk.openadsdk.r.dq.dq.dq.s(nativeExpressAdListener));
            } catch (Exception e2) {
                if (nativeExpressAdListener != null) {
                    Pair<Integer, String> dq = this.dq.dq(e2);
                    nativeExpressAdListener.onError(((Integer) dq.first).intValue(), (String) dq.second);
                }
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadFeedAd(AdSlot adSlot, TTAdNative.FeedAdListener feedAdListener) {
            try {
                this.dq.dq(dq(adSlot), new ox(feedAdListener));
            } catch (Exception e2) {
                if (feedAdListener != null) {
                    Pair<Integer, String> dq = this.dq.dq(e2);
                    feedAdListener.onError(((Integer) dq.first).intValue(), (String) dq.second);
                }
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadFullScreenVideoAd(AdSlot adSlot, TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener) {
            try {
                this.dq.iw(dq(adSlot), new p(fullScreenVideoAdListener));
            } catch (Exception e2) {
                if (fullScreenVideoAdListener != null) {
                    Pair<Integer, String> dq = this.dq.dq(e2);
                    fullScreenVideoAdListener.onError(((Integer) dq.first).intValue(), (String) dq.second);
                }
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadInteractionExpressAd(AdSlot adSlot, TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadNativeAd(AdSlot adSlot, TTAdNative.NativeAdListener nativeAdListener) {
            try {
                this.dq.p(dq(adSlot), new com.bytedance.sdk.openadsdk.r.dq.dq.dq.p(nativeAdListener));
            } catch (Exception e2) {
                if (nativeAdListener != null) {
                    Pair<Integer, String> dq = this.dq.dq(e2);
                    nativeAdListener.onError(((Integer) dq.first).intValue(), (String) dq.second);
                }
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadNativeExpressAd(AdSlot adSlot, TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
            try {
                this.dq.mn(dq(adSlot), new com.bytedance.sdk.openadsdk.r.dq.dq.dq.s(nativeExpressAdListener));
            } catch (Exception e2) {
                if (nativeExpressAdListener != null) {
                    Pair<Integer, String> dq = this.dq.dq(e2);
                    nativeExpressAdListener.onError(((Integer) dq.first).intValue(), (String) dq.second);
                }
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadRewardVideoAd(AdSlot adSlot, TTAdNative.RewardVideoAdListener rewardVideoAdListener) {
            try {
                this.dq.s(dq(adSlot), new iw(rewardVideoAdListener));
            } catch (Exception e2) {
                if (rewardVideoAdListener != null) {
                    Pair<Integer, String> dq = this.dq.dq(e2);
                    rewardVideoAdListener.onError(((Integer) dq.first).intValue(), (String) dq.second);
                }
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadSplashAd(AdSlot adSlot, TTAdNative.CSJSplashAdListener cSJSplashAdListener, int i) {
            try {
                this.dq.dq(dq(adSlot), new d(cSJSplashAdListener), i);
            } catch (Exception e2) {
                if (cSJSplashAdListener != null) {
                    final Pair<Integer, String> dq = this.dq.dq(e2);
                    cSJSplashAdListener.onSplashLoadFail(new CSJAdError() { // from class: com.bytedance.sdk.openadsdk.f.dq.dq.dq.1
                        @Override // com.bytedance.sdk.openadsdk.CSJAdError
                        public int getCode() {
                            return ((Integer) dq.first).intValue();
                        }

                        @Override // com.bytedance.sdk.openadsdk.CSJAdError
                        public String getMsg() {
                            return (String) dq.second;
                        }
                    });
                }
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadStream(AdSlot adSlot, TTAdNative.FeedAdListener feedAdListener) {
            try {
                this.dq.d(dq(adSlot), new ox(feedAdListener));
            } catch (Exception e2) {
                if (feedAdListener != null) {
                    Pair<Integer, String> dq = this.dq.dq(e2);
                    feedAdListener.onError(((Integer) dq.first).intValue(), (String) dq.second);
                }
            }
        }
    }

    public abstract void d(ValueSet valueSet, Bridge bridge);

    public abstract Pair<Integer, String> dq(Exception exc);

    public TTAdNative dq() {
        return new C0200dq(this);
    }

    public abstract void dq(ValueSet valueSet, Bridge bridge);

    public abstract void dq(ValueSet valueSet, Bridge bridge, int i);

    public abstract void ia(ValueSet valueSet, Bridge bridge);

    public abstract void iw(ValueSet valueSet, Bridge bridge);

    public abstract void kk(ValueSet valueSet, Bridge bridge);

    public abstract void mn(ValueSet valueSet, Bridge bridge);

    public abstract void ox(ValueSet valueSet, Bridge bridge);

    public abstract void p(ValueSet valueSet, Bridge bridge);

    public abstract void s(ValueSet valueSet, Bridge bridge);
}
