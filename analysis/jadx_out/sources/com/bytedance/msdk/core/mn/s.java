package com.bytedance.msdk.core.mn;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import android.view.ViewGroup;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.msdk.api.p.no;
import com.bytedance.msdk.core.kk.kk;
import com.bytedance.msdk.core.kk.mp;
import com.bytedance.msdk.core.no.o;
import com.bytedance.msdk.core.s.d.ig;
import com.bytedance.msdk.core.s.d.p;
import com.bytedance.msdk.dq.dq;
import com.bytedance.msdk.ia.cd;
import com.bytedance.msdk.ia.jy;
import com.bytedance.msdk.ia.le;
import com.bytedance.msdk.ia.n;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.awf;
import g.hat;
import g.tn;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class s extends ox implements dq.InterfaceC0063dq {
    protected p.ox bu;
    private boolean er;
    protected int fd;
    protected com.bytedance.msdk.dq.d.iw gx;
    protected no ha;
    protected long j;
    protected int jw;
    protected SoftReference<Context> l;
    protected long nh;
    protected com.bytedance.msdk.core.f.ox ob;
    protected com.bytedance.msdk.dq.d.iw t;
    protected long vf;
    protected long wn;
    protected com.bytedance.msdk.api.p.dq.d ws;
    protected com.bytedance.msdk.d.s yy;
    private final long dq = 500;
    protected volatile boolean by = false;
    protected volatile boolean uh = false;
    protected volatile boolean xz = false;

    /* renamed from: d, reason: collision with root package name */
    private final Map<String, com.bytedance.msdk.dq.dq> f970d = new HashMap();
    protected int v = AVMDLDataLoader.AVMDLErrorIsCreateTask;
    protected int ds = AVMDLDataLoader.AVMDLErrorIsCreateTask;
    protected final AtomicBoolean vw = new AtomicBoolean(false);
    private ConcurrentHashMap<String, com.bytedance.msdk.api.d> ox = new ConcurrentHashMap<>();
    protected long cv = 0;
    private long ce = 0;
    private final Map<Integer, List<com.bytedance.msdk.core.no.no>> xi = new HashMap();
    protected boolean dc = false;
    private int z = 0;
    private final Comparator<com.bytedance.msdk.core.no.no> pa = new Comparator<com.bytedance.msdk.core.no.no>() { // from class: com.bytedance.msdk.core.mn.s.11
        @Override // java.util.Comparator
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public int compare(com.bytedance.msdk.core.no.no noVar, com.bytedance.msdk.core.no.no noVar2) {
            int wp;
            int wp2;
            if (noVar.wp() == noVar2.wp()) {
                wp = noVar.e();
                wp2 = noVar2.e();
            } else {
                wp = noVar.wp();
                wp2 = noVar2.wp();
            }
            return wp - wp2;
        }
    };
    protected final Comparator<com.bytedance.msdk.core.no.no> ij = new Comparator<com.bytedance.msdk.core.no.no>() { // from class: com.bytedance.msdk.core.mn.s.13
        @Override // java.util.Comparator
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public int compare(com.bytedance.msdk.core.no.no noVar, com.bytedance.msdk.core.no.no noVar2) {
            if (noVar.k() > noVar2.k()) {
                return -1;
            }
            return noVar.k() < noVar2.k() ? 1 : 0;
        }
    };

    public s(Context context, String str, int i) {
        Map<Integer, List<com.bytedance.msdk.core.no.no>> kx;
        this.l = new SoftReference<>(context);
        this.kk = str;
        this.f962c = i;
        com.bytedance.msdk.core.f.ox d2 = com.bytedance.msdk.core.dq.d();
        this.ob = d2;
        this.u = d2.mn();
        com.bytedance.msdk.core.f.ox oxVar = this.ob;
        if (oxVar != null) {
            p(oxVar.ob());
            ox(this.ob.kk());
            this.mn = this.ob.dq(this.kk, gh(), 100);
            v();
        }
        com.bytedance.msdk.core.no.d dVar = this.mn;
        if (dVar != null && (kx = dVar.kx()) != null) {
            for (Map.Entry<Integer, List<com.bytedance.msdk.core.no.no>> entry : kx.entrySet()) {
                List<com.bytedance.msdk.core.no.no> value = entry.getValue();
                if (value != null && value.size() > 0 && value.get(0).gh() == 100) {
                    this.xi.put(entry.getKey(), entry.getValue());
                }
            }
        }
        Looper d3 = com.bytedance.msdk.dq.s.iw.d();
        if (d3 != null) {
            this.o = new Handler(d3) { // from class: com.bytedance.msdk.core.mn.s.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    s.this.dq(message);
                }
            };
        } else {
            com.bytedance.msdk.dq.s.iw.dq();
            this.o = new Handler(com.bytedance.msdk.dq.s.iw.d()) { // from class: com.bytedance.msdk.core.mn.s.12
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    s.this.dq(message);
                }
            };
        }
    }

    private boolean cd() {
        return !i_();
    }

    private com.bytedance.msdk.api.p.dq.d.d.d d(com.bytedance.msdk.api.p.dq.d.ox.dq dqVar, com.bytedance.msdk.core.no.no noVar) {
        if (noVar.mp() == 5) {
            return noVar.iw() == 4 ? new com.bytedance.msdk.dq.p.dq.p.dq(dqVar.dq()) : noVar.iw() == 5 ? new com.bytedance.msdk.dq.p.dq.ox.d(dqVar.dq()) : noVar.iw() == 3 ? new com.bytedance.msdk.dq.p.dq.d.dq(dqVar.dq()) : new com.bytedance.msdk.dq.p.dq.p.dq(dqVar.dq());
        }
        if (noVar.mp() == 9) {
            return new com.bytedance.msdk.dq.p.dq.ox.d(dqVar.dq());
        }
        if (noVar.mp() == 3) {
            return new com.bytedance.msdk.dq.p.dq.mn.dq(dqVar.dq());
        }
        if (noVar.mp() == 2) {
            return new com.bytedance.msdk.dq.p.dq.dq.dq(dqVar.dq());
        }
        if (noVar.mp() == 8) {
            return new com.bytedance.msdk.dq.p.dq.s.dq(dqVar.dq());
        }
        if (noVar.mp() == 10) {
            if (noVar.iw() == 1) {
                return new com.bytedance.msdk.dq.p.dq.dq.dq(dqVar.dq());
            }
            if (noVar.iw() == 2) {
                return new com.bytedance.msdk.dq.p.dq.s.dq(dqVar.dq());
            }
            return null;
        }
        if (noVar.mp() == 1) {
            return new com.bytedance.msdk.dq.p.dq.d.dq(dqVar.dq());
        }
        if (noVar.mp() != 7) {
            return null;
        }
        if (noVar.iw() != 6 && noVar.iw() == 7) {
            return new com.bytedance.msdk.dq.p.dq.s.dq(dqVar.dq());
        }
        return new com.bytedance.msdk.dq.p.dq.iw.dq(dqVar.dq());
    }

    private com.bytedance.msdk.dq.dq d(com.bytedance.msdk.core.no.no noVar) {
        if (noVar != null) {
            return (TextUtils.equals(MediationConstant.ADN_BAIDU, noVar.jy()) && noVar.n()) ? dq(this.no.dq(), this.kk, noVar.cd()) : mn.d(noVar);
        }
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "wfcBean is null getTTAbsAdLoaderAdapter fail");
        return null;
    }

    private boolean d(int i, int i2, com.bytedance.msdk.core.no.no noVar, int i3, long j) {
        com.bytedance.msdk.dq.dq d2 = d(noVar);
        if (d2 != null) {
            Context context = this.l.get();
            if (context != null) {
                d2.dq(this);
                o oVar = this.f963e;
                if (oVar != null) {
                    noVar.ia(oVar.dq);
                }
                if (noVar.gh() == 2 && noVar.ji() != null) {
                    com.bytedance.msdk.s.iw.dq(noVar, this.no, d2.r());
                }
                d2.dq(context, noVar, dq(i, i2, noVar, j), this.no, this.f963e, i3);
                com.bytedance.msdk.core.s.dq.dq.dq().dq(this.kk, noVar.cd(), noVar, i3);
                return true;
            }
            dq(noVar, i, i2);
        } else {
            dq(noVar, i, i2);
            String ad = awf.ad(new StringBuilder(), noVar != null ? noVar.jy() : "", "Adapter");
            for (int i4 = 0; i4 < 5; i4++) {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "**********【重要】" + ad + "创建失败，请检查adapter是否接入 **********");
            }
        }
        return false;
    }

    private com.bytedance.msdk.api.p.dq.d.d.d dq(com.bytedance.msdk.api.p.dq.d.ox.dq dqVar, com.bytedance.msdk.core.no.no noVar) {
        if (dq(dqVar)) {
            return d(dqVar, noVar);
        }
        com.bytedance.msdk.dq.s.ox.d("TMe", "getCheckMediationGMCustomBaseAdapter fail");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Object> dq(int i, int i2, com.bytedance.msdk.core.no.no noVar, long j) {
        return mn.dq(noVar, this.no, this.i, this.ha, i, i2, !i_(), j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(String str, String str2) {
        Handler handler;
        com.bytedance.msdk.core.no.no dq = mn.dq(str2, str, -4, -4);
        if (this.wn != 0 && (handler = this.o) != null) {
            handler.removeMessages(3);
            this.o.sendEmptyMessageDelayed(3, this.wn);
        }
        dq(dq, -1);
        com.bytedance.msdk.core.f.d.dq(com.bytedance.msdk.core.dq.d()).d(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(String str, boolean z, int i, List<com.bytedance.msdk.d.s> list, int i2, double d2) {
        if (z) {
            if (i2 == 4) {
                com.bytedance.msdk.d.s sVar = (list == null || list.size() <= 0) ? null : list.get(0);
                if (sVar == null || sVar.dk() < d2) {
                    this.z = 7;
                } else {
                    this.z = 6;
                }
            } else if (i2 == 3) {
                this.z = 5;
            }
        } else if (i == 10003) {
            this.z = 9;
        } else if (i == 10086) {
            this.z = 8;
        }
        s(list);
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 预缓存补充请求结束，对外给出回调");
        n_();
    }

    private void dq(final boolean z) {
        com.bytedance.msdk.dq.s.iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.mn.s.2
            @Override // java.lang.Runnable
            public void run() {
                s sVar = s.this;
                p.ox oxVar = sVar.bu;
                if (oxVar != null) {
                    oxVar.dq(sVar.kk, z, 0, null);
                }
            }
        });
    }

    private boolean dq(final int i, final int i2, final com.bytedance.msdk.core.no.no noVar, final int i3, final long j) {
        int i4;
        String str;
        String str2;
        com.bytedance.msdk.core.no.dq dq = com.bytedance.msdk.mn.dq.dq.jy().dq(noVar.jy());
        if (dq == null) {
            dq(noVar, i, i2);
            str2 = "自定义Adapter 配置为空";
        } else {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK_SDK_Init", "自定义Adapter 获取配置wfcBean = " + noVar);
            com.bytedance.msdk.api.p.dq.d.ox.dq dq2 = dq.ox().dq(noVar.mp(), noVar.iw());
            if (dq2 == null) {
                str2 = "自定义Adapter 配置的className为空，无法反射创建自定义广告Adapter对象 ";
            } else {
                com.bytedance.msdk.api.p.dq.d.d.d dq3 = com.bytedance.msdk.core.mp.dq.dq().ox() ? dq(dq2, noVar) : ox(dq2, noVar);
                com.bytedance.msdk.iw.d.dq(com.bytedance.msdk.core.dq.getContext(), noVar.jy());
                if (com.bytedance.msdk.iw.d.dq.dq(noVar.jy()) != null) {
                    final Context context = this.l.get();
                    if (context == null) {
                        i4 = 49014;
                        str = "自定义Adapter 创建广告对象失败  --------- context为null";
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK_SDK_Init", "自定义Adapter 创建广告对象失败  --------- context为null");
                    } else {
                        if (dq3 != null) {
                            final com.bytedance.msdk.api.p.dq.d.d.d dVar = dq3;
                            com.bytedance.msdk.dq.s.iw.p(new Runnable() { // from class: com.bytedance.msdk.core.mn.s.16
                                @Override // java.lang.Runnable
                                public void run() {
                                    try {
                                        com.bytedance.msdk.api.p.dq.d.d.d dVar2 = dVar;
                                        Context context2 = context;
                                        s sVar = s.this;
                                        com.bytedance.msdk.api.dq.d dVar3 = sVar.no;
                                        com.bytedance.msdk.core.no.no noVar2 = noVar;
                                        Map<String, Object> dq4 = sVar.dq(i, i2, noVar2, j);
                                        s sVar2 = s.this;
                                        dVar2.dq(context2, dVar3, noVar2, dq4, sVar2.f963e, i3, sVar2);
                                    } catch (Exception e2) {
                                        s sVar3 = s.this;
                                        com.bytedance.msdk.s.iw.dq("", sVar3.yy, sVar3.no, noVar, new com.bytedance.msdk.api.dq(49014, "自定义Adapter 加载广告内部错误 ".concat(e2.getClass().getName())));
                                        e2.printStackTrace();
                                    }
                                }
                            });
                            return true;
                        }
                        i4 = 49014;
                        str = "";
                    }
                    com.bytedance.msdk.dq.s.ox.p("TTMediationSDK_SDK_Init", str);
                    com.bytedance.msdk.s.iw.dq("", this.yy, this.no, noVar, new com.bytedance.msdk.api.dq(i4, str));
                    dq(noVar, i, i2);
                    return false;
                }
                str2 = "自定义Adapter 创建广告对象失败  ---------  没有初始化，不能加载广告，请检查初始化配置";
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK_SDK_Init", "自定义Adapter 创建广告对象失败  ---------  没有初始化，不能加载广告，请检查初始化配置");
                com.bytedance.msdk.s.iw.dq("", this.yy, this.no, noVar, new com.bytedance.msdk.api.dq(49014, "自定义Adapter 创建广告对象失败  ---------  没有初始化，不能加载广告，请检查初始化配置"));
                dq(noVar, i, i2);
            }
        }
        str = str2;
        i4 = 49014;
        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK_SDK_Init", str);
        com.bytedance.msdk.s.iw.dq("", this.yy, this.no, noVar, new com.bytedance.msdk.api.dq(i4, str));
        dq(noVar, i, i2);
        return false;
    }

    private boolean dq(com.bytedance.msdk.api.p.dq.d.ox.dq dqVar) {
        if (dqVar == null) {
            return false;
        }
        Bridge mn = com.bytedance.msdk.core.mp.dq.dq().mn();
        if (mn == null) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "load ad check custom name class loader is null ");
            return false;
        }
        if (TextUtils.isEmpty(dqVar.dq())) {
            com.bytedance.msdk.dq.s.ox.d("TMe", "custom className is empty");
            return false;
        }
        hat f2 = hat.f();
        f2.n(AVMDLDataLoader.KeyIsLiveMobileUploadAllow, dqVar.dq());
        com.bytedance.msdk.dq.s.ox.d("TMe", "custom className is " + dqVar.dq());
        return ((Boolean) mn.call(8229, f2.k(), Boolean.class)).booleanValue();
    }

    private boolean dq(Class<?> cls, Class<?> cls2, com.bytedance.msdk.core.no.no noVar) {
        String dq;
        if (com.bytedance.msdk.iw.d.d(cls, cls2)) {
            dq = com.bytedance.msdk.iw.d.dq(cls, cls2);
        } else {
            dq = "自定义ADN初始化对象失败  ---------  初始化类 " + cls.getSimpleName() + " 需要继承自自定义ADN的广告对象基类 " + cls2.getSimpleName();
        }
        if (TextUtils.isEmpty(dq)) {
            return true;
        }
        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK_SDK_Init", dq);
        com.bytedance.msdk.s.iw.dq("", this.yy, this.no, noVar, new com.bytedance.msdk.api.dq(49014, dq));
        return false;
    }

    private boolean dq(String str, com.bytedance.msdk.core.no.no noVar, int i) {
        com.bytedance.msdk.core.s.dq.dq.dq().dq(this.kk, str, noVar, i);
        List<ig> dq = com.bytedance.msdk.core.s.dq.dq.dq().dq(str, this.no, i());
        if (dq == null || dq.size() <= 0) {
            return false;
        }
        com.bytedance.msdk.d.s sVar = dq.get(0).dq;
        com.bytedance.msdk.api.dq.d dVar = this.no;
        int ia = sVar.ia(dVar != null ? dVar.dq() : null);
        com.bytedance.msdk.s.iw.dq(noVar, this.no, com.bytedance.msdk.core.s.dq.dq.dq().dq(str), !i_(), 1, i, 3, ia, (com.bytedance.msdk.api.dq) null, -1L, this.er, false);
        ArrayList arrayList = new ArrayList();
        for (ig igVar : dq) {
            igVar.dq.o(3);
            igVar.dq.no(ia);
            igVar.dq.p(this.er);
            igVar.dq.ox(false);
            dq(igVar.dq, str);
            arrayList.add(igVar.dq);
        }
        com.bytedance.msdk.s.iw.dq(dq.get(0).dq, 0, "adn cache命中", 0L, this.no, i, arrayList.size(), 2, (String) null, 0L, -1L);
        dq(arrayList, ox(noVar));
        return true;
    }

    private void f() {
        if (this.o != null) {
            if (!jy()) {
                this.o.postDelayed(new Runnable() { // from class: com.bytedance.msdk.core.mn.s.9
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!s.this.p.get() || s.this.iw.get()) {
                            return;
                        }
                        s.this.iw.set(true);
                        com.bytedance.msdk.api.dq.d dVar = s.this.no;
                        if ((dVar != null && dVar.le() == 7) || s.this.no.le() == 8) {
                            com.bytedance.msdk.dq.s.ox.ox("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(s.this.kk) + "m-sdk----设置 cacheTimeout 已到时间【" + com.bytedance.msdk.core.dq.d().dq(s.this.gh(), s.this.no.k()) + "】，给外部invokeAdVideoCache ...");
                        }
                        if (s.this.i_()) {
                            return;
                        }
                        s.this.fw();
                        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.mn.s.9.1
                            @Override // java.lang.Runnable
                            public void run() {
                                s.this.p();
                            }
                        });
                    }
                }, com.bytedance.msdk.core.dq.d().dq(gh(), this.no.k()));
                return;
            }
            if (!this.p.get() || this.iw.get()) {
                return;
            }
            this.iw.set(true);
            com.bytedance.msdk.api.dq.d dVar = this.no;
            if ((dVar != null && dVar.le() == 7) || this.no.le() == 8) {
                com.bytedance.msdk.dq.s.ox.ox("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "从onAdLoaded给外部invokeAdVideoCache ...");
            }
            if (i_()) {
                return;
            }
            fw();
            com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.mn.s.8
                @Override // java.lang.Runnable
                public void run() {
                    s.this.p();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fw() {
        com.bytedance.msdk.api.dq.d dVar = this.no;
        if ((dVar == null || dVar.le() != 7) && this.no.le() != 8) {
            return;
        }
        com.bytedance.msdk.api.dq.d dVar2 = this.no;
        com.bytedance.msdk.d.s sVar = this.yy;
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.ce;
        com.bytedance.msdk.core.no.d dVar3 = this.mn;
        com.bytedance.msdk.s.iw.dq(dVar2, sVar, elapsedRealtime, dVar3 != null ? dVar3.gx() : null);
    }

    private List<com.bytedance.msdk.core.no.no> ia(List<com.bytedance.msdk.core.no.no> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<com.bytedance.msdk.core.no.no> it = list.iterator();
        while (it.hasNext()) {
            com.bytedance.msdk.core.no.no next = it.next();
            if (next.ir()) {
                it.remove();
                arrayList2.add(next);
            } else if (next.n() || next.u() || next.op()) {
                it.remove();
                com.bytedance.msdk.core.no.no noVar = new com.bytedance.msdk.core.no.no();
                noVar.s(next.cd());
                noVar.o(next.gh());
                noVar.ox(next.jy());
                noVar.p(next.ia());
                noVar.dq(next.mn());
                noVar.no(next.wp());
                noVar.ig(next.e());
                noVar.kk(next.mp());
                StringBuilder sb = new StringBuilder();
                sb.append(next.k());
                noVar.iw(sb.toString());
                noVar.d(next.q());
                noVar.mn(next.kx());
                noVar.ia(next.h());
                noVar.dq(next.ji());
                com.bytedance.msdk.d.s p = p(noVar);
                if (p != null) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(p.sy());
                    noVar.iw(sb2.toString());
                }
                arrayList.add(noVar);
            }
        }
        list.addAll(arrayList);
        Collections.sort(list, this.ij);
        Collections.sort(arrayList2, this.pa);
        list.addAll(0, arrayList2);
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ig() {
        this.h = System.currentTimeMillis();
        Map<Integer, List<com.bytedance.msdk.core.no.no>> map = this.ia;
        if (map == null) {
            ox(new com.bytedance.msdk.api.dq(840040, com.bytedance.msdk.api.dq.dq(840040)));
            return;
        }
        List<com.bytedance.msdk.core.no.no> list = map.get(0);
        if (n.dq(list)) {
            ox(new com.bytedance.msdk.api.dq(840040, com.bytedance.msdk.api.dq.dq(840040)));
            return;
        }
        int ox = this.no.ox();
        JSONObject jSONObject = new JSONObject();
        dq(com.bytedance.msdk.core.jy.dq.dq().dq(this.n, this.l.get(), this.no, list, this.mn, ox, !i_(), jSONObject), jSONObject);
    }

    public static Map<String, Object> iw(String str) {
        le leVar = new le();
        leVar.put(MediationConstant.KEY_GM_PRIME_RIT, str);
        return leVar;
    }

    private boolean jy() {
        List<com.bytedance.msdk.d.s> list = this.r;
        if (list != null) {
            Iterator<com.bytedance.msdk.d.s> it = list.iterator();
            while (it.hasNext()) {
                if (it.next().fx()) {
                    return true;
                }
            }
        }
        List<com.bytedance.msdk.d.s> list2 = this.gh;
        if (list2 != null) {
            Iterator<com.bytedance.msdk.d.s> it2 = list2.iterator();
            while (it2.hasNext()) {
                if (it2.next().fx()) {
                    return true;
                }
            }
        }
        List<com.bytedance.msdk.d.s> list3 = this.cd;
        if (list3 == null) {
            return false;
        }
        Iterator<com.bytedance.msdk.d.s> it3 = list3.iterator();
        while (it3.hasNext()) {
            if (it3.next().fx()) {
                return true;
            }
        }
        return false;
    }

    private com.bytedance.msdk.d.s mn(List<com.bytedance.msdk.d.s> list) {
        com.bytedance.msdk.d.s sVar = null;
        if (list != null && list.size() != 0) {
            for (com.bytedance.msdk.d.s sVar2 : list) {
                if (sVar == null || sVar2.z() < sVar.z()) {
                    sVar = sVar2;
                }
            }
        }
        return sVar;
    }

    private void mp() {
        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "开屏广告走了开发者自定义开屏兜底，数据为: getAdNetworkFlatFromId = " + this.ha.dq() + " getAppId = " + this.ha.ox() + " getAppKey = " + this.ha.p() + " getAdNetworkSlotId = " + this.ha.d());
        no noVar = this.ha;
        if (noVar == null || TextUtils.isEmpty(noVar.d()) || (TextUtils.isEmpty(this.ha.ox()) && TextUtils.isEmpty(this.ha.p()))) {
            d(new com.bytedance.msdk.api.dq(840027, com.bytedance.msdk.api.dq.dq(840027)), (com.bytedance.msdk.core.no.ox) null);
            return;
        }
        int dq = this.ha.dq();
        final String dq2 = com.bytedance.msdk.d.dq.dq(dq);
        final String d2 = this.ha.d();
        if (TextUtils.isEmpty(dq2)) {
            d(new com.bytedance.msdk.api.dq(840027, com.bytedance.msdk.api.dq.dq(840027)), (com.bytedance.msdk.core.no.ox) null);
            return;
        }
        if (dq == 3) {
            new com.bytedance.msdk.iw.dq.s(this.ha).dq(this.ha);
            Handler handler = this.o;
            if (handler != null) {
                handler.postDelayed(new Runnable() { // from class: com.bytedance.msdk.core.mn.s.17
                    @Override // java.lang.Runnable
                    public void run() {
                        s.this.dq(dq2, d2);
                    }
                }, 500L);
                return;
            }
            return;
        }
        if (dq == 1) {
            com.bytedance.msdk.iw.dq.o.d(this.ha).dq(this.ha, new com.bytedance.msdk.dq.dq.ox() { // from class: com.bytedance.msdk.core.mn.s.18
                @Override // com.bytedance.msdk.dq.dq.ox
                public void dq() {
                    s.this.dq(dq2, d2);
                }

                @Override // com.bytedance.msdk.dq.dq.ox
                public void dq(com.bytedance.msdk.api.dq dqVar) {
                }
            });
            return;
        }
        if (dq == 7) {
            new com.bytedance.msdk.iw.dq.mn(this.ha).dq(this.ha);
            dq(dq2, d2);
            return;
        }
        if (dq == 6) {
            new com.bytedance.msdk.iw.dq.d(this.ha).dq(this.ha);
            dq(dq2, d2);
            return;
        }
        if (dq == 4) {
            new com.bytedance.msdk.iw.dq.ia(this.ha).dq(this.ha);
            dq(dq2, d2);
        } else if (dq == 8) {
            new com.bytedance.msdk.iw.dq.ig(this.ha).dq(this.ha);
            dq(dq2, d2);
        } else if (dq == 9) {
            new com.bytedance.msdk.iw.dq.iw(this.ha).dq(this.ha, new com.bytedance.msdk.dq.dq.ox() { // from class: com.bytedance.msdk.core.mn.s.19
                @Override // com.bytedance.msdk.dq.dq.ox
                public void dq() {
                    s.this.dq(dq2, d2);
                }

                @Override // com.bytedance.msdk.dq.dq.ox
                public void dq(com.bytedance.msdk.api.dq dqVar) {
                }
            });
        } else {
            d(new com.bytedance.msdk.api.dq(840027, com.bytedance.msdk.api.dq.dq(840027)), (com.bytedance.msdk.core.no.ox) null);
        }
    }

    private double no() {
        com.bytedance.msdk.core.no.d dq = com.bytedance.msdk.mn.dq.dq.jy().dq(this.kk, gh(), 102);
        double d2 = 0.0d;
        if (dq == null) {
            return 0.0d;
        }
        for (com.bytedance.msdk.core.no.no noVar : dq.t()) {
            if (noVar.ce() && noVar.k() > d2) {
                d2 = noVar.k();
            }
        }
        return d2;
    }

    private com.bytedance.msdk.api.p.dq.d.d.d ox(com.bytedance.msdk.api.p.dq.d.ox.dq dqVar, com.bytedance.msdk.core.no.no noVar) {
        try {
            Class<?> cls = Class.forName(dqVar.dq());
            if (!dq(cls, dqVar.d(), noVar)) {
                return null;
            }
            try {
                Object newInstance = cls.newInstance();
                if (newInstance instanceof com.bytedance.msdk.api.p.dq.d.d.d) {
                    return (com.bytedance.msdk.api.p.dq.d.d.d) newInstance;
                }
                return null;
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
                return null;
            } catch (InstantiationException e3) {
                e3.printStackTrace();
                return null;
            }
        } catch (ClassNotFoundException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private com.bytedance.msdk.core.no.ox ox(com.bytedance.msdk.core.no.no noVar) {
        if (noVar == null) {
            return null;
        }
        com.bytedance.msdk.core.no.ox oxVar = new com.bytedance.msdk.core.no.ox();
        oxVar.d(noVar.mp()).dq(noVar.iw()).ox(noVar.gh()).p(noVar.wp()).s(noVar.e()).d(noVar.jy()).dq(noVar.f()).ox(noVar.cd());
        return oxVar;
    }

    private com.bytedance.msdk.d.s p(com.bytedance.msdk.core.no.no noVar) {
        if (noVar == null) {
            return null;
        }
        String cd = noVar.cd();
        String ox = noVar.ji() != null ? noVar.ji().ox() : null;
        if (TextUtils.isEmpty(cd)) {
            return null;
        }
        for (com.bytedance.msdk.d.s sVar : this.r) {
            if (sVar != null && cd.equals(sVar.b())) {
                return sVar;
            }
        }
        for (com.bytedance.msdk.d.s sVar2 : this.cd) {
            if (sVar2 != null && cd.equals(sVar2.b())) {
                return sVar2;
            }
        }
        for (com.bytedance.msdk.d.s sVar3 : this.gh) {
            if (sVar3 != null) {
                if (!sVar3.ip() || TextUtils.isEmpty(ox) || TextUtils.isEmpty(sVar3.vw())) {
                    if (cd.equals(sVar3.b())) {
                        return sVar3;
                    }
                } else if (cd.equals(sVar3.b()) && ox.equals(sVar3.vw())) {
                    return sVar3;
                }
            }
        }
        return null;
    }

    private int q() {
        List<com.bytedance.msdk.core.no.no> list;
        com.bytedance.msdk.core.no.d dVar = this.mn;
        int i = 0;
        if (dVar == null) {
            return 0;
        }
        Map<Integer, List<com.bytedance.msdk.core.no.no>> kx = dVar.kx();
        if (kx != null && kx.size() != 0) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(kx.keySet());
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                if (this.le.s(num.intValue()) && (list = kx.get(num)) != null) {
                    i = list.size() + i;
                }
            }
        }
        return i;
    }

    public void bu() {
        if (this.ha != null) {
            StringBuilder sb = new StringBuilder();
            tn.h(sb, this.kk, "settings config.......AdUnitId = ");
            sb.append(this.kk);
            sb.append("  开屏广告走了开发者自定义兜底方案   adnName:");
            sb.append(com.bytedance.msdk.d.dq.dq(this.ha.dq()));
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", sb.toString());
        }
        s(41006);
        com.bytedance.msdk.s.iw.d(this.no, -4);
        mp();
    }

    public void cv() {
        dq(0, false);
    }

    public void d() {
        com.bytedance.msdk.dq.s.iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.mn.s.20
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Handler handler = s.this.o;
                    if (handler != null) {
                        handler.removeCallbacksAndMessages(null);
                    }
                    List<com.bytedance.msdk.d.s> list = s.this.r;
                    if (list != null) {
                        list.clear();
                    }
                    List<com.bytedance.msdk.d.s> list2 = s.this.cd;
                    if (list2 != null) {
                        list2.clear();
                    }
                    List<com.bytedance.msdk.d.s> list3 = s.this.gh;
                    if (list3 != null) {
                        list3.clear();
                    }
                    com.bytedance.msdk.d.s sVar = s.this.yy;
                    if (sVar != null) {
                        sVar.p();
                    }
                    if (s.this.f970d != null) {
                        for (Map.Entry entry : s.this.f970d.entrySet()) {
                            if (entry != null) {
                                ((com.bytedance.msdk.dq.dq) entry.getValue()).dq((dq.InterfaceC0063dq) null);
                            }
                        }
                        s.this.f970d.clear();
                    }
                    s.this.le.s();
                } catch (Throwable th) {
                    if (com.bytedance.msdk.dq.s.ox.d()) {
                        th.printStackTrace();
                    }
                }
                s sVar2 = s.this;
                sVar2.t = null;
                sVar2.gx = null;
                sVar2.ob = null;
                sVar2.ia = null;
                sVar2.ha = null;
                sVar2.xz = true;
                if (s.this.by) {
                    s.this.d(new com.bytedance.msdk.api.d.dq(41044, com.bytedance.msdk.api.dq.dq(41044)), (com.bytedance.msdk.core.no.ox) null);
                }
            }
        });
    }

    public void d(int i, boolean z) {
        dq(i + 1, z);
    }

    public void d(ViewGroup viewGroup) {
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null) {
            sVar.d(viewGroup);
        }
    }

    @Override // com.bytedance.msdk.core.mn.ox
    public void d(com.bytedance.msdk.api.dq dqVar, com.bytedance.msdk.core.no.ox oxVar) {
        if (dqVar == null) {
            dqVar = new com.bytedance.msdk.api.dq(20005, com.bytedance.msdk.api.dq.dq(20005));
        }
        wp();
        if (!com.bytedance.msdk.ia.d.dq.dq(this.mn) || dqVar.dq != 10003) {
            ij();
        }
        if (this.s.get() || this.p.get()) {
            return;
        }
        this.s.set(true);
        p(dqVar);
        if (i_()) {
            dq(false);
            return;
        }
        StringBuilder sb = new StringBuilder();
        tn.h(sb, this.kk, "广告加载失败！给外部回调：invokeAdLoadFailCallbackOnMainUI...... error Code = ");
        sb.append(dqVar.dq);
        sb.append(" error Message = ");
        sb.append(dqVar.f756d);
        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", sb.toString());
        final com.bytedance.msdk.api.dq dq = jy.dq(this.no, dqVar, ds());
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.mn.s.4
            @Override // java.lang.Runnable
            public void run() {
                s.this.dq(dq);
            }
        });
    }

    @Override // com.bytedance.msdk.core.mn.ox
    public void d(com.bytedance.msdk.core.no.no noVar, int i) {
        if (noVar == null) {
            return;
        }
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "----------总超时后尝试从复用池中查找广告：id:" + noVar.cd() + "   loadSort:" + noVar.wp() + "  showSort:" + noVar.e() + "   adnName:" + noVar.jy());
        String cd = noVar.cd();
        if (noVar.r() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.kk, cd, i()) && com.bytedance.msdk.core.s.dq.dq.dq().dq(cd, this.no, true) == 3) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "----------可复用：id:" + noVar.cd() + "   loadSort:" + noVar.wp() + "  showSort:" + noVar.e() + "   adnName:" + noVar.jy());
            com.bytedance.msdk.core.s.dq.dq.dq().dq(this.kk, cd, noVar, i);
            List<ig> dq = com.bytedance.msdk.core.s.dq.dq.dq().dq(cd, this.no, i());
            if (dq == null || dq.size() <= 0) {
                return;
            }
            com.bytedance.msdk.d.s sVar = dq.get(0).dq;
            com.bytedance.msdk.api.dq.d dVar = this.no;
            int ia = sVar.ia(dVar != null ? dVar.dq() : null);
            com.bytedance.msdk.s.iw.dq(noVar, this.no, com.bytedance.msdk.core.s.dq.dq.dq().dq(cd), !i_(), 4, i, 3, ia, (com.bytedance.msdk.api.dq) null, -1L, this.er, true);
            ArrayList arrayList = new ArrayList();
            for (ig igVar : dq) {
                igVar.dq.o(3);
                igVar.dq.no(ia);
                igVar.dq.p(this.er);
                igVar.dq.ox(true);
                dq(igVar.dq, cd);
                arrayList.add(igVar.dq);
            }
            com.bytedance.msdk.s.iw.dq(dq.get(0).dq, 0, "adn cache命中", 0L, this.no, i, arrayList.size(), 4, (String) null, 0L, -1L);
            d((List<com.bytedance.msdk.d.s>) arrayList, true);
            com.bytedance.msdk.d.s sVar2 = (com.bytedance.msdk.d.s) arrayList.get(0);
            if (sVar2.w()) {
                this.r.addAll(arrayList);
                mn.dq(this.r, (Comparator<com.bytedance.msdk.d.s>) null);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    com.bytedance.msdk.d.s sVar3 = (com.bytedance.msdk.d.s) it.next();
                    StringBuilder sb = new StringBuilder();
                    tn.h(sb, this.kk, "复用池回溯成功...........回溯到了P层广告_当前P层广告缓存池数量：");
                    sb.append(this.r.size());
                    sb.append(",slotId：");
                    sb.append(sVar3.b());
                    sb.append(",广告类型：");
                    sb.append(sVar3.m());
                    sb.append(",loadSort=");
                    sb.append(sVar3.ae());
                    sb.append(",showSort=");
                    sb.append(sVar3.wq());
                    sb.append(",CPM=");
                    sb.append(sVar3.dk());
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb.toString());
                }
                return;
            }
            if (sVar2.jn()) {
                this.cd.addAll(arrayList);
                mn.dq(this.cd, (Comparator<com.bytedance.msdk.d.s>) null);
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    com.bytedance.msdk.d.s sVar4 = (com.bytedance.msdk.d.s) it2.next();
                    StringBuilder sb2 = new StringBuilder();
                    tn.h(sb2, this.kk, "复用池回溯成功...........回溯到了普通层广告_当前普通广告缓存池数量：");
                    sb2.append(this.cd.size());
                    sb2.append(",slotId：");
                    sb2.append(sVar4.b());
                    sb2.append(",广告类型：");
                    sb2.append(sVar4.m());
                    sb2.append(",loadSort=");
                    sb2.append(sVar4.ae());
                    sb2.append(",showSort=");
                    sb2.append(sVar4.wq());
                    sb2.append(",CPM=");
                    sb2.append(sVar4.dk());
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb2.toString());
                }
            }
        }
    }

    @Override // com.bytedance.msdk.core.mn.ox
    public final void d(final List<com.bytedance.msdk.d.s> list, final com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.core.no.d dVar = this.mn;
        if (dVar == null || !dVar.ig()) {
            return;
        }
        if (this.xz) {
            dqVar = new com.bytedance.msdk.api.dq(41044, com.bytedance.msdk.api.dq.dq(41044));
            list = null;
        }
        if (i_()) {
            return;
        }
        if (!n.dq(list)) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "单个广告加载完成！给外部回调：invokeSingleAdLoadCallbackUI......");
            for (com.bytedance.msdk.d.s sVar : list) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk, "fill") + "AdNetWorkName[" + sVar.m() + "] AdUnitId[" + sVar.b() + "]  请求成功 (loadSort=" + sVar.ae() + ",showSort=" + sVar.wq() + ")");
            }
        }
        if (dqVar != null) {
            StringBuilder sb = new StringBuilder();
            tn.h(sb, this.kk, "单个广告加载失败！给外部回调：invokeSingleAdLoadCallbackUI...... errorCode:");
            sb.append(dqVar.dq);
            sb.append("  errorMsg:");
            sb.append(dqVar.f756d);
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", sb.toString());
        }
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.mn.s.7
            @Override // java.lang.Runnable
            public void run() {
                s.this.dq(list, dqVar);
            }
        });
    }

    public void d(List<com.bytedance.msdk.d.s> list, com.bytedance.msdk.core.no.ox oxVar) {
    }

    public void d(List<com.bytedance.msdk.d.s> list, boolean z) {
        com.bytedance.msdk.d.s mn = mn(list);
        if (this.k.get()) {
            return;
        }
        this.ce = SystemClock.elapsedRealtime();
        com.bytedance.msdk.s.iw.dq(mn, this.no, this.mn, this.ce - this.cv, wn(), !i_(), list != null ? list.size() : 0, this.er, z);
        this.k.set(true);
    }

    public void dc() {
        List<com.bytedance.msdk.d.s> list;
        List<com.bytedance.msdk.d.s> list2;
        this.le.dq(true);
        o oVar = this.f963e;
        if (oVar != null) {
            oVar.iw = true;
        }
        if (this.p.get() || this.s.get()) {
            return;
        }
        List<com.bytedance.msdk.d.s> list3 = this.r;
        if ((list3 != null && list3.size() > 0) || (((list = this.cd) != null && list.size() > 0) || ((list2 = this.gh) != null && list2.size() > 0))) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "总加载时间超时.......有广告回调成功");
            n_();
            return;
        }
        if (com.bytedance.msdk.ia.d.dq.d(this.mn)) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "总加载时间超时.......isCallback:true");
            if (xz()) {
                return;
            }
        }
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "总加载时间超时.......没有广告回调失败");
        this.op = true;
        d(new com.bytedance.msdk.api.dq(AVMDLDataLoader.KeyIsStoRingBufferSizeKB, com.bytedance.msdk.api.dq.dq(AVMDLDataLoader.KeyIsStoRingBufferSizeKB)), (com.bytedance.msdk.core.no.ox) null);
    }

    @Override // com.bytedance.msdk.core.mn.ox
    public void dq(int i, boolean z) {
        if (this.p.get() || r()) {
            return;
        }
        if (i < this.fw.size()) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "层操作......开始执行index:" + i + "   层数：" + this.fw.get(i) + "  的config配置............");
        }
        if (this.xz) {
            tn.y(this.kk, "层操作......已经调用destroy方法，不再继续广告请求", "TTMediationSDK", new StringBuilder());
            return;
        }
        if (i >= this.fw.size() || this.le.s(this.fw.get(i).intValue())) {
            if (this.le.mn()) {
                if (this.r.size() > 0 || this.cd.size() > 0 || this.gh.size() > 0) {
                    com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "层操作......所有广告已经加载完成，且有广告返回.......invokeAdLoadedOnMSDKThread");
                    if (h()) {
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "存在client bidding且满足触发成功回调的条件，则给出成功回调.....");
                        n_();
                    }
                } else {
                    com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "层操作......所有广告已经加载完成，且无广告返回.......");
                    d(new com.bytedance.msdk.api.dq(20005, com.bytedance.msdk.api.dq.dq(20005)), (com.bytedance.msdk.core.no.ox) null);
                }
            }
            if (z) {
                tn.y(this.kk, "层操作......该层广告已经加载过，isFromFailCallback为true.......", "TTMediationSDK", new StringBuilder());
                return;
            } else if (i >= this.fw.size()) {
                tn.y(this.kk, "层操作......idx下标越界.......", "TTMediationSDK", new StringBuilder());
                return;
            } else if (this.fw.get(i).intValue() == -100 && u()) {
                tn.y(this.kk, "层操作......该层广告已经加载过,p层和clientBidding多阶底价广告并行的情况下，P层已经执行完且全部请求失败,不用请求下一层.......", "TTMediationSDK", new StringBuilder());
                return;
            }
        }
        Integer num = this.fw.get(i);
        int intValue = num.intValue();
        if (this.le.s(intValue)) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "层操作......index:" + i + "   层数：" + this.fw.get(i) + "的广告已经加载过了，开始执行下一层............");
            dq(i + 1, false);
            return;
        }
        if (intValue < -100) {
            tn.y(this.kk, "层操作......开始执行P层广告............", "TTMediationSDK", new StringBuilder());
        } else if (intValue == -100) {
            tn.y(this.kk, "层操作......开始执行ClientBidding和多阶底价层广告............", "TTMediationSDK", new StringBuilder());
        } else if (intValue == 0) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "层操作......开始执行serverBidding层广告............hasServerBidding: " + op());
        } else {
            tn.y(this.kk, "层操作......开始执行普通层广告............", "TTMediationSDK", new StringBuilder());
        }
        if (intValue == 0 && op() && !this.le.ia()) {
            this.le.d(true);
            if (iw(intValue)) {
                d(new com.bytedance.msdk.api.dq("渲染类型错误"), (com.bytedance.msdk.core.no.ox) null);
                return;
            } else {
                ox(this.ia.get(num));
                d(i, false);
                return;
            }
        }
        if (intValue < -100) {
            this.ds = intValue;
        } else {
            this.v = intValue;
        }
        this.le.iw(intValue);
        this.le.dq(intValue, true);
        if (!mn(intValue)) {
            dq(i + 1, false);
            return;
        }
        if (intValue == -100 || intValue == 0) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "层操作......ClientBidding,ServerBidding ,普通广告同时发起请求............");
            dq(i + 1, false);
        }
    }

    public void dq(Message message) {
        List<com.bytedance.msdk.d.s> list;
        List<com.bytedance.msdk.d.s> list2;
        int i = message.what;
        if (i == 1) {
            if (op() && !c()) {
                StringBuilder sb = new StringBuilder();
                tn.h(sb, this.kk, "当前层超时....server Bidding 还没有接口返回，尝试执行下层(不一定执行)....mTTCommonAdPoolList.size()=");
                sb.append(this.cd.size());
                com.bytedance.msdk.dq.s.ox.ox("TTMediationSDK", sb.toString());
                dq(ia(this.v), false);
                return;
            }
            if (!by()) {
                StringBuilder sb2 = new StringBuilder();
                tn.h(sb2, this.kk, "当前层超时....普通广告池没广告或者数量不达标,尝试执行下层(不一定执行)....mTTCommonAdPoolList.size()=");
                sb2.append(this.cd.size());
                com.bytedance.msdk.dq.s.ox.ox("TTMediationSDK", sb2.toString());
                dq(ia(this.v), false);
                return;
            }
            StringBuilder sb3 = new StringBuilder();
            tn.h(sb3, this.kk, "当前层超时....广告池已有广告不执行下层....mTTCommonAdPoolList.size()=");
            sb3.append(this.cd.size());
            com.bytedance.msdk.dq.s.ox.ox("TTMediationSDK", sb3.toString());
            if (h()) {
                StringBuilder sb4 = new StringBuilder();
                tn.h(sb4, this.kk, "当前层超时....广告池已有广告不执行下层且满足client bidding的返回条件....mTTCommonAdPoolList.size()=");
                sb4.append(this.cd.size());
                com.bytedance.msdk.dq.s.ox.ox("TTMediationSDK", sb4.toString());
                n_();
                return;
            }
            return;
        }
        if (i == 2) {
            dc();
            return;
        }
        if (i == 3) {
            jw();
            return;
        }
        if (i == 4) {
            if (gx()) {
                StringBuilder sb5 = new StringBuilder();
                tn.h(sb5, this.kk, "当前层超时....广告池已有P层类型广告不执行下层....mTTPAdPoolList.size()=");
                sb5.append(this.r.size());
                com.bytedance.msdk.dq.s.ox.ox("TTMediationSDK", sb5.toString());
                n_();
                return;
            }
            StringBuilder sb6 = new StringBuilder();
            tn.h(sb6, this.kk, "当前层超时....P层广告池没广告或者数量不达标尝试执行下层(不一定执行)....mTTPAdPoolList.size()=");
            sb6.append(this.r.size());
            com.bytedance.msdk.dq.s.ox.ox("TTMediationSDK", sb6.toString());
            dq(ia(this.ds), false);
            return;
        }
        if (i != 5) {
            return;
        }
        this.kx.set(true);
        if (op() && c()) {
            if (by()) {
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "SeverBidding广告返回且到达ClientBidding的等待时间，广告池中的广告数量满足...直接返回......");
                n_();
            }
            if (this.le.dq() || !this.le.mn()) {
                return;
            }
            tn.y(this.kk, "所有广告都已经加载完成....... ", "TTMediationSDK", new StringBuilder());
            List<com.bytedance.msdk.d.s> list3 = this.r;
            if ((list3 == null || list3.size() <= 0) && (((list = this.cd) == null || list.size() <= 0) && ((list2 = this.gh) == null || list2.size() <= 0))) {
                d(new com.bytedance.msdk.api.dq(20005, com.bytedance.msdk.api.dq.dq(20005)), (com.bytedance.msdk.core.no.ox) null);
                return;
            }
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "SeverBidding广告返回且到达ClientBidding的等待时间，所有广告都有返回结果...直接返回......");
            n_();
        }
    }

    public void dq(ViewGroup viewGroup, Activity activity) {
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null) {
            sVar.dq(viewGroup, activity);
        }
    }

    public abstract void dq(com.bytedance.msdk.api.dq dqVar);

    public void dq(com.bytedance.msdk.api.dq dqVar, com.bytedance.msdk.core.no.ox oxVar) {
        s sVar;
        List<com.bytedance.msdk.d.s> list;
        List<com.bytedance.msdk.d.s> list2;
        com.bytedance.msdk.api.dq.d dVar;
        if (this.o == null || oxVar == null) {
            return;
        }
        d((List<com.bytedance.msdk.d.s>) null, dqVar);
        if (dqVar != null) {
            sVar = this;
            sVar.dq(oxVar.mp(), oxVar.no(), oxVar.ig(), com.bytedance.msdk.d.dq.dq(oxVar.d(), oxVar.dq()), dqVar.ox, dqVar.p);
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(sVar.kk) + "广告加载失败...........adnName:" + oxVar.no() + " ,slotId:" + oxVar.mp() + ",slotType:" + oxVar.ia() + ",loadSort:" + oxVar.kk() + ",showSort:" + oxVar.o() + " ，adError:" + dqVar.toString());
        } else {
            sVar = this;
        }
        mn.dq(dqVar, oxVar);
        if (oxVar.ia() == 0 && s(oxVar.mp())) {
            return;
        }
        sVar.le.dq(oxVar.mp());
        sVar.le.ox(oxVar.kk());
        if (oxVar.s() || oxVar.p()) {
            sVar.le.ox();
            fd();
        }
        if (oxVar.ox() && by()) {
            if (sVar.r.size() >= t()) {
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(sVar.kk) + "SeverBidding广告有返回结果时P层池中有广告直接返回......");
                n_();
                return;
            }
            Iterator<com.bytedance.msdk.d.s> it = sVar.cd.iterator();
            while (it.hasNext()) {
                if (dq(it.next()) && h()) {
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(sVar.kk) + "SeverBidding广告有返回结果且满足ClientBidding等待时间时普通池中有广告直接返回......");
                    n_();
                    return;
                }
            }
        }
        if (sVar.p.get() || r()) {
            return;
        }
        List<com.bytedance.msdk.d.s> list3 = sVar.r;
        if ((list3 == null || list3.size() <= 0) && (((list = sVar.cd) == null || list.size() <= 0) && ((list2 = sVar.gh) == null || list2.size() <= 0))) {
            if (!sVar.le.dq() && sVar.le.mn() && (dVar = sVar.no) != null && !TextUtils.isEmpty(com.bytedance.msdk.core.fw.dq.dq(dVar.ce()))) {
                d(dqVar, oxVar);
                return;
            }
        } else if (!sVar.le.dq() && sVar.le.mn() && h()) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(sVar.kk) + "当前广告池中有广告且满足client bididing的返回条件...给出成功回调...");
            n_();
            return;
        }
        if (!dq(oxVar) && sVar.le.p(oxVar.kk()) == 0) {
            int ia = ia(oxVar.kk());
            com.bytedance.msdk.dq.s.ox.ox("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(sVar.kk) + "onAdFailed--》 加载下一层-nextIdx=" + ia);
            if (ia < sVar.fw.size() && !sVar.le.s(sVar.fw.get(ia).intValue())) {
                if (oxVar.iw()) {
                    Handler handler = sVar.o;
                    if (handler != null) {
                        handler.removeMessages(4);
                    }
                } else {
                    Handler handler2 = sVar.o;
                    if (handler2 != null) {
                        handler2.removeMessages(1);
                    }
                }
            }
            dq(ia, true);
        }
        if (sVar.le.dq() || sVar.le.mn()) {
            if (!(sVar.le.dq() && com.bytedance.msdk.ia.d.dq.dq(sVar.mn)) && h()) {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(sVar.kk) + "所有广告都加载失败....");
                d(new com.bytedance.msdk.api.dq(20005, com.bytedance.msdk.api.dq.dq(20005)), oxVar);
            }
        }
    }

    public void dq(com.bytedance.msdk.api.p.dq.d dVar) {
        this.ws = dVar;
    }

    public void dq(com.bytedance.msdk.core.no.no noVar) {
        if (noVar == null) {
            return;
        }
        this.le.dq(noVar.cd());
        this.le.ox(noVar.wp());
        if (noVar.u() || noVar.op()) {
            this.le.ox();
            fd();
        }
    }

    public void dq(com.bytedance.msdk.core.no.no noVar, int i, int i2) {
        if (noVar != null) {
            dq(noVar);
            noVar.ia(wn());
            com.bytedance.msdk.s.iw.dq(noVar, this.no, i, i2);
        }
    }

    @Override // com.bytedance.msdk.dq.dq.InterfaceC0063dq
    public void dq(com.bytedance.msdk.d.s sVar, com.bytedance.msdk.core.no.ox oxVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(sVar);
        dq(arrayList, oxVar);
    }

    public void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar) {
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null) {
            sVar.dq(oxVar);
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null) {
            sVar.dq(dVar);
        }
    }

    public void dq(String str, String str2, String str3, String str4, int i, String str5) {
        com.bytedance.msdk.api.d dVar = this.ox.get(str);
        if (dVar == null) {
            dVar = new com.bytedance.msdk.api.d();
        }
        dVar.d(str).ox(str2).p(str3).dq(i).s(str5).dq(str4);
        this.ox.put(str, dVar);
    }

    public void dq(String str, AtomicBoolean atomicBoolean) {
        if (i_()) {
            return;
        }
        com.bytedance.msdk.core.no.ox oxVar = new com.bytedance.msdk.core.no.ox();
        oxVar.p(-1);
        oxVar.s(-1);
        if (com.bytedance.msdk.core.dq.d().ox(str, gh())) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "settings config.......AdUnitId = " + str + "  暂无config配置信息");
            d(new com.bytedance.msdk.api.dq(840040, com.bytedance.msdk.api.dq.dq(840040)), oxVar);
        } else {
            d(new com.bytedance.msdk.api.dq(44406, "广告位ID不合法"), oxVar);
        }
        com.bytedance.msdk.core.f.d.dq(com.bytedance.msdk.core.dq.d()).d(1);
    }

    @Override // com.bytedance.msdk.core.mn.ox
    public final void dq(final String str, JSONObject jSONObject) {
        com.bytedance.msdk.s.iw.dq(this.no, this.mn.gx(), jSONObject);
        com.bytedance.msdk.dq.s.iw.p(new Runnable() { // from class: com.bytedance.msdk.core.mn.s.5
            @Override // java.lang.Runnable
            public void run() {
                s.this.dq(str);
            }
        });
    }

    public void dq(List<com.bytedance.msdk.d.s> list, com.bytedance.msdk.core.no.d dVar) {
        com.bytedance.msdk.core.o.p.dq(list, dVar);
        com.bytedance.msdk.core.d.dq.dq(list, dVar);
    }

    public void dq(List<com.bytedance.msdk.d.s> list, com.bytedance.msdk.core.no.ox oxVar) {
        if (this.o == null || oxVar == null) {
            return;
        }
        dq(list, this.mn);
        dq(oxVar.mp(), oxVar.no(), oxVar.ig(), com.bytedance.msdk.d.dq.dq(oxVar.d(), oxVar.dq()), 0, "广告加载成功");
        mn.dq(this.kk, oxVar, !n.d(list) ? list.get(0) : null);
        ox(list, oxVar);
        if (oxVar.ia() == 0 && !n.d(list)) {
            String b2 = list.get(0).b();
            if (s(b2)) {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "返回的普通广告被server Bidding过滤了......slotId:" + b2);
                return;
            }
        }
        this.le.dq(oxVar.mp());
        if (i_()) {
            d(list, oxVar);
        }
        s(list);
        d(list, false);
        if (this.p.get() || r()) {
            return;
        }
        if (!n.d(list) && list.get(0).w() && gx()) {
            com.bytedance.msdk.d.s sVar = list.get(0);
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "P层广告已经成功返回loadSort:" + sVar.ae() + " ,showSort:" + sVar.ae() + "  mTTPAdPoolList.size:" + this.r.size());
            n_();
            return;
        }
        if (((!op() && !ir()) || (op() && c())) && !n.d(list) && dq(list.get(0)) && by()) {
            com.bytedance.msdk.d.s sVar2 = list.get(0);
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "普通广告当前层优先级最高的广告已经成功返回loadSort:" + sVar2.ae() + " ,showSort:" + sVar2.wq() + "  mTTCommonAdPoolList.size:" + this.cd.size());
            if (h()) {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "满足广告的返回条件...直接返回...");
                n_();
                return;
            }
            return;
        }
        if (oxVar.ox() && by()) {
            if (this.r.size() >= t()) {
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "SeverBidding广告有返回时P层池中有广告直接返回......");
                n_();
                return;
            }
            Iterator<com.bytedance.msdk.d.s> it = this.cd.iterator();
            while (it.hasNext()) {
                if (dq(it.next()) && h()) {
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "SeverBidding广告有返回且满足ClientBidding等待时间时普通池中有广告直接返回......");
                    n_();
                    return;
                }
            }
        }
        if (this.le.mn() && h()) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "所有层级和所有waterfall都已完成且满足ClientBidding等待时间直接回调...");
            n_();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x028e  */
    @Override // com.bytedance.msdk.core.mn.ox
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean dq(com.bytedance.msdk.core.no.no noVar, int i) {
        int i2;
        List<ig> dq;
        if (noVar != null && this.no != null) {
            dq(noVar.cd(), noVar.jy(), noVar.f(), com.bytedance.msdk.d.dq.dq(this.no.le(), noVar.iw()), 0, "广告请求中");
        }
        int i3 = 1;
        if (noVar != null) {
            if (!com.bytedance.msdk.core.kk.no.dq().ox(this.kk, noVar.cd())) {
                com.bytedance.msdk.dq.s.ox.dq("TMe", "adn 请求触发次数拦截............");
                dq(noVar);
                Pair<String, String> dq2 = com.bytedance.msdk.core.kk.no.dq().dq(this.kk, noVar.cd());
                if (dq2 != null) {
                    com.bytedance.msdk.api.d.d dVar = new com.bytedance.msdk.api.d.d(41041, com.bytedance.msdk.api.dq.dq(41041), (String) dq2.second, (String) dq2.first);
                    com.bytedance.msdk.s.iw.dq(noVar, this.no, com.bytedance.msdk.core.s.dq.dq.dq().dq(noVar.cd()), !i_(), 2, i, 1, 1, (com.bytedance.msdk.api.dq) dVar, -1L, this.er, false);
                    com.bytedance.msdk.s.iw.dq(dVar, this.no, noVar, i, 1, 1, com.bytedance.msdk.core.s.dq.dq.dq().dq(noVar.cd()), 0L, (String) null, (String) null, (String) null, 0L);
                }
                return false;
            }
            if (!com.bytedance.msdk.core.kk.ig.dq().ox(this.kk, noVar.cd())) {
                com.bytedance.msdk.dq.s.ox.dq("TMe", "adn 请求触发时间间隔拦截............");
                dq(noVar);
                kk p = com.bytedance.msdk.core.kk.ig.dq().p(this.kk, noVar.cd());
                if (p != null) {
                    String dq3 = com.bytedance.msdk.api.dq.dq(41042);
                    StringBuilder sb = new StringBuilder();
                    sb.append(com.bytedance.msdk.core.kk.ig.dq().dq(this.kk, noVar.cd()));
                    com.bytedance.msdk.api.d.ox oxVar = new com.bytedance.msdk.api.d.ox(41042, dq3, sb.toString(), p.o());
                    com.bytedance.msdk.s.iw.dq(noVar, this.no, com.bytedance.msdk.core.s.dq.dq.dq().dq(noVar.cd()), !i_(), 2, i, 1, 1, (com.bytedance.msdk.api.dq) oxVar, -1L, this.er, false);
                    com.bytedance.msdk.s.iw.dq(oxVar, this.no, noVar, i, 1, 1, com.bytedance.msdk.core.s.dq.dq.dq().dq(noVar.cd()), 0L, (String) null, (String) null, (String) null, 0L);
                }
                return false;
            }
            if (!com.bytedance.msdk.core.kk.ox.dq().dq(noVar.jy(), noVar.cd())) {
                com.bytedance.msdk.dq.s.ox.dq("TMe", "adn 请求触发了错误码拦截............");
                com.bytedance.msdk.api.d.dq dqVar = new com.bytedance.msdk.api.d.dq(40044, com.bytedance.msdk.api.dq.dq(40044));
                com.bytedance.msdk.s.iw.dq(noVar, this.no, com.bytedance.msdk.core.s.dq.dq.dq().dq(noVar.cd()), !i_(), 2, i, 1, 1, (com.bytedance.msdk.api.dq) dqVar, -1L, this.er, false);
                dq(noVar);
                com.bytedance.msdk.s.iw.dq(dqVar, this.no, noVar, i, 1, 1, com.bytedance.msdk.core.s.dq.dq.dq().dq(noVar.cd()), 0L, (String) null, (String) null, (String) null, 0L);
                return false;
            }
        }
        if (noVar != null) {
            String cd = noVar.cd();
            if (noVar.r() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.kk, cd, i())) {
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 广告复用，模式：" + com.bytedance.msdk.core.s.dq.dq.dq().s(this.kk, cd, i()));
                int dq4 = com.bytedance.msdk.core.s.dq.dq.dq().dq(cd, this.no, true);
                if (dq4 == 3) {
                    if (dq(cd, noVar, i)) {
                        return true;
                    }
                } else if (dq4 == 2 && (dq = com.bytedance.msdk.core.s.dq.dq.dq().dq(cd, this.no, i())) != null && dq.size() > 0) {
                    com.bytedance.msdk.d.s sVar = dq.get(0).dq;
                    com.bytedance.msdk.api.dq.d dVar2 = this.no;
                    i2 = sVar.ia(dVar2 != null ? dVar2.dq() : null);
                    i3 = dq4;
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    if (noVar != null) {
                        noVar.ia(wn());
                    }
                    if (noVar == null) {
                        dq(noVar, i3, i2);
                        return false;
                    }
                    com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "开始 某一层级的waterFallConfig请求 WaterFallConfig:" + noVar.toString());
                    return !com.bytedance.msdk.core.dq.d().ox(noVar.jy()) ? d(i3, i2, noVar, i, elapsedRealtime) : dq(i3, i2, noVar, i, elapsedRealtime);
                }
                i3 = dq4;
                i2 = 1;
                long elapsedRealtime2 = SystemClock.elapsedRealtime();
                if (noVar != null) {
                }
                if (noVar == null) {
                }
            }
        }
        i2 = 1;
        long elapsedRealtime22 = SystemClock.elapsedRealtime();
        if (noVar != null) {
        }
        if (noVar == null) {
        }
    }

    public boolean dq(com.bytedance.msdk.core.no.ox oxVar) {
        if (oxVar == null) {
            return false;
        }
        return oxVar.p() || oxVar.s() || oxVar.ox();
    }

    public List<com.bytedance.msdk.api.d> ds() {
        com.bytedance.msdk.api.d value;
        ArrayList arrayList = new ArrayList(this.ox.size());
        for (Map.Entry<String, com.bytedance.msdk.api.d> entry : this.ox.entrySet()) {
            if (entry != null && (value = entry.getValue()) != null && !TextUtils.equals("广告加载成功", value.iw()) && !TextUtils.equals("广告请求中", value.iw())) {
                arrayList.add(value);
            }
        }
        return arrayList;
    }

    public void fd() {
        List<com.bytedance.msdk.d.s> list;
        List<com.bytedance.msdk.d.s> list2;
        if (this.le.d() != 0 || this.kx.get()) {
            return;
        }
        this.o.removeMessages(5);
        if (op() && c()) {
            if (by()) {
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "SeverBidding广告成功返回...所有的ClientBidding都有返回结果且没有到达其层超时...当前广告池中广告数量满足要求...直接返回......");
                n_();
            }
            if (this.le.dq() || !this.le.mn()) {
                return;
            }
            tn.y(this.kk, "所有广告都已经加载完成....... ", "TTMediationSDK", new StringBuilder());
            List<com.bytedance.msdk.d.s> list3 = this.r;
            if ((list3 == null || list3.size() <= 0) && (((list = this.cd) == null || list.size() <= 0) && ((list2 = this.gh) == null || list2.size() <= 0))) {
                d(new com.bytedance.msdk.api.dq(20005, com.bytedance.msdk.api.dq.dq(20005)), (com.bytedance.msdk.core.no.ox) null);
                return;
            }
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "SeverBidding广告返回且到达ClientBidding的等待时间，所有广告都有返回结果...直接返回......");
            n_();
        }
    }

    public List<com.bytedance.msdk.core.no.no> h_() {
        boolean z;
        ArrayList arrayList = new ArrayList();
        if (this.xz) {
            return arrayList;
        }
        List<Integer> list = this.fw;
        int i = 0;
        if (list == null || list.size() <= 0) {
            z = false;
        } else {
            int i2 = 0;
            z = false;
            while (i < list.size()) {
                Integer num = list.get(i);
                int intValue = num.intValue();
                if (intValue == -100) {
                    i2 = 1;
                }
                if (intValue < -100) {
                    z = true;
                }
                if (this.ia.get(num) != null) {
                    arrayList.addAll(this.ia.get(num));
                }
                i++;
            }
            i = i2;
        }
        if (i == 0 && ir() && !n.d(this.gh)) {
            for (com.bytedance.msdk.d.s sVar : this.gh) {
                if (this.mn != null && (sVar.jv() || sVar.xx())) {
                    com.bytedance.msdk.core.no.no iw = this.mn.iw(sVar.b());
                    if (iw != null) {
                        arrayList.add(iw);
                    }
                }
            }
        }
        if (!z) {
            List<com.bytedance.msdk.core.no.no> bl = bl();
            if (!n.dq(bl)) {
                arrayList.addAll(bl);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (((com.bytedance.msdk.core.no.no) it.next()) == null) {
                it.remove();
            }
        }
        if (op() || ir()) {
            return ia(arrayList);
        }
        Collections.sort(arrayList, this.pa);
        return arrayList;
    }

    public void ha() {
        com.bytedance.msdk.api.dq.d d2 = com.bytedance.msdk.core.s.d.p.dq().d(this.kk);
        final int d3 = com.bytedance.msdk.core.s.d.p.dq().d(this.kk, i());
        if (d2 != null) {
            this.no.dq(d2.dq());
            this.no.d(d2.ox());
            if (d3 == 3 || d3 == 4) {
                this.no.dq(d2.no());
            }
        }
        com.bytedance.msdk.core.s.d.p.dq().dq(this.kk, this.no);
        s(0);
        com.bytedance.msdk.d.s sVar = null;
        d((List<com.bytedance.msdk.d.s>) null, false);
        com.bytedance.msdk.core.s.d.d ox = com.bytedance.msdk.core.s.d.p.dq().ox(this.kk);
        if (ox != null) {
            this.ox = ox.s();
            if (ox instanceof com.bytedance.msdk.core.s.d.s) {
                this.f963e = ((com.bytedance.msdk.core.s.d.s) ox).f963e;
            }
        }
        if (d3 == 2) {
            this.z = 1;
            n_();
            return;
        }
        if (d3 != 3 && d3 != 4) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 预缓存reqType错误：reqType = " + d3);
            return;
        }
        if (this.no.ia() == 1) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 激励再得情况，不进行预缓存补充，直接对外给出回调");
            this.z = 2;
            n_();
            return;
        }
        long iw = com.bytedance.msdk.core.s.d.p.iw(this.kk);
        long currentTimeMillis = System.currentTimeMillis() - iw;
        if (iw != -1 && currentTimeMillis < this.mn.p()) {
            StringBuilder l = awf.l(currentTimeMillis, "--==-- 预缓存补充请求无需发起，时间间隔不够，interval：", ", config interval: ");
            l.append(this.mn.p());
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", l.toString());
            this.z = 3;
            n_();
            return;
        }
        List<com.bytedance.msdk.d.s> l2 = l();
        if (l2 != null && l2.size() > 0) {
            sVar = l2.get(0);
        }
        com.bytedance.msdk.d.s sVar2 = sVar;
        final double no = no();
        if (sVar2 != null && !sVar2.w() && sVar2.dk() < no) {
            com.bytedance.msdk.core.s.d.p.dq().dq(this.l.get(), this.kk, d3, this.no, sVar2, new p.ox() { // from class: com.bytedance.msdk.core.mn.s.14
                @Override // com.bytedance.msdk.core.s.d.p.ox
                public void dq(String str, boolean z, int i, List<com.bytedance.msdk.d.s> list) {
                    s.this.dq(str, z, i, list, d3, no);
                }
            });
            return;
        }
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 预缓存补充请求无需发起，已经命中最优");
        this.z = 4;
        n_();
    }

    public int ia(int i) {
        List<Integer> list = this.fw;
        if (list == null) {
            return -1;
        }
        return list.indexOf(Integer.valueOf(i)) + 1;
    }

    public void ia() {
        com.bytedance.msdk.api.dq.d dVar = this.no;
        if (dVar != null) {
            dVar.dq(this.u);
        }
        final boolean op = com.bytedance.msdk.core.dq.d().op();
        final StackTraceElement[] stackTrace = op ? Thread.currentThread().getStackTrace() : null;
        com.bytedance.msdk.dq.s.iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.mn.s.15
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.msdk.core.f.ox oxVar;
                s.this.cv = SystemClock.elapsedRealtime();
                if (!com.bytedance.msdk.iw.ox.d()) {
                    tn.y(s.this.kk, "MSDK未进行初始化！！！", "TTMediationSDK", new StringBuilder());
                    s.this.s(1);
                    s.this.d(new com.bytedance.msdk.api.d.dq(1, com.bytedance.msdk.api.dq.dq(1)), (com.bytedance.msdk.core.no.ox) null);
                    return;
                }
                if (s.this.xz) {
                    com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "调用过销毁方法_destroy()！！！");
                    s.this.s(41044);
                    s.this.d(new com.bytedance.msdk.api.d.dq(41044, com.bytedance.msdk.api.dq.dq(41044)), (com.bytedance.msdk.core.no.ox) null);
                    return;
                }
                if (s.this.l.get() == null) {
                    com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "Context为null！！！");
                    s.this.s(41005);
                    s.this.d(new com.bytedance.msdk.api.d.dq(41005, com.bytedance.msdk.api.dq.dq(41005)), (com.bytedance.msdk.core.no.ox) null);
                    return;
                }
                s sVar = s.this;
                if (sVar.no == null) {
                    tn.y(s.this.kk, "AdSlot can't be null！！", "TTMediationSDK", new StringBuilder());
                    s.this.s(840026);
                    s.this.d(new com.bytedance.msdk.api.d.dq(840026, com.bytedance.msdk.api.dq.dq(840026)), (com.bytedance.msdk.core.no.ox) null);
                    return;
                }
                if (TextUtils.isEmpty(sVar.kk)) {
                    tn.y(s.this.kk, "广告位id不能为空", "TTMediationSDK", new StringBuilder());
                    s.this.s(840026);
                    s.this.d(new com.bytedance.msdk.api.d.dq(840026, "广告位id不能为空"), (com.bytedance.msdk.core.no.ox) null);
                    return;
                }
                s sVar2 = s.this;
                if (sVar2.o == null) {
                    tn.y(s.this.kk, "msdk threadHandler can't be null！！", "TTMediationSDK", new StringBuilder());
                    s.this.s(41043);
                    s.this.d(new com.bytedance.msdk.api.d.dq(41043, com.bytedance.msdk.api.dq.dq(41043)), (com.bytedance.msdk.core.no.ox) null);
                    return;
                }
                if (sVar2.mn == null && (oxVar = sVar2.ob) != null) {
                    sVar2.mn = oxVar.dq(sVar2.kk, sVar2.gh(), 100);
                    s.this.v();
                }
                String vf = s.this.no.vf();
                if (!TextUtils.isEmpty(vf) && !com.bytedance.msdk.ox.mn.ox.dq(s.this.kk, vf)) {
                    com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(s.this.kk) + "csj code id " + vf + " mapping mediation rit " + s.this.kk + "  has request");
                    s.this.s(840044);
                    s.this.d(new com.bytedance.msdk.api.d.dq(840044, "本次请求未包含聚合广告位头层设价最高的代码位，导致聚合请求失败；请调整请求，确保包含聚合广告位头层设价最高的代码位。"), (com.bytedance.msdk.core.no.ox) null);
                    return;
                }
                s sVar3 = s.this;
                sVar3.no.dq(sVar3.mn);
                s.this.no.kk();
                s.this.by = true;
                s.this.ws();
                if (dq.dq().d()) {
                    tn.y(s.this.kk, "请求过于频繁，触发了熔断机制", "TTMediationSDK", new StringBuilder());
                    s.this.s(840043);
                    s.this.d(new com.bytedance.msdk.api.d.dq(840043, com.bytedance.msdk.api.dq.dq(840043)), (com.bytedance.msdk.core.no.ox) null);
                    return;
                }
                s.this.l_();
                s sVar4 = s.this;
                com.bytedance.msdk.core.no.d dVar2 = sVar4.mn;
                if (dVar2 == null) {
                    if (sVar4.no.le() == 3 && !com.bytedance.msdk.core.dq.d().ji() && s.this.ha != null) {
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "执行开启开屏兜底...............");
                        s.this.bu();
                        return;
                    }
                    if (s.this.ob == null || com.bytedance.msdk.mn.dq.dq.jy().mp()) {
                        StringBuilder sb = new StringBuilder();
                        tn.h(sb, s.this.kk, "settings config.......没有settings config配置信息,AdUnitId = ");
                        sb.append(s.this.no.k());
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", sb.toString());
                        s.this.s(40045);
                        com.bytedance.msdk.s.iw.d(s.this.no, 1);
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        tn.h(sb2, s.this.kk, "settings config.......注意，AdUnitId = ");
                        sb2.append(s.this.no.k());
                        sb2.append(" 的配置信息为 null ！！");
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", sb2.toString());
                        s.this.s(40045);
                        com.bytedance.msdk.s.iw.d(s.this.no, 2);
                    }
                    s sVar5 = s.this;
                    sVar5.dq(sVar5.kk, sVar5.vw);
                    mn.s();
                    return;
                }
                sVar4.ia = dVar2.kx();
                s.this.fw = new ArrayList(s.this.mn.u());
                d.dq(s.this.fw);
                com.bytedance.msdk.core.f.ox d2 = com.bytedance.msdk.core.dq.d();
                s sVar6 = s.this;
                if (!d2.d(sVar6.kk, sVar6.gh()) || s.this.mn.u() == null || s.this.mn.u().size() == 0 || s.this.mn.kx() == null || s.this.mn.kx().size() == 0) {
                    StringBuilder sb3 = new StringBuilder();
                    tn.h(sb3, s.this.kk, "settings config.......注意，AdUnitId = ");
                    sb3.append(s.this.no.k());
                    sb3.append("  没有对应的waterfall配置信息");
                    com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", sb3.toString());
                    com.bytedance.msdk.s.iw.d(s.this.no, 3);
                    s.this.s(40045);
                    s sVar7 = s.this;
                    sVar7.dq(sVar7.kk, sVar7.vw);
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis();
                boolean ia = mp.dq().ia(s.this.kk);
                s.this.dq("check_freqctl_time", System.currentTimeMillis() - currentTimeMillis);
                if (!ia) {
                    com.bytedance.msdk.dq.s.ox.dq("TMe", "广告位 请求触发次数拦截............");
                    com.bytedance.msdk.core.kk.mn o = mp.dq().o(s.this.kk);
                    Pair<String, String> iw = mp.dq().iw(s.this.kk);
                    if (o == null || iw == null) {
                        return;
                    }
                    com.bytedance.msdk.api.d.d dVar3 = new com.bytedance.msdk.api.d.d(840041, com.bytedance.msdk.api.dq.dq(840041), (String) iw.second, (String) iw.first);
                    s.this.s(dVar3.dq);
                    s.this.d(dVar3, (com.bytedance.msdk.core.no.ox) null);
                    return;
                }
                long currentTimeMillis2 = System.currentTimeMillis();
                boolean ox = mp.dq().ox(s.this.kk);
                s.this.dq("check_pacing_time", System.currentTimeMillis() - currentTimeMillis2);
                if (!ox && !s.this.i_()) {
                    com.bytedance.msdk.dq.s.ox.dq("TMe", "广告位 请求触发时间间隔拦截............");
                    kk s = mp.dq().s(s.this.kk);
                    if (s != null) {
                        String dq = com.bytedance.msdk.api.dq.dq(840042);
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(mp.dq().dq(s.this.kk));
                        com.bytedance.msdk.api.d.ox oxVar2 = new com.bytedance.msdk.api.d.ox(840042, dq, sb4.toString(), s.o());
                        s.this.s(oxVar2.dq);
                        s.this.d(oxVar2, (com.bytedance.msdk.core.no.ox) null);
                        return;
                    }
                    return;
                }
                com.bytedance.msdk.core.s.d.p dq2 = com.bytedance.msdk.core.s.d.p.dq();
                s sVar8 = s.this;
                if (dq2.ox(sVar8.kk, sVar8.i())) {
                    boolean z = com.bytedance.msdk.core.s.d.p.dq().dq(s.this.kk) == null;
                    if (!s.this.i_() && !z && s.this.vw()) {
                        s sVar9 = s.this;
                        sVar9.dc = true;
                        sVar9.ha();
                        return;
                    } else {
                        com.bytedance.msdk.core.s.d.p dq3 = com.bytedance.msdk.core.s.d.p.dq();
                        s sVar10 = s.this;
                        dq3.dq(sVar10.kk, sVar10.no);
                    }
                }
                s sVar11 = s.this;
                com.bytedance.msdk.core.no.d dq4 = com.bytedance.msdk.core.ox.ox.dq(sVar11.no, sVar11.mn);
                if (dq4 != null) {
                    s.this.mn = dq4;
                    com.bytedance.msdk.dq.s.ox.d("TMe", "prime rit type " + s.this.no.ox());
                    if (s.this.no.ox() == 2 || s.this.no.ox() == 4 || s.this.no.ox() == 5) {
                        com.bytedance.msdk.core.s.d.p dq5 = com.bytedance.msdk.core.s.d.p.dq();
                        s sVar12 = s.this;
                        dq5.dq(sVar12.kk, sVar12.no);
                    }
                    if (s.this.mn.t() == null || s.this.mn.t().size() == 0) {
                        s.this.s(810085);
                        s.this.p(new com.bytedance.msdk.api.dq(810085, com.bytedance.msdk.api.dq.dq(810085)));
                        return;
                    }
                }
                String dq6 = com.bytedance.msdk.core.fw.dq.dq(s.this.no.ce());
                if (!TextUtils.isEmpty(dq6)) {
                    s.this.le();
                    s sVar13 = s.this;
                    sVar13.mn = com.bytedance.msdk.core.fw.dq.dq(sVar13.mn, dq6);
                    com.bytedance.msdk.core.no.d dVar4 = s.this.mn;
                    int k = dVar4 != null ? dVar4.k() : 0;
                    s.this.v();
                    com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(s.this.kk) + "测试工具加载广告........totalWaterFallCount: " + k + "  ,rit_id:" + s.this.kk + " ,slot_id:" + dq6);
                    s sVar14 = s.this;
                    if (sVar14.mn == null) {
                        sVar14.d(new com.bytedance.msdk.api.d.dq(81012, com.bytedance.msdk.api.dq.dq(81012)), (com.bytedance.msdk.core.no.ox) null);
                        return;
                    }
                }
                s sVar15 = s.this;
                sVar15.ia = sVar15.mn.kx();
                s.this.fw = new ArrayList(s.this.mn.u());
                d.dq(s.this.fw);
                s sVar16 = s.this;
                sVar16.no.dq(sVar16.mn);
                s.this.no.kk();
                s.this.s(0);
                s.this.dq(op, stackTrace);
                s sVar17 = s.this;
                sVar17.le.dq(sVar17.fw);
                s sVar18 = s.this;
                sVar18.le.dq(sVar18.mn.k());
                s sVar19 = s.this;
                Handler handler = sVar19.o;
                if (handler != null) {
                    handler.sendEmptyMessageDelayed(2, sVar19.nh);
                }
                if (s.this.mn.ig()) {
                    s sVar20 = s.this;
                    sVar20.jy = 0;
                    sVar20.le.d(true);
                    s.this.ig();
                } else {
                    s.this.cv();
                }
                com.bytedance.msdk.core.f.d.dq(com.bytedance.msdk.core.dq.d()).d(1);
            }
        });
    }

    public void ij() {
        Handler handler = this.o;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    public HashMap<String, com.bytedance.msdk.d.s> iw(List<com.bytedance.msdk.d.s> list) {
        HashMap<String, com.bytedance.msdk.d.s> hashMap = new HashMap<>();
        if (list != null && list.size() > 0) {
            for (com.bytedance.msdk.d.s sVar : list) {
                if (sVar != null) {
                    hashMap.put(sVar.b(), sVar);
                }
            }
        }
        return hashMap;
    }

    public boolean iw(int i) {
        com.bytedance.msdk.core.no.no noVar;
        List<com.bytedance.msdk.core.no.no> list = this.ia.get(Integer.valueOf(i));
        if (list != null) {
            Iterator<com.bytedance.msdk.core.no.no> it = list.iterator();
            while (it.hasNext()) {
                noVar = it.next();
                if (noVar != null && noVar.n() && TextUtils.equals(noVar.jy(), MediationConstant.ADN_PANGLE)) {
                    break;
                }
            }
        }
        noVar = null;
        return noVar != null && noVar.o() == 3;
    }

    public void jw() {
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "超过当前层最短加载时间.....");
        if (this.p.get() || r()) {
            return;
        }
        if (gx()) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "超过当前层最短加载时间....有P层广告回调成功出去....");
            n_();
        }
        if (op() && !c()) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "超过当前层最短加载时间.....  当前有serverBidding广告，serverBidding请求还未发起或者还没有返回.......");
            return;
        }
        if (by() && h()) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "超过当前层最短加载时间且满足client bidding限制条件....有广告回调成功出去....");
            n_();
        }
    }

    public void l_() {
        this.no.p(i());
        this.no.d(k());
        this.no.dq(mn.p());
        this.no.dq(mn.ox());
        this.no.ox(com.bytedance.msdk.core.s.d.p.dq().d(this.kk, i()));
    }

    @Override // com.bytedance.msdk.dq.dq.InterfaceC0063dq
    public void m_() {
        if (this.o == null || this.s.get() || this.iw.get() || !this.p.get()) {
            return;
        }
        this.iw.set(true);
        uh();
    }

    public boolean mn(int i) {
        List<com.bytedance.msdk.core.no.no> list;
        Handler handler;
        Handler handler2;
        Map<Integer, List<com.bytedance.msdk.core.no.no>> map = this.ia;
        boolean z = false;
        if (map == null || (list = map.get(Integer.valueOf(i))) == null || list.size() == 0) {
            return false;
        }
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "loadAdByLoadSort start...执行当前加载层级：loadSort:" + i + "  waterFallConfig.size:" + list.size());
        boolean z2 = list.get(0) != null && list.get(0).gh() == 100;
        boolean z3 = list.get(0) != null && (list.get(0).gh() == 1 || list.get(0).gh() == 3);
        boolean z4 = list.get(0) != null && list.get(0).gh() == 2;
        if (list.get(0) != null && list.get(0).gh() == 0) {
            z = true;
        }
        if (z3) {
            this.le.d(list.size());
        }
        this.le.dq(i, list.size());
        Message message = new Message();
        if (z2) {
            message.what = 4;
        } else if (z3) {
            message.what = 5;
        } else if (z) {
            message.what = 1;
            message.arg1 = AVMDLDataLoader.KeyIsStoRingBufferSizeKB;
        }
        long j = z3 ? this.vf : this.j;
        if (!z4 && (handler2 = this.o) != null) {
            if (message.what == 4) {
                handler2.removeMessages(4);
            } else {
                handler2.removeMessages(1);
            }
            this.o.sendMessageDelayed(message, j);
        }
        if (this.wn != 0 && (handler = this.o) != null) {
            handler.removeMessages(3);
            this.o.sendEmptyMessageDelayed(3, this.wn);
        }
        return p(list);
    }

    @Override // com.bytedance.msdk.core.mn.ox
    public void n_() {
        ArrayList arrayList;
        ArrayList arrayList2;
        Map<String, Object> map;
        StringBuilder sb = new StringBuilder();
        tn.h(sb, this.kk, " load done..........s:");
        sb.append(this.p.get());
        sb.append("  f:");
        sb.append(this.s.get());
        sb.append("     p.size");
        sb.append(this.r.size());
        sb.append("   bidding.size:");
        sb.append(this.gh.size());
        sb.append("   normal.size:");
        sb.append(this.cd.size());
        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", sb.toString());
        ij();
        wp();
        this.op = false;
        if (this.p.get() || this.s.get()) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        tn.h(sb2, this.kk, "广告加载成功！给外部回调：invokeAdLoadCallbackOnMainUI........P.size:");
        sb2.append(this.r.size());
        sb2.append("   bidding.size:");
        sb2.append(this.gh.size());
        sb2.append("   normal.size:");
        sb2.append(this.cd.size());
        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", sb2.toString());
        this.p.set(true);
        er();
        if ((i_() || (cd() && !this.dc)) && (op() || ir())) {
            List<com.bytedance.msdk.d.s> l = l();
            com.bytedance.msdk.d.s sVar = l.size() > 0 ? l.get(0) : null;
            int t = t();
            if (t > 1) {
                arrayList = new ArrayList();
                for (int i = 1; i < t; i++) {
                    if (i < l.size()) {
                        arrayList.add(l.get(i));
                    }
                }
                if (l.size() > t) {
                    arrayList2 = new ArrayList();
                    while (t < l.size()) {
                        com.bytedance.msdk.d.s sVar2 = l.get(t);
                        if (sVar2 != null && sVar2.ip()) {
                            arrayList2.add(sVar2);
                        }
                        t++;
                    }
                } else {
                    arrayList2 = null;
                }
            } else {
                arrayList = null;
                arrayList2 = null;
            }
            com.bytedance.msdk.s.iw.dq(sVar, this.no, arrayList, arrayList2);
        }
        if (!this.dc) {
            List<com.bytedance.msdk.d.s> l2 = l();
            com.bytedance.msdk.core.o.p.dq(this.mn, !n.d(l2) ? l2.get(0).dk() : 0.0d, this.kk, this.no.le());
        }
        if (i_()) {
            dq(true);
            return;
        }
        int t2 = this.gh.size() + (this.cd.size() + this.r.size()) >= t() ? t() : this.gh.size() + this.cd.size() + this.r.size();
        com.bytedance.msdk.core.no.d dVar = this.mn;
        if (dVar != null) {
            Map<String, Object> s = dVar.s();
            s.put("has_serverBidding", Boolean.valueOf(this.mn.n()));
            map = s;
        } else {
            map = null;
        }
        com.bytedance.msdk.api.dq.d dVar2 = this.no;
        com.bytedance.msdk.d.s sVar3 = this.yy;
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.cv;
        int q = q();
        int ia = ia(this.v);
        com.bytedance.msdk.core.no.d dVar3 = this.mn;
        com.bytedance.msdk.s.iw.dq(map, dVar2, sVar3, elapsedRealtime, q, ia, 0, dVar3 != null ? dVar3.gx() : null, t2, this.z, this.mn);
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.mn.s.3
            @Override // java.lang.Runnable
            public void run() {
                s.this.ox();
            }
        });
        f();
    }

    public com.bytedance.msdk.api.ox o() {
        if (this.yy == null || cd.dq()) {
            return null;
        }
        return jy.dq(this.no, this.yy, true);
    }

    public abstract void ox();

    @Override // com.bytedance.msdk.core.mn.ox
    public final void ox(final com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.mn.s.6
            @Override // java.lang.Runnable
            public void run() {
                s.this.d(dqVar);
            }
        });
    }

    public void ox(List<com.bytedance.msdk.core.no.no> list) {
        Context context = this.l.get();
        if (context != null) {
            dq(context, this.no, list, !i_());
        }
    }

    public void ox(List<com.bytedance.msdk.d.s> list, com.bytedance.msdk.core.no.ox oxVar) {
        if (list == null || list.size() <= 0) {
            return;
        }
        String b2 = list.get(0).b();
        if (list.get(0).ah() && com.bytedance.msdk.core.s.dq.dq.dq().s(this.kk, b2, i()) == 1) {
            ArrayList arrayList = new ArrayList();
            for (com.bytedance.msdk.d.s sVar : list) {
                if (sVar != null) {
                    arrayList.add(new ig(sVar, 0L, this.no));
                }
            }
            if (arrayList.size() > 0) {
                com.bytedance.msdk.d.s sVar2 = ((ig) arrayList.get(0)).dq;
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 广告复用:广告缓存成功 -------" + sVar2.m() + ", adType: " + com.bytedance.msdk.d.dq.dq(sVar2.qz(), sVar2.cv()) + ", adnSlotId: " + sVar2.b() + ", ad个数: " + arrayList.size());
                com.bytedance.msdk.core.s.dq.dq.dq().dq(b2, (List<ig>) arrayList, false);
            }
        }
    }

    public abstract void p();

    public void p(com.bytedance.msdk.api.dq dqVar) {
        this.er = true;
        o oVar = this.f963e;
        if (oVar != null) {
            oVar.s = true;
        }
        com.bytedance.msdk.core.no.d dVar = this.mn;
        com.bytedance.msdk.s.iw.dq(this.no, dqVar, dVar != null ? dVar.gx() : null, wn());
    }

    public void p(com.bytedance.msdk.d.s sVar) {
        com.bytedance.msdk.api.dq.d dVar = this.no;
        int ia = sVar.ia(dVar != null ? dVar.dq() : null);
        sVar.o(3);
        sVar.no(ia);
    }

    public boolean p(List<com.bytedance.msdk.core.no.no> list) {
        boolean z = false;
        for (int i = 0; i < list.size(); i++) {
            try {
                if (dq(list.get(i), list.size())) {
                    z = true;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return z;
    }

    public ConcurrentHashMap<String, com.bytedance.msdk.api.d> s() {
        return this.ox;
    }

    public void s(int i) {
        com.bytedance.msdk.core.no.d dVar = this.mn;
        com.bytedance.msdk.s.iw.dq(this.no, dVar != null ? dVar.gx() : null, !i_(), wn(), i, this.ir);
    }

    public void s(List<com.bytedance.msdk.d.s> list) {
        if (n.d(list)) {
            return;
        }
        if (this.le.dq()) {
            d((List<com.bytedance.msdk.d.s>) null, new com.bytedance.msdk.api.dq(10012, "load ad timeout !!!"));
        } else {
            d(list, (com.bytedance.msdk.api.dq) null);
        }
        com.bytedance.msdk.d.s sVar = list.get(0);
        if (sVar.w()) {
            this.r.addAll(list);
            mn.dq(this.r, (Comparator<com.bytedance.msdk.d.s>) null);
            if (com.bytedance.msdk.dq.s.ox.d()) {
                for (com.bytedance.msdk.d.s sVar2 : list) {
                    StringBuilder sb = new StringBuilder();
                    tn.h(sb, this.kk, "广告加载成功...........返回了P层广告_当前P层广告缓存池数量：");
                    sb.append(this.r.size());
                    sb.append(",slotId：");
                    sb.append(sVar2.b());
                    sb.append(",广告类型：");
                    sb.append(sVar2.m());
                    sb.append(",loadSort=");
                    sb.append(sVar2.ae());
                    sb.append(",showSort=");
                    sb.append(sVar2.wq());
                    sb.append(",CPM=");
                    sb.append(sVar2.dk());
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb.toString());
                }
                return;
            }
            return;
        }
        if (sVar.ip()) {
            this.gh.addAll(list);
            for (com.bytedance.msdk.d.s sVar3 : list) {
                StringBuilder sb2 = new StringBuilder();
                tn.h(sb2, this.kk, "广告加载成功...........返回了ServerBidding层广告_当前ServerBidding层广告缓存池数量：");
                sb2.append(this.gh.size());
                sb2.append(",slotId：");
                sb2.append(sVar3.b());
                sb2.append(",广告类型：");
                sb2.append(sVar3.m());
                sb2.append(",loadSort=");
                sb2.append(sVar3.ae());
                sb2.append(",showSort=");
                sb2.append(sVar3.wq());
                sb2.append(",CPM=");
                sb2.append(sVar3.dk());
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb2.toString());
            }
            return;
        }
        if (!sVar.jv() && !sVar.xx()) {
            this.cd.addAll(list);
            mn.dq(this.cd, (Comparator<com.bytedance.msdk.d.s>) null);
            if (com.bytedance.msdk.dq.s.ox.d()) {
                for (com.bytedance.msdk.d.s sVar4 : list) {
                    StringBuilder sb3 = new StringBuilder();
                    tn.h(sb3, this.kk, "广告加载成功...........返回了普通层广告_当前普通广告缓存池数量：");
                    sb3.append(this.cd.size());
                    sb3.append(",slotId：");
                    sb3.append(sVar4.b());
                    sb3.append(",广告类型：");
                    sb3.append(sVar4.m());
                    sb3.append(",loadSort=");
                    sb3.append(sVar4.ae());
                    sb3.append(",showSort=");
                    sb3.append(sVar4.wq());
                    sb3.append(",CPM=");
                    sb3.append(sVar4.dk());
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb3.toString());
                }
                return;
            }
            return;
        }
        this.gh.addAll(list);
        String str = sVar.jv() ? "多阶底价" : "clientBidding";
        for (com.bytedance.msdk.d.s sVar5 : list) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "广告加载成功...........返回了" + str + "层广告_当前" + str + "层广告缓存池数量：" + this.gh.size() + ",slotId：" + sVar5.b() + ",广告类型：" + sVar5.m() + ",loadSort=" + sVar5.ae() + ",showSort=" + sVar5.wq() + ",CPM=" + sVar5.dk());
        }
        this.le.ox();
        fd();
    }

    @Override // com.bytedance.msdk.core.mn.ox
    public void uh() {
        com.bytedance.msdk.api.dq.d dVar = this.no;
        if ((dVar != null && dVar.le() == 7) || this.no.le() == 8) {
            com.bytedance.msdk.dq.s.ox.ox("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "广告缓存成功！给外部回调：invokeAdVideoCacheOnMainUI........");
        }
        if (i_()) {
            return;
        }
        fw();
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.mn.s.10
            @Override // java.lang.Runnable
            public void run() {
                s.this.p();
            }
        });
    }

    public void v() {
        com.bytedance.msdk.core.no.d dVar = this.mn;
        if (dVar != null) {
            this.wn = dVar.er();
            this.j = this.mn.wn();
            this.nh = this.mn.j();
            this.vf = this.mn.i();
            this.mp = this.mn.op();
            this.ig = this.mn.n();
            this.q = this.mn.r() == 0;
            this.jw = this.mn.by();
            this.fd = this.mn.uh();
            this.i.put("render_control", Integer.valueOf(this.mn.dq()));
            StringBuilder sb = new StringBuilder();
            tn.h(sb, this.kk, "mRitConfig=");
            sb.append(this.mn.toString());
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb.toString());
        }
    }

    public boolean vw() {
        List<ig> p;
        StringBuilder sb = new StringBuilder();
        tn.h(sb, this.kk, "mLoadSortList: ");
        sb.append(this.fw);
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb.toString());
        com.bytedance.msdk.core.no.d dVar = this.mn;
        if (com.bytedance.msdk.core.s.d.p.dq().dq(this.kk, this.no, dVar != null ? dVar.gx() : null) && (p = com.bytedance.msdk.core.s.d.p.dq().p(this.kk)) != null && p.size() > 0) {
            for (ig igVar : p) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(igVar.dq);
                s(arrayList);
            }
            if (this.r.size() > 0 || this.gh.size() > 0 || this.cd.size() > 0) {
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "--==-- hit cache!!! -----");
                return true;
            }
        }
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "--==-- not hit cache!!! -----");
        return false;
    }

    public void ws() {
        this.vw.set(false);
        this.k.set(false);
        this.gh.clear();
        this.cd.clear();
        this.r.clear();
        this.p.set(false);
        this.s.set(false);
        this.iw.set(false);
        Handler handler = this.o;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        ia iaVar = this.le;
        if (iaVar != null) {
            iaVar.s();
        }
        o oVar = this.f963e;
        if (oVar != null) {
            oVar.dq = null;
        }
    }

    public Map<String, Object> xi() {
        com.bytedance.msdk.d.s sVar = this.yy;
        Map<String, Object> dq = sVar != null ? sVar.dq() : null;
        if (dq == null) {
            dq = iw(j());
        }
        com.bytedance.msdk.d.s sVar2 = this.yy;
        if (sVar2 != null && sVar2.bu() != null) {
            dq.putAll(this.yy.bu());
        }
        if (cd.dq()) {
            String dq2 = cd.dq(jy.dq(this.no, this.yy, true));
            if (!TextUtils.isEmpty(dq2)) {
                dq.put("get_show_ecpm_info", dq2);
            }
        }
        return dq;
    }

    public int yy() {
        return this.fd;
    }

    public int z() {
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null) {
            return sVar.jo();
        }
        return -1;
    }
}
