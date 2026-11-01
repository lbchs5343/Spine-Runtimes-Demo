package com.bytedance.sdk.openadsdk.api;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Pair;
import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Loader;
import com.bykv.vk.openvk.api.proto.Manager;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.AdConfig;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import com.bytedance.sdk.openadsdk.downloadnew.core.DownloadBridgeFactory;
import com.bytedance.sdk.openadsdk.downloadnew.core.ExitInstallListener;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationApiLog;
import com.bytedance.sdk.openadsdk.mediation.bridge.init.MediationInitCLassLoader;
import g.cpo;
import g.hat;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public abstract class dq {
    private TTAdSdk.InitCallback dq;

    public interface d<T> {
        void dq(T t);
    }

    /* renamed from: com.bytedance.sdk.openadsdk.api.dq$dq, reason: collision with other inner class name */
    public static abstract class AbstractC0134dq<T> {
        private AbstractC0134dq() {
        }

        public abstract void dq(d<T> dVar, int i);
    }

    public static abstract class ox implements TTAdManager {

        /* renamed from: d, reason: collision with root package name */
        private volatile boolean f2393d;
        private volatile Manager dq;
        private List<WeakReference<d<Manager>>> ox = new CopyOnWriteArrayList();

        /* renamed from: com.bytedance.sdk.openadsdk.api.dq$ox$1, reason: invalid class name */
        public class AnonymousClass1 extends AbstractC0134dq<Loader> {

            /* renamed from: d, reason: collision with root package name */
            final d<Manager> f2394d;
            Loader dq;
            final /* synthetic */ SoftReference ox;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(SoftReference softReference) {
                super();
                this.ox = softReference;
                this.f2394d = new d<Manager>() { // from class: com.bytedance.sdk.openadsdk.api.dq.ox.1.1
                    @Override // com.bytedance.sdk.openadsdk.api.dq.d
                    public void dq(Manager manager) {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        anonymousClass1.dq = manager.createLoader((Context) anonymousClass1.ox.get());
                    }
                };
            }

            @Override // com.bytedance.sdk.openadsdk.api.dq.AbstractC0134dq
            public void dq(final d<Loader> dVar, int i) {
                Loader loader = this.dq;
                if (loader != null) {
                    dVar.dq(loader);
                } else {
                    ox.this.call(new d<Manager>() { // from class: com.bytedance.sdk.openadsdk.api.dq.ox.1.2
                        @Override // com.bytedance.sdk.openadsdk.api.dq.d
                        public void dq(Manager manager) {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            ox.this.dq(anonymousClass1.f2394d);
                            AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                            anonymousClass12.dq = manager.createLoader((Context) anonymousClass12.ox.get());
                            dVar.dq(AnonymousClass1.this.dq);
                        }
                    }, i + 10000);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void call(final d<Manager> dVar, final int i) {
            if (this.dq == null) {
                if (!this.f2393d && i > 10000) {
                    throw new IllegalStateException("广告SDK未Ready, 请在load(请求广告）之前，先调用init and start方法，以避免无法请求广告");
                }
                com.bytedance.sdk.openadsdk.cd.dq.dq().dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.api.dq.ox.7
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (ox.this.dq != null) {
                                dVar.dq(ox.this.dq);
                                return;
                            }
                            com.bytedance.sdk.openadsdk.api.ox.p("_tt_ad_sdk_", "Not ready, no manager: " + i);
                        } catch (Throwable th) {
                            com.bytedance.sdk.openadsdk.api.ox.p("_tt_ad_sdk_", "Unexpected manager call error: " + th.getMessage());
                            ox.this.dq(th);
                        }
                    }
                });
                return;
            }
            try {
                dVar.dq(this.dq);
            } catch (Throwable th) {
                com.bytedance.sdk.openadsdk.api.ox.p("_tt_ad_sdk_", "Unexpected manager call error: " + th.getMessage());
                dq(th);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T> T d(Manager manager, Class<T> cls, Bundle bundle) {
            hat g2 = hat.g(2);
            SparseArray sparseArray = g2.f19148c;
            sparseArray.put(9, cls);
            sparseArray.put(10, bundle);
            return (T) manager.getBridge(1).call(6, g2.k(), cls);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dq(Manager manager) {
            this.dq = manager;
            if (this.dq != null) {
                Iterator<WeakReference<d<Manager>>> it = this.ox.iterator();
                while (it.hasNext()) {
                    WeakReference<d<Manager>> next = it.next();
                    d<Manager> dVar = next != null ? next.get() : null;
                    if (dVar != null) {
                        dVar.dq(manager);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dq(d<Manager> dVar) {
            this.ox.add(new WeakReference<>(dVar));
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public TTAdNative createAdNative(Context context) {
            return new s(new AnonymousClass1(new SoftReference(context))).dq();
        }

        public Object dq(Object obj) {
            return obj;
        }

        public void dq(Throwable th) {
        }

        public void dq(boolean z) {
            this.f2393d = z;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public String getBiddingToken(AdSlot adSlot) {
            return getBiddingToken(adSlot, false, adSlot.getAdType() > 0 ? adSlot.getAdType() : adSlot.getNativeAdType());
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public String getBiddingToken(AdSlot adSlot, boolean z, int i) {
            if (i <= 0) {
                i = adSlot.getAdType() > 0 ? adSlot.getAdType() : adSlot.getNativeAdType();
            }
            hat e2 = hat.e(com.bytedance.sdk.openadsdk.f.dq.ox.d.d(adSlot));
            e2.i(13, z);
            e2.o(14, i);
            cpo k = e2.k();
            if (this.dq != null) {
                return (String) this.dq.getBridge(1).call(2, k, String.class);
            }
            return null;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public <T> T getExtra(final Class<T> cls, final Bundle bundle) {
            if (this.dq != null) {
                return (T) d(this.dq, cls, bundle);
            }
            call(new d<Manager>() { // from class: com.bytedance.sdk.openadsdk.api.dq.ox.4
                @Override // com.bytedance.sdk.openadsdk.api.dq.d
                public void dq(Manager manager) {
                    ox.d(ox.this.dq, cls, bundle);
                }
            }, 6);
            return null;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public String getPluginVersion() {
            return this.dq != null ? this.dq.values().stringValue(12) : "";
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public String getSDKVersion() {
            return "6.6.0.7";
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public int getThemeStatus() {
            if (this.dq != null) {
                return this.dq.values().intValue(11);
            }
            return 0;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public void register(final Object obj) {
            call(new d<Manager>() { // from class: com.bytedance.sdk.openadsdk.api.dq.ox.2
                @Override // com.bytedance.sdk.openadsdk.api.dq.d
                public void dq(Manager manager) {
                    Object dq = ox.this.dq(obj);
                    hat g2 = hat.g(1);
                    g2.f19148c.put(8, dq);
                    manager.getBridge(1).call(4, g2.k(), Void.class);
                }
            }, 4);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public void requestPermissionIfNecessary(final Context context) {
            call(new d<Manager>() { // from class: com.bytedance.sdk.openadsdk.api.dq.ox.5
                @Override // com.bytedance.sdk.openadsdk.api.dq.d
                public void dq(Manager manager) {
                    hat g2 = hat.g(1);
                    g2.f19148c.put(7, context);
                    manager.getBridge(1).call(3, g2.k(), Void.class);
                }
            }, 3);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public void setThemeStatus(final int i) {
            call(new d<Manager>() { // from class: com.bytedance.sdk.openadsdk.api.dq.ox.6
                @Override // com.bytedance.sdk.openadsdk.api.dq.d
                public void dq(Manager manager) {
                    hat f2 = hat.f();
                    f2.o(11, i);
                    manager.getBridge(1).call(1, f2.k(), Void.class);
                }
            }, 1);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public boolean tryShowInstallDialogWhenExit(Activity activity, ExitInstallListener exitInstallListener) {
            HashMap hashMap = new HashMap();
            hashMap.put(TTDownloadField.TT_ACTIVITY, activity);
            hashMap.put(TTDownloadField.TT_EXIT_INSTALL_LISTENER, exitInstallListener);
            Bridge downloadBridge = DownloadBridgeFactory.getDownloadBridge(TTAppContextHolder.getContext());
            hat g2 = hat.g(1);
            g2.f19148c.put(0, hashMap);
            return ((Boolean) downloadBridge.call(0, g2.k(), Boolean.class)).booleanValue();
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public void unregister(final Object obj) {
            call(new d<Manager>() { // from class: com.bytedance.sdk.openadsdk.api.dq.ox.3
                @Override // com.bytedance.sdk.openadsdk.api.dq.d
                public void dq(Manager manager) {
                    hat g2 = hat.g(1);
                    g2.f19148c.put(8, obj);
                    manager.getBridge(1).call(5, g2.k(), Void.class);
                }
            }, 5);
        }
    }

    public class p implements EventListener {
        private p() {
        }

        @Override // com.bykv.vk.openvk.api.proto.EventListener
        public ValueSet onEvent(int i, Result result) {
            dq.this.d(result);
            return null;
        }
    }

    public static class s extends com.bytedance.sdk.openadsdk.f.dq.dq {
        private AbstractC0134dq<Loader> dq;

        public s(AbstractC0134dq<Loader> abstractC0134dq) {
            this.dq = abstractC0134dq;
        }

        private void dq(d<Loader> dVar, int i) {
            com.bytedance.sdk.openadsdk.api.ox.d("_tt_ad_sdk_", "load ad slot type: ".concat(String.valueOf(i)));
            this.dq.dq(dVar, i);
        }

        @Override // com.bytedance.sdk.openadsdk.f.dq.dq
        public void d(final ValueSet valueSet, final Bridge bridge) {
            dq(new d<Loader>() { // from class: com.bytedance.sdk.openadsdk.api.dq.s.3
                @Override // com.bytedance.sdk.openadsdk.api.dq.d
                public void dq(Loader loader) {
                    hat e2 = hat.e(valueSet);
                    e2.f19148c.put(1, bridge);
                    loader.load(6, e2.k(), null);
                }
            }, 6);
        }

        @Override // com.bytedance.sdk.openadsdk.f.dq.dq
        public Pair<Integer, String> dq(Exception exc) {
            com.bytedance.sdk.openadsdk.api.ox.p("_tt_ad_sdk_", "Load ad failed: " + exc.getMessage());
            if ((exc instanceof IllegalStateException) && "广告SDK未Ready, 请在load(请求广告）之前，先调用init and start方法，以避免无法请求广告".equals(exc.getMessage())) {
                return new Pair<>(4208, exc.getMessage());
            }
            return new Pair<>(Integer.valueOf(TTAdConstant.INIT_FAILED_CREATE_INVOKE_FAILED), "Load ad failed: " + exc.getMessage());
        }

        @Override // com.bytedance.sdk.openadsdk.f.dq.dq
        public void dq(final ValueSet valueSet, final Bridge bridge) {
            dq(new d<Loader>() { // from class: com.bytedance.sdk.openadsdk.api.dq.s.1
                @Override // com.bytedance.sdk.openadsdk.api.dq.d
                public void dq(Loader loader) {
                    hat e2 = hat.e(valueSet);
                    e2.f19148c.put(1, bridge);
                    loader.load(5, e2.k(), null);
                }
            }, 5);
        }

        @Override // com.bytedance.sdk.openadsdk.f.dq.dq
        public void dq(final ValueSet valueSet, final Bridge bridge, final int i) {
            dq(new d<Loader>() { // from class: com.bytedance.sdk.openadsdk.api.dq.s.6
                @Override // com.bytedance.sdk.openadsdk.api.dq.d
                public void dq(Loader loader) {
                    hat e2 = hat.e(valueSet);
                    e2.o(3, i);
                    e2.f19148c.put(1, bridge);
                    loader.load(3, e2.k(), null);
                }
            }, 3);
        }

        @Override // com.bytedance.sdk.openadsdk.f.dq.dq
        public void ia(final ValueSet valueSet, final Bridge bridge) {
            dq(new d<Loader>() { // from class: com.bytedance.sdk.openadsdk.api.dq.s.10
                @Override // com.bytedance.sdk.openadsdk.api.dq.d
                public void dq(Loader loader) {
                    hat e2 = hat.e(valueSet);
                    e2.i(2, true);
                    e2.f19148c.put(1, bridge);
                    loader.load(9, e2.k(), null);
                }
            }, 9);
        }

        @Override // com.bytedance.sdk.openadsdk.f.dq.dq
        public void iw(final ValueSet valueSet, final Bridge bridge) {
            dq(new d<Loader>() { // from class: com.bytedance.sdk.openadsdk.api.dq.s.8
                @Override // com.bytedance.sdk.openadsdk.api.dq.d
                public void dq(Loader loader) {
                    hat e2 = hat.e(valueSet);
                    e2.f19148c.put(1, bridge);
                    loader.load(8, e2.k(), null);
                }
            }, 8);
        }

        @Override // com.bytedance.sdk.openadsdk.f.dq.dq
        public void kk(final ValueSet valueSet, final Bridge bridge) {
            dq(new d<Loader>() { // from class: com.bytedance.sdk.openadsdk.api.dq.s.2
                @Override // com.bytedance.sdk.openadsdk.api.dq.d
                public void dq(Loader loader) {
                    hat e2 = hat.e(valueSet);
                    e2.i(2, true);
                    e2.f19148c.put(1, bridge);
                    loader.load(1, e2.k(), null);
                }
            }, 1);
        }

        @Override // com.bytedance.sdk.openadsdk.f.dq.dq
        public void mn(final ValueSet valueSet, final Bridge bridge) {
            dq(new d<Loader>() { // from class: com.bytedance.sdk.openadsdk.api.dq.s.9
                @Override // com.bytedance.sdk.openadsdk.api.dq.d
                public void dq(Loader loader) {
                    hat e2 = hat.e(valueSet);
                    e2.i(2, true);
                    e2.f19148c.put(1, bridge);
                    loader.load(5, e2.k(), null);
                }
            }, 5);
        }

        @Override // com.bytedance.sdk.openadsdk.f.dq.dq
        public void ox(final ValueSet valueSet, final Bridge bridge) {
            dq(new d<Loader>() { // from class: com.bytedance.sdk.openadsdk.api.dq.s.4
                @Override // com.bytedance.sdk.openadsdk.api.dq.d
                public void dq(Loader loader) {
                    hat e2 = hat.e(valueSet);
                    e2.f19148c.put(1, bridge);
                    loader.load(9, e2.k(), null);
                }
            }, 9);
        }

        @Override // com.bytedance.sdk.openadsdk.f.dq.dq
        public void p(final ValueSet valueSet, final Bridge bridge) {
            dq(new d<Loader>() { // from class: com.bytedance.sdk.openadsdk.api.dq.s.5
                @Override // com.bytedance.sdk.openadsdk.api.dq.d
                public void dq(Loader loader) {
                    hat e2 = hat.e(valueSet);
                    e2.f19148c.put(1, bridge);
                    loader.load(1, e2.k(), null);
                }
            }, 1);
        }

        @Override // com.bytedance.sdk.openadsdk.f.dq.dq
        public void s(final ValueSet valueSet, final Bridge bridge) {
            dq(new d<Loader>() { // from class: com.bytedance.sdk.openadsdk.api.dq.s.7
                @Override // com.bytedance.sdk.openadsdk.api.dq.d
                public void dq(Loader loader) {
                    hat e2 = hat.e(valueSet);
                    e2.f19148c.put(1, bridge);
                    loader.load(7, e2.k(), null);
                }
            }, 7);
        }
    }

    public abstract ox d();

    public abstract void d(Context context, hat hatVar);

    public void d(Result result) {
        dq(result);
        if (result.isSuccess()) {
            com.bytedance.sdk.openadsdk.api.ox.d("_tt_ad_sdk_", "init sdk success ");
            TTAdSdk.InitCallback initCallback = this.dq;
            if (initCallback != null) {
                initCallback.success();
            }
        } else {
            com.bytedance.sdk.openadsdk.api.ox.s("_tt_ad_sdk_", "int sdk failed, code: " + result.code() + ", message: " + result.message());
            TTAdSdk.InitCallback initCallback2 = this.dq;
            if (initCallback2 != null) {
                initCallback2.fail(result.code(), result.message() != null ? result.message() : "");
            }
        }
        this.dq = null;
    }

    public boolean d(Context context, AdConfig adConfig, TTAdSdk.InitCallback initCallback) {
        return false;
    }

    public void dq(final Context context, AdConfig adConfig, TTAdSdk.InitCallback initCallback) {
        com.bytedance.sdk.openadsdk.ox.ox.dq().dq(ox());
        if (d(context, adConfig, initCallback)) {
            this.dq = initCallback;
            final hat e2 = hat.e(com.bytedance.sdk.openadsdk.f.dq.ox.dq.dq(adConfig));
            e2.h(1, SystemClock.elapsedRealtime());
            e2.n(5, "main");
            e2.i(4, true);
            e2.o(6, 999);
            e2.o(10, 6607);
            e2.n(11, "6.6.0.7");
            e2.n(12, "com.byted.pangle");
            e2.i(14, true);
            e2.m(16, com.bytedance.sdk.openadsdk.ox.ox.dq());
            Thread currentThread = Thread.currentThread();
            e2.n(2, currentThread.getName());
            e2.o(3, currentThread.getPriority());
            e2.m(15, new p());
            e2.m(8301, new MediationInitCLassLoader());
            if (adConfig != null) {
                MediationApiLog.setDebug(Boolean.valueOf(adConfig.isDebug()));
            }
            if (!dq(context, e2)) {
                com.bytedance.sdk.openadsdk.cd.dq.dq().dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.api.dq.1
                    @Override // java.lang.Runnable
                    public void run() {
                        dq.this.d(context, e2);
                    }
                });
            }
            d().dq(true);
        }
    }

    public void dq(Manager manager) {
        com.bytedance.sdk.openadsdk.api.ox.d("_tt_ad_sdk_", "update manager");
        d().dq(manager);
        d().register(com.bytedance.sdk.openadsdk.ox.ox.dq());
    }

    public void dq(Result result) {
    }

    public abstract boolean dq();

    public abstract boolean dq(Context context, hat hatVar);

    public abstract com.bytedance.sdk.openadsdk.ox.d ox();
}
