package com.bytedance.msdk.ox.ox.dq;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.msdk.core.p.s;
import com.bytedance.msdk.ia.i;
import com.bytedance.msdk.ia.ir;
import com.bytedance.msdk.ia.n;
import com.bytedance.msdk.ox.ox.dq.dq;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class d implements com.bytedance.msdk.ox.d.d.dq, dq {

    /* renamed from: d, reason: collision with root package name */
    protected com.bytedance.msdk.ox.s.dq.dq f1180d;
    Map<Integer, List<com.bytedance.msdk.core.no.no>> dq;
    private com.bytedance.msdk.api.dq.d ia;
    private com.bytedance.msdk.core.no.d iw;
    private List<Integer> kk;
    private String mn;
    private com.bytedance.msdk.ox.iw.d.dq no;
    private Handler o;
    protected long p;
    private com.bytedance.msdk.ox.s.dq.d s;
    protected final List<com.bytedance.msdk.core.no.no> ox = new CopyOnWriteArrayList();
    private boolean ig = false;

    public d() {
        Looper d2 = com.bytedance.msdk.dq.s.iw.d();
        if (d2 != null) {
            this.o = new Handler(d2) { // from class: com.bytedance.msdk.ox.ox.dq.d.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    d.this.dq(message);
                }
            };
        } else {
            com.bytedance.msdk.dq.s.iw.dq();
            this.o = new Handler(com.bytedance.msdk.dq.s.iw.d()) { // from class: com.bytedance.msdk.ox.ox.dq.d.2
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    d.this.dq(message);
                }
            };
        }
    }

    private void d(List<com.bytedance.msdk.d.s> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        String b2 = list.get(0).b();
        if (list.get(0).ah() && com.bytedance.msdk.core.s.dq.dq.dq().s(this.mn, b2, this.ia.s()) == 1) {
            ArrayList arrayList = new ArrayList();
            for (com.bytedance.msdk.d.s sVar : list) {
                if (sVar != null) {
                    arrayList.add(new com.bytedance.msdk.core.s.d.ig(sVar, 0L, this.ia));
                }
            }
            if (arrayList.size() > 0) {
                com.bytedance.msdk.d.s sVar2 = ((com.bytedance.msdk.core.s.d.ig) arrayList.get(0)).dq;
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==-- 广告复用:广告缓存成功 -------" + sVar2.m() + ", adType: " + com.bytedance.msdk.d.dq.dq(sVar2.qz(), sVar2.cv()) + ", adnSlotId: " + sVar2.b() + ", ad个数: " + arrayList.size());
                com.bytedance.msdk.core.s.dq.dq.dq().dq(b2, (List<com.bytedance.msdk.core.s.d.ig>) arrayList, false);
            }
        }
    }

    private void dq(int i, int i2) {
        Handler handler;
        Map<Integer, List<com.bytedance.msdk.core.no.no>> map = this.dq;
        if (map == null) {
            return;
        }
        final List<com.bytedance.msdk.core.no.no> list = map.get(Integer.valueOf(i));
        StringBuilder sb = new StringBuilder();
        sb.append(com.bytedance.msdk.dq.s.s.dq(this.iw));
        sb.append("loadLevelWaterFall start...执行当前加载层级 ：");
        sb.append(i2);
        sb.append(" levelSort:");
        sb.append(i);
        sb.append("  waterFallConfig.size:");
        sb.append(list == null ? 0 : list.size());
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", sb.toString());
        if (n.dq(list)) {
            return;
        }
        this.f1180d.dq(i, list.size());
        long i3 = com.bytedance.msdk.ox.mn.s.ox(i) ? this.iw.i() : this.iw.wn();
        Message obtain = Message.obtain();
        if (com.bytedance.msdk.ox.mn.s.dq(i)) {
            obtain.what = 1;
        } else if (com.bytedance.msdk.ox.mn.s.ox(i)) {
            obtain.what = 2;
        } else if (com.bytedance.msdk.ox.mn.s.d(i)) {
            obtain.what = 3;
        } else {
            obtain.what = 4;
            obtain.obj = i.dq(i);
        }
        obtain.arg1 = i;
        Handler handler2 = this.o;
        if (handler2 != null) {
            handler2.sendMessageDelayed(obtain, i3);
        }
        long er = this.iw.er();
        if (er != 0 && (handler = this.o) != null) {
            handler.removeMessages(5);
            this.o.sendEmptyMessageDelayed(5, er);
        }
        for (final int i4 = 0; i4 < list.size(); i4++) {
            try {
                com.bytedance.msdk.dq.s.iw.p(new Runnable() { // from class: com.bytedance.msdk.ox.ox.dq.d.4
                    @Override // java.lang.Runnable
                    public void run() {
                        d.this.dq((com.bytedance.msdk.core.no.no) list.get(i4), list.size());
                    }
                });
                if (this.s.k()) {
                    this.s.h();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(Message message) {
        int i = message.arg1;
        switch (message.what) {
            case 1:
            case 4:
                StringBuilder sb = new StringBuilder();
                sb.append(com.bytedance.msdk.dq.s.s.dq(this.iw));
                sb.append(message.what == 1 ? "P层" : "普通层");
                sb.append("广告触发层超时.........levelSort:");
                sb.append(i);
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", sb.toString());
                this.f1180d.p(i);
                if (!d()) {
                    ox(d(i));
                    break;
                }
                break;
            case 2:
            case 3:
                StringBuilder sb2 = new StringBuilder();
                sb2.append(com.bytedance.msdk.dq.s.s.dq(this.iw));
                sb2.append(message.what == 2 ? "ClientBidding层" : "ServerBidding层层");
                sb2.append("广告触发层超时.........levelSort:");
                sb2.append(i);
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", sb2.toString());
                this.f1180d.p(i);
                d();
                break;
            case 5:
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.iw) + "触发最小层超时.........levelSort:" + i);
                d();
                break;
            case 6:
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.iw) + "触发总超时.........");
                this.f1180d.p();
                this.s.c().iw = true;
                d();
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.msdk.api.dq.d dVar, List<com.bytedance.msdk.core.no.no> list, com.bytedance.msdk.core.p.d dVar2) {
        com.bytedance.msdk.ox.iw.d.dq dqVar;
        if (this.s != null && dVar2 != null && !TextUtils.isEmpty(dVar2.p)) {
            this.s.c().dq = dVar2.p;
        }
        com.bytedance.msdk.core.no.d dVar3 = this.iw;
        if (dVar3 != null && dVar2 != null) {
            dVar3.s().put("price_source", Integer.valueOf(dVar2.mp));
        }
        com.bytedance.msdk.core.no.d dVar4 = this.iw;
        String gx = dVar4 != null ? dVar4.gx() : null;
        if (dVar2 != null) {
            com.bytedance.msdk.s.iw.dq(dVar, dVar2, gx, this.f1180d.s() ? 1 : 0);
        }
        if (dVar2 == null || n.dq(dVar2.f1004d)) {
            this.f1180d.dq(2);
            if (this.s.dq() || this.s.d()) {
                return;
            }
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.iw) + "serverBidding响应失败了.......... ");
            this.f1180d.d(0);
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    com.bytedance.msdk.core.no.no noVar = list.get(i);
                    this.f1180d.dq(com.bytedance.msdk.ox.mn.s.dq(this.iw, noVar), noVar.cd());
                }
            }
            if (!d() && (dqVar = this.no) != null) {
                dqVar.dq();
            }
        } else {
            this.f1180d.dq(1);
            if (this.s.dq() || this.s.d()) {
                return;
            }
            this.ox.clear();
            this.ox.addAll(dVar2.f1004d);
            Handler handler = this.o;
            if (handler != null) {
                handler.removeMessages(1);
                this.o.removeMessages(4);
                this.o.removeMessages(5);
            }
            ir.dq(dVar2.f1004d);
            this.dq = com.bytedance.msdk.ox.mn.s.dq(dVar2.f1004d, this.iw.no());
            ArrayList arrayList = new ArrayList();
            this.kk = arrayList;
            arrayList.addAll(this.dq.keySet());
            com.bytedance.msdk.core.mn.d.dq(this.kk);
            this.f1180d.dq(this.kk);
            this.f1180d.dq(dVar2.f1004d, com.bytedance.msdk.ox.mn.s.dq(this.iw.t()), com.bytedance.msdk.ox.mn.s.ox(this.iw.t()));
            com.bytedance.msdk.ox.iw.dq.dq(this.iw, this.s, dVar2.f1004d);
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.iw) + "serverBidding响应回来..........开始从头开始请求waterFallConfig  代码位总数量：" + dVar2.f1004d.size());
            ox(0);
            d();
        }
        if (this.iw != null && dVar2 != null) {
            com.bytedance.msdk.core.o.d.p().dq(dVar2.ig, dVar2.q, this.iw.c(), this.iw.ir());
        }
        if (dVar2 == null || !dVar2.ox) {
            return;
        }
        com.bytedance.msdk.core.f.d.dq(com.bytedance.msdk.core.dq.d()).dq().d(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(int i) {
        if (i < 0) {
            return;
        }
        if (!com.bytedance.msdk.ox.mn.s.dq(i, this.kk)) {
            p(i);
            return;
        }
        int uh = this.iw.uh();
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.iw) + "the " + i + " level is first level normal ad and ParallelNum:" + uh);
        for (int i2 = 0; i2 < uh; i2++) {
            p(i + i2);
        }
    }

    private void ox(com.bytedance.msdk.core.no.no noVar, int i) {
        if (noVar == null || this.o == null) {
            return;
        }
        int i2 = noVar.ir() ? 1 : (noVar.op() || noVar.u()) ? 2 : noVar.n() ? 3 : 4;
        if (noVar.ce()) {
            this.o.removeMessages(i2, i.dq(i));
        } else {
            this.o.removeMessages(i2);
        }
    }

    private void ox(List<com.bytedance.msdk.d.s> list) {
        if (list == null) {
            return;
        }
        for (com.bytedance.msdk.d.s sVar : list) {
            if (sVar != null) {
                com.bytedance.msdk.core.s.d.p.dq().dq(this.mn, new com.bytedance.msdk.core.s.d.ig(sVar, this.s.ji(), this.ia));
            }
        }
    }

    private void p(int i) {
        if (this.s.dq() || s()) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.iw) + "已经触发过成功、失败回调...");
            return;
        }
        if (this.s.iw()) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.iw) + "已经触发过destroy操作...");
            return;
        }
        if (d()) {
            return;
        }
        if (i >= this.kk.size()) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.iw) + "第 " + i + " 层没有广告可以请求...");
            return;
        }
        Integer num = this.kk.get(i);
        int intValue = num.intValue();
        if (this.f1180d.ox(intValue)) {
            ox(i + 1);
            return;
        }
        if (com.bytedance.msdk.ox.mn.s.d(intValue) && this.f1180d.d() == -1) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.iw) + "开启serverBidding exchange 请求....");
            dq(this.dq.get(num));
            dq(i);
            return;
        }
        this.f1180d.d(intValue);
        dq(intValue, i);
        if (com.bytedance.msdk.ox.mn.s.ox(intValue) || com.bytedance.msdk.ox.mn.s.d(intValue)) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.iw) + "第 " + i + "层 ClientBidding,ServerBidding 广告，levelSort：" + intValue + "，同时请求下一层广告...");
            ox(i + 1);
        }
    }

    public int d(int i) {
        int indexOf;
        List<Integer> list = this.kk;
        if (list == null || (indexOf = list.indexOf(Integer.valueOf(i))) == -1) {
            return -1;
        }
        return indexOf + 1;
    }

    @Override // com.bytedance.msdk.ox.ox.dq.dq
    public void d(dq.InterfaceC0088dq interfaceC0088dq) {
        ((com.bytedance.msdk.core.p.mn) com.bytedance.msdk.core.p.iw.dq()).dq(this.s.ce(), this.p, this.ia, this.iw, new s.dq() { // from class: com.bytedance.msdk.ox.ox.dq.d.3
            @Override // com.bytedance.msdk.core.p.s.dq
            public void dq(com.bytedance.msdk.core.p.d dVar) {
                Map<Integer, List<com.bytedance.msdk.core.no.no>> map = d.this.dq;
                List<com.bytedance.msdk.core.no.no> list = map != null ? map.get(0) : null;
                d dVar2 = d.this;
                dVar2.dq(dVar2.ia, list, dVar);
            }
        });
    }

    public boolean d() {
        return d(null, 3);
    }

    public boolean d(com.bytedance.msdk.core.no.no noVar, int i) {
        if (this.s.dq() || s()) {
            return true;
        }
        if (this.f1180d.s()) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.iw) + "触发总超时或全部代码位响应结束.....totalTimeout：" + this.f1180d.s() + "  allWtfFinish:" + this.f1180d.ia());
            if (n.dq(this.s.mn()) && n.dq(this.s.ia()) && n.dq(this.s.o())) {
                if (com.bytedance.msdk.ia.d.dq.d(this.iw)) {
                    com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.iw) + "总加载时间超时.......isCallback:true");
                    if (com.bytedance.msdk.ia.d.dq.dq(this.s, this.kk, this.dq)) {
                        ox();
                        return true;
                    }
                }
                this.ig = true;
                dq(new com.bytedance.msdk.api.dq(AVMDLDataLoader.KeyIsStoRingBufferSizeKB, com.bytedance.msdk.api.dq.dq(AVMDLDataLoader.KeyIsStoRingBufferSizeKB)));
            } else {
                ox();
            }
            return true;
        }
        if (this.f1180d.ia()) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.iw) + "全部广告完成响应...");
            if (n.dq(this.s.mn()) && n.dq(this.s.ia()) && n.dq(this.s.o())) {
                dq(new com.bytedance.msdk.api.dq(20005, com.bytedance.msdk.api.dq.dq(20005)));
            } else {
                ox();
            }
            return true;
        }
        if (this.s.q()) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.iw) + "p层广告已经满足返回条件...");
            ox();
            return true;
        }
        if (!(this.iw.n() && this.f1180d.ox()) && this.iw.n()) {
            return false;
        }
        if (noVar == null) {
            if (this.s.jy() && this.s.fw()) {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.iw) + "p层&普通层广告 已经满足返回条件 V1 .........");
                ox();
                return true;
            }
            if (!this.s.f() || !this.f1180d.kk() || !this.f1180d.o() || !this.s.cd()) {
                return false;
            }
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.iw) + "p层&普通&Bidding层广告 已经满足返回条件 V2 .........");
            ox();
            return true;
        }
        if (!this.s.jy() || !this.s.fw()) {
            if (!this.s.f() || !this.f1180d.kk() || !this.f1180d.o() || !this.s.cd()) {
                return false;
            }
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.iw) + "p层&普通&Bidding层广告 已经满足返回条件 V4 .........");
            ox();
            return true;
        }
        for (com.bytedance.msdk.d.s sVar : this.s.ia()) {
            com.bytedance.msdk.ox.iw.dq.dq dq = com.bytedance.msdk.ox.iw.dq.p.dq(this.iw);
            com.bytedance.msdk.ox.s.dq.d dVar = this.s;
            Map<Integer, List<com.bytedance.msdk.core.no.no>> map = this.dq;
            if (dq.dq(dVar, sVar, map == null ? null : map.get(Integer.valueOf(com.bytedance.msdk.ox.mn.s.dq(this.iw, sVar))))) {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.iw) + "p层&普通层广告 已经满足返回条件 V3 .........");
                ox();
                return true;
            }
        }
        return false;
    }

    @Override // com.bytedance.msdk.ox.d.d.dq
    public void dq() {
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.iw) + "onAdVideoCache.....");
        p();
    }

    public void dq(final int i) {
        com.bytedance.msdk.ox.iw.d.dq dq = com.bytedance.msdk.ox.iw.d.s.dq(this.iw);
        this.no = dq;
        Handler handler = this.o;
        com.bytedance.msdk.core.no.d dVar = this.iw;
        dq.dq(handler, dVar, new com.bytedance.msdk.ox.iw.d.d(dVar, new Runnable() { // from class: com.bytedance.msdk.ox.ox.dq.d.6
            @Override // java.lang.Runnable
            public void run() {
                d.this.ox(i + 1);
            }
        }));
    }

    public void dq(Context context, final com.bytedance.msdk.api.dq.d dVar, final List<com.bytedance.msdk.core.no.no> list, boolean z) {
        com.bytedance.msdk.core.p.s dq = com.bytedance.msdk.core.p.iw.dq();
        if (dq != null) {
            this.f1180d.dq(0);
            this.s.c().p = true;
            com.bytedance.msdk.core.p.ox oxVar = new com.bytedance.msdk.core.p.ox();
            oxVar.dq = dVar;
            oxVar.f1008d = list;
            oxVar.p = this.iw;
            oxVar.iw = z;
            oxVar.s = dVar != null ? dVar.ox() : 1;
            dq.dq(this.s.i(), context, oxVar, new s.dq() { // from class: com.bytedance.msdk.ox.ox.dq.d.7
                @Override // com.bytedance.msdk.core.p.s.dq
                public void dq(com.bytedance.msdk.core.p.d dVar2) {
                    d.this.dq(dVar, list, dVar2);
                }
            });
        }
    }

    public void dq(com.bytedance.msdk.api.dq dqVar) {
        this.s.dq(dqVar);
    }

    @Override // com.bytedance.msdk.ox.d.d.dq
    public void dq(com.bytedance.msdk.api.dq dqVar, com.bytedance.msdk.core.no.no noVar) {
        d dVar;
        if (noVar == null) {
            return;
        }
        dq((List<com.bytedance.msdk.d.s>) null, dqVar);
        if (dqVar != null) {
            dVar = this;
            dVar.dq(noVar.cd(), noVar.fw(), noVar.f(), com.bytedance.msdk.d.dq.dq(noVar.mp(), noVar.iw()), dqVar.ox, dqVar.p);
        } else {
            dVar = this;
        }
        com.bytedance.msdk.core.mn.mn.dq(dqVar, noVar);
        if (noVar.ce() && com.bytedance.msdk.ox.iw.dq.dq(dVar.f1180d, dVar.ox, noVar.cd())) {
            return;
        }
        int dq = com.bytedance.msdk.ox.mn.s.dq(dVar.iw, noVar);
        dVar.f1180d.dq(dq, noVar.cd());
        if (d(noVar, 2) || dVar.f1180d.s(dq) || dVar.f1180d.iw(dq) != 0 || noVar.c()) {
            return;
        }
        int d2 = d(dq);
        ox(noVar, dq);
        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(dVar.iw) + "onAdFailed levelSort " + dq + " 广告全部响应结束&不满足返回条件，直接请求下一层广告 nextIdx：" + d2);
        ox(d2);
    }

    public void dq(com.bytedance.msdk.core.no.no noVar, int i) {
        d dVar;
        if (noVar == null || this.ia == null) {
            dVar = this;
        } else {
            dVar = this;
            dVar.dq(noVar.cd(), noVar.jy(), noVar.f(), com.bytedance.msdk.d.dq.dq(this.ia.le(), noVar.iw()), 0, "广告请求中");
        }
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(dVar.iw) + "开始 某一层级的waterFallConfig请求 WaterFallConfig:" + noVar.toString());
        com.bytedance.msdk.ox.s.d.d dq = com.bytedance.msdk.ox.s.d.d.dq(noVar, this);
        dq.ox(1);
        dq.d(1);
        dq.dq(i);
        dq.dq(!dVar.s.k());
        dq.dq(SystemClock.elapsedRealtime());
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.bytedance.msdk.ox.ox.d.d());
        arrayList.add(new com.bytedance.msdk.ox.ox.d.p());
        arrayList.add(new com.bytedance.msdk.ox.ox.d.iw());
        arrayList.add(new com.bytedance.msdk.ox.ox.d.ox());
        new com.bytedance.msdk.ox.ox.d.s(arrayList).dq(dVar.s, dq);
    }

    @Override // com.bytedance.msdk.ox.ox.dq.dq
    public void dq(dq.InterfaceC0088dq interfaceC0088dq) {
        com.bytedance.msdk.ox.s.dq.d dq = interfaceC0088dq.dq();
        this.s = dq;
        dq.dq(this.o);
        this.f1180d = this.s.mp();
        this.iw = this.s.ig();
        com.bytedance.msdk.api.dq.d gh = this.s.gh();
        this.ia = gh;
        this.mn = gh.k();
        this.dq = this.iw.kx();
        ArrayList arrayList = new ArrayList();
        this.kk = arrayList;
        arrayList.addAll(this.dq.keySet());
        com.bytedance.msdk.core.mn.d.dq(this.kk);
        this.f1180d.dq(this.kk);
        this.f1180d.mn(this.iw.k());
        List<com.bytedance.msdk.core.no.no> dq2 = com.bytedance.msdk.ox.mn.s.dq(this.iw.t());
        List<com.bytedance.msdk.core.no.no> d2 = com.bytedance.msdk.ox.mn.s.d(this.iw.t());
        this.f1180d.ia(dq2 == null ? 0 : dq2.size());
        this.f1180d.kk(d2 == null ? 0 : d2.size());
        Handler handler = this.o;
        if (handler != null) {
            handler.sendEmptyMessageDelayed(6, this.iw.j());
        }
        if (!this.s.le()) {
            com.bytedance.msdk.s.iw.dq(this.ia, this.iw.gx(), !this.s.k(), this.s.c().dq, 0, (Map<String, Object>) null);
        }
        if (this.iw.ig()) {
            interfaceC0088dq.dq(interfaceC0088dq.dq());
        } else {
            if (com.bytedance.msdk.dq.s.ox.d()) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.iw) + "开始加载广告 num:" + this.iw.k());
            }
            ox(0);
        }
        com.bytedance.msdk.core.f.d.dq(com.bytedance.msdk.core.dq.d()).d(1);
    }

    public void dq(String str, String str2, String str3, String str4, int i, String str5) {
        com.bytedance.msdk.api.d dVar = this.s.wp().get(str);
        if (dVar == null) {
            dVar = new com.bytedance.msdk.api.d();
        }
        dVar.d(str).ox(str2).p(str3).dq(i).s(str5).dq(str4);
        this.s.wp().put(str, dVar);
    }

    public void dq(final List<com.bytedance.msdk.core.no.no> list) {
        final Context context = this.s.getContext();
        if (context != null) {
            com.bytedance.msdk.dq.s.iw.p(new Runnable() { // from class: com.bytedance.msdk.ox.ox.dq.d.5
                @Override // java.lang.Runnable
                public void run() {
                    d dVar = d.this;
                    dVar.dq(context, dVar.ia, list, !d.this.s.k());
                }
            });
        }
    }

    public void dq(List<com.bytedance.msdk.d.s> list, com.bytedance.msdk.api.dq dqVar) {
        this.s.dq(list, dqVar);
    }

    public void dq(List<com.bytedance.msdk.d.s> list, com.bytedance.msdk.core.no.d dVar) {
        com.bytedance.msdk.core.o.p.dq(list, dVar);
        com.bytedance.msdk.core.d.dq.dq(list, dVar);
    }

    @Override // com.bytedance.msdk.ox.d.d.dq
    public void dq(List<com.bytedance.msdk.d.s> list, com.bytedance.msdk.core.no.no noVar) {
        if (n.dq(list) || noVar == null) {
            return;
        }
        dq(list, this.iw);
        dq(noVar.cd(), noVar.jy(), noVar.f(), com.bytedance.msdk.d.dq.dq(noVar.mp(), noVar.iw()), 0, "广告加载成功");
        com.bytedance.msdk.core.mn.mn.dq(this.mn, noVar, !n.d(list) ? list.get(0) : null);
        d(list);
        int dq = com.bytedance.msdk.ox.mn.s.dq(this.iw, noVar);
        if (noVar.ce() && com.bytedance.msdk.ox.iw.dq.dq(this.f1180d, this.ox, noVar.cd())) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.iw) + "返回的普通广告被server Bidding过滤了......slotId:" + noVar.cd());
            this.s.kk().addAll(list);
            return;
        }
        com.bytedance.msdk.ox.mn.dq.dq(this.s, list, false);
        this.f1180d.dq(dq, noVar.cd());
        if (this.s.k()) {
            ox(list);
        }
        if (this.f1180d.s()) {
            dq((List<com.bytedance.msdk.d.s>) null, new com.bytedance.msdk.api.dq(10012, "load ad timeout !!!"));
        } else {
            dq(list, (com.bytedance.msdk.api.dq) null);
        }
        this.s.dq(list);
        if (d(noVar, 1) || this.f1180d.iw(dq) != 0 || noVar.c()) {
            return;
        }
        int d2 = d(dq);
        ox(noVar, dq);
        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.iw) + "onAdLoaded levelSort: " + dq + " 广告全部响应结束&不满足返回条件，直接请求下一层广告 nextIdx：" + d2);
        ox(d2);
    }

    public void ox() {
        this.ig = false;
        this.s.p();
    }

    public void p() {
        this.s.s();
    }

    public boolean s() {
        if (this.s.d()) {
            return (this.ig && com.bytedance.msdk.ia.d.dq.dq(this.iw)) ? false : true;
        }
        return false;
    }
}
