package com.bytedance.msdk.ox.ox.d;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.msdk.core.mn.mn;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.core.no.o;
import com.bytedance.msdk.ia.n;
import com.bytedance.msdk.ia.op;
import com.bytedance.msdk.ia.r;
import com.bytedance.msdk.ox.ox.d.dq;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import g.awf;
import g.hat;
import g.tn;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ox implements com.bytedance.msdk.ox.dq.d, dq {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.ox.s.dq.d f1177d;
    private com.bytedance.msdk.ox.s.d.d dq;
    private long iw;
    private long mn;
    private com.bytedance.msdk.api.dq.d ox;
    private com.bytedance.msdk.ox.dq.dq p = null;
    private volatile long s = -1;

    private List<com.bytedance.msdk.d.s> d(List<com.bytedance.msdk.d.s> list) {
        List<com.bytedance.msdk.d.s> list2;
        String str;
        long j;
        ArrayList arrayList = new ArrayList();
        if (n.dq(list)) {
            list2 = list;
        } else {
            list2 = list;
            arrayList.addAll(list2);
        }
        if (this.dq != null && !n.d(list2) && (this.dq.dq() || this.dq.wp())) {
            for (com.bytedance.msdk.d.s sVar : list2) {
                op.dq(sVar, this.dq.ia(), this.ox, true);
                double t = this.ox.t();
                if (t > 0.0d && t > sVar.dk()) {
                    arrayList.remove(sVar);
                    String valueOf = String.valueOf(sVar.dk());
                    String ij = sVar.ij();
                    long currentTimeMillis = System.currentTimeMillis();
                    if (r.dq(this.dq.ia())) {
                        str = tn.i();
                        j = System.currentTimeMillis() - currentTimeMillis;
                    } else {
                        str = null;
                        j = -1;
                    }
                    com.bytedance.msdk.s.iw.dq(new com.bytedance.msdk.api.dq(50100, com.bytedance.msdk.api.dq.dq(50100)), this.ox, this.dq.ia(), this.dq.ox(), this.dq.mn(), this.dq.iw(), dq(this.dq.mp()), this.iw, valueOf, ij, str, j);
                }
            }
        }
        return arrayList;
    }

    private Map<String, Object> d() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        com.bytedance.msdk.core.no.dq dq = com.bytedance.msdk.core.dq.d().dq(this.dq.mp());
        if (dq != null) {
            concurrentHashMap.put("tt_ad_network_config_appid", dq.dq());
            concurrentHashMap.put("tt_ad_network_config_appKey", dq.d());
        }
        concurrentHashMap.put("tt_ad_origin_type", Integer.valueOf(this.dq.q()));
        concurrentHashMap.put("tt_ad_sub_type", Integer.valueOf(this.dq.jy()));
        com.bytedance.msdk.api.dq.d dVar = this.ox;
        if (dVar != null) {
            Map<String, Object> wn = dVar.wn();
            if (wn != null && wn.size() > 0) {
                for (Map.Entry<String, Object> entry : wn.entrySet()) {
                    if (entry.getKey() != null && entry.getValue() != null) {
                        concurrentHashMap.put(entry.getKey(), entry.getValue());
                    }
                }
            }
            int e2 = this.ox.e();
            int kx = this.ox.kx();
            if (e2 < 0) {
                e2 = 0;
            }
            if (kx < 0) {
                kx = 0;
            }
            concurrentHashMap.put("ad_height", Integer.valueOf(kx));
            concurrentHashMap.put("ad_width", Integer.valueOf(e2));
            concurrentHashMap.put("ad_type", Integer.valueOf(this.ox.le()));
        }
        if (this.f1177d.bl() != null && this.f1177d.bl().size() > 0) {
            concurrentHashMap.putAll(this.f1177d.bl());
        }
        return concurrentHashMap;
    }

    private void d(com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.ox.s.d.d dVar = this.dq;
        if (dVar != null) {
            dVar.dq(dqVar, dVar.ia());
        }
    }

    private void d(com.bytedance.msdk.d.s sVar) {
        com.bytedance.msdk.ox.s.d.d dVar;
        if (this.f1177d == null || this.ox == null || (dVar = this.dq) == null || dVar.ia() == null) {
            return;
        }
        no ia = this.dq.ia();
        if (!this.dq.k() && sVar != null) {
            com.bytedance.msdk.s.iw.dq(this.ox, sVar, this.dq.ia());
        }
        if (!com.bytedance.msdk.d.p.f1030d) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.ox.k(), "fill") + "AdNetWorkName[" + ia.jy() + "] AdType[" + com.bytedance.msdk.d.dq.dq(this.ox.le(), ia.iw(), ia) + "] 视频缓存成功 ");
            return;
        }
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.ox.k(), "fill") + "AdNetWorkName[" + ia.jy() + "] AdUnitId[" + ia.cd() + "] AdType[" + com.bytedance.msdk.d.dq.dq(this.ox.le(), ia.iw(), ia) + "] 视频缓存成功 (loadSort=" + ia.wp() + ",showSort=" + ia.e() + ")");
    }

    private String dq(String str) {
        com.bytedance.msdk.dq.dq.p dq = com.bytedance.msdk.iw.d.d.dq().dq(str);
        if (dq != null) {
            return dq.d();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq() {
        com.bytedance.msdk.ox.s.d.d dVar = this.dq;
        if (dVar != null) {
            dVar.kk();
        }
    }

    private void dq(int i, com.bytedance.msdk.d.s sVar, int i2, String str, long j) {
        com.bytedance.msdk.ox.s.d.d dVar;
        if (this.f1177d == null || this.ox == null || (dVar = this.dq) == null || dVar.ia() == null) {
            return;
        }
        no ia = this.dq.ia();
        String str2 = i == 20000 ? "load success" : "请求成功，但无广告可用";
        boolean z = this.f1177d.c().iw;
        if (!this.dq.k() && sVar != null) {
            com.bytedance.msdk.s.iw.dq(sVar, i, str2, this.iw, this.ox, this.dq.ox(), i2, z ? 1 : 0, str, j, this.s != -1 ? SystemClock.elapsedRealtime() - this.s : -1L);
        }
        if (!com.bytedance.msdk.d.p.f1030d) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.ox.k(), "fill") + "AdNetWorkName[" + ia.jy() + "] AdType[" + com.bytedance.msdk.d.dq.dq(this.ox.le(), ia.iw(), ia) + "] 请求成功");
            return;
        }
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.ox.k(), "fill") + "AdNetWorkName[" + ia.jy() + "] AdUnitId[" + ia.cd() + "] AdType[" + com.bytedance.msdk.d.dq.dq(this.ox.le(), ia.iw(), ia) + "] 请求成功 (loadSort=" + ia.wp() + ",showSort=" + ia.e() + ")");
    }

    private void dq(com.bytedance.msdk.api.dq dqVar, boolean z) {
        long j;
        String str;
        com.bytedance.msdk.api.dq dqVar2;
        this.iw = System.currentTimeMillis() - this.mn;
        com.bytedance.msdk.ox.s.d.d dVar = this.dq;
        if (dVar != null && dVar.ia() != null) {
            long currentTimeMillis = System.currentTimeMillis();
            if (r.dq(this.dq.ia())) {
                str = tn.i();
                j = System.currentTimeMillis() - currentTimeMillis;
            } else {
                j = -1;
                str = null;
            }
            String str2 = str;
            long j2 = j;
            if (this.dq.k() || !z) {
                dqVar2 = dqVar;
                com.bytedance.msdk.s.iw.dq(dqVar2, this.ox, this.dq.ia(), this.dq.ox(), this.dq.mn(), this.dq.iw(), dq(this.dq.mp()), this.iw);
            } else {
                dqVar2 = dqVar;
                com.bytedance.msdk.s.iw.dq(dqVar2, this.ox, this.dq.ia(), this.dq.ox(), this.dq.mn(), this.dq.iw(), dq(this.dq.mp()), this.iw, (String) null, (String) null, str2, j2);
            }
            no ia = this.dq.ia();
            if (dqVar2 != null) {
                if (this.ox != null) {
                    if (com.bytedance.msdk.d.p.f1030d) {
                        StringBuilder sb = new StringBuilder();
                        com.bytedance.msdk.api.dq.d dVar2 = this.ox;
                        sb.append(com.bytedance.msdk.dq.s.s.dq(dVar2 != null ? dVar2.k() : "", "fill_fail"));
                        sb.append("AdNetWorkName[");
                        sb.append(ia.jy());
                        sb.append("] AdUnitId[");
                        sb.append(ia.cd());
                        sb.append("] AdType[");
                        sb.append(com.bytedance.msdk.d.dq.dq(this.ox.le(), ia.iw(), ia));
                        sb.append("] 请求失败 (loadSort=");
                        sb.append(ia.wp());
                        sb.append(",showSort=");
                        sb.append(ia.e());
                        sb.append("),error=");
                        sb.append(dqVar2.ox);
                        sb.append(",msg=");
                        sb.append(dqVar2.p);
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", sb.toString());
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        com.bytedance.msdk.api.dq.d dVar3 = this.ox;
                        sb2.append(com.bytedance.msdk.dq.s.s.dq(dVar3 != null ? dVar3.k() : "", "fill_fail"));
                        sb2.append("AdNetWorkName[");
                        sb2.append(ia.jy());
                        sb2.append("] AdType[");
                        sb2.append(com.bytedance.msdk.d.dq.dq(this.ox.le(), ia.iw(), ia));
                        sb2.append("] 请求失败 error=");
                        sb2.append(dqVar2.ox);
                        sb2.append(",msg=");
                        sb2.append(dqVar2.p);
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", sb2.toString());
                    }
                }
                StringBuilder sb3 = new StringBuilder();
                sb3.append(dqVar2.ox);
                com.bytedance.msdk.core.kk.ox.dq().dq(this.dq.ia().jy(), this.dq.ia().cd(), com.bytedance.msdk.dq.dq.dq(this.dq.ia().jy(), sb3.toString(), com.bytedance.msdk.dq.dq.dq(this.dq.ia().jy(), dqVar2.p)));
            }
        }
        d(dqVar);
    }

    private void dq(com.bytedance.msdk.d.s sVar) {
        com.bytedance.msdk.ox.s.d.d dVar;
        if (sVar == null || (dVar = this.dq) == null) {
            return;
        }
        if ((dVar.gh() == 0 || this.dq.gh() == 100) && this.dq.ji() != 0.0d) {
            sVar.dq(this.dq.ji());
        }
        if (this.dq.k()) {
            sVar.d(this.dq.bl());
            sVar.ox(this.dq.n());
            if (this.dq.op() != null) {
                sVar.s(this.dq.op().ox());
                sVar.iw(this.dq.op().p());
                sVar.ox(this.dq.op().ia());
                sVar.p(this.dq.op().kk());
                sVar.s(this.dq.op().dq());
            }
        }
        sVar.f(this.dq.gh());
        sVar.cd(this.dq.r());
        sVar.fw(this.dq.i());
        com.bytedance.msdk.ox.dq.dq dqVar = this.p;
        sVar.fw(dqVar != null ? dqVar.dq(this.dq.mp()) : "");
        sVar.jy(this.dq.mp());
        sVar.f(this.dq.ia() != null ? this.dq.ia().f() : "");
        sVar.q(this.dq.ir());
        sVar.dq(SystemClock.elapsedRealtime());
        sVar.gh(this.dq.ig());
        sVar.cd(this.dq.d());
        sVar.d("waterfall_abtest", com.bytedance.msdk.core.mp.dq.dq().ox(this.dq.f()));
        sVar.q(com.bytedance.msdk.d.dq.d(this.dq.mp()));
        sVar.ia(this.dq.mn());
        sVar.kk(this.dq.iw());
        sVar.mn(this.ox.dq());
        sVar.o(this.dq.mn());
        sVar.no(this.dq.iw());
        sVar.mn(this.dq.q());
        sVar.iw(this.dq.jy());
        sVar.jy(this.ox.le());
        sVar.p(this.dq.u());
        sVar.d(this.dq.h());
        op.dq(sVar, this.dq.ia(), this.ox, false);
        o c2 = this.f1177d.c();
        if (c2 != null) {
            int i = c2.f996d;
            sVar.d("if_test", Integer.valueOf(i == 1 ? i : 0));
            sVar.d("server_bidding_extra", c2.dq);
            com.bytedance.msdk.api.dq.d dVar2 = this.ox;
            int ia = sVar.ia(dVar2 != null ? dVar2.dq() : null);
            if (ia == 1 || ia == 2) {
                sVar.p(c2.s);
            }
        }
        if (this.dq.op() == null || this.dq.op() == null) {
            return;
        }
        sVar.dq("extra_data_and_no_parse", this.dq.op().d());
    }

    private void dq(com.bytedance.msdk.ox.s.d.d dVar, com.bytedance.msdk.ox.s.dq.d dVar2, com.bytedance.msdk.api.dq dqVar, String str) {
        if (dVar == null || dVar2 == null || dVar.ia() == null) {
            return;
        }
        no ia = dVar.ia();
        String dq = TextUtils.isEmpty(str) ? com.bytedance.msdk.core.s.dq.dq.dq().dq(ia.cd()) : str;
        if (!ia.n()) {
            com.bytedance.msdk.s.iw.dq(ia, this.ox, dq, dVar.s(), dVar.mn() == 4 ? 3 : 0, dVar.ox(), dVar.mn(), dVar.iw(), dqVar, dVar.p(), dVar2.c().s, false);
        } else if (ia.ji() != null) {
            com.bytedance.msdk.s.iw.dq(ia, this.ox, dq);
        }
    }

    private void dq(Runnable runnable) {
        com.bytedance.msdk.dq.s.iw.dq(runnable);
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

    private String ox() {
        String dq = !TextUtils.isEmpty(this.ox.dq()) ? this.ox.dq() : null;
        if (TextUtils.isEmpty(this.dq.ig())) {
            return dq;
        }
        StringBuilder o = awf.o(awf.c(dq, "_"));
        o.append(this.dq.ig());
        return o.toString();
    }

    private void ox(List<com.bytedance.msdk.d.s> list) {
        com.bytedance.msdk.ox.s.d.d dVar = this.dq;
        if (dVar != null) {
            dVar.dq(list, dVar.ia());
        }
        dq(new Runnable() { // from class: com.bytedance.msdk.ox.ox.d.ox.2
            @Override // java.lang.Runnable
            public void run() {
                if (ox.this.dq != null) {
                    com.bytedance.msdk.core.ox.ox.ox(ox.this.dq.mp(), ox.this.dq.d(), ox.this.dq.ig());
                }
            }
        });
    }

    private void p() {
        this.dq.dq(ox());
        this.dq.d(this.f1177d.ig().c());
        if (this.dq.o()) {
            Context context = com.bytedance.msdk.core.dq.getContext();
            com.bytedance.msdk.ox.s.d.d dVar = this.dq;
            com.bytedance.msdk.iw.d.dq(context, dVar != null ? dVar.mp() : "");
            if (com.bytedance.msdk.iw.d.dq.dq(this.dq.mp()) == null) {
                com.bytedance.msdk.s.iw.dq("", this.f1177d.no(), this.ox, this.dq.ia(), new com.bytedance.msdk.api.dq(49014, "创建自定义广告对象 configuration is null"));
            } else {
                com.bytedance.msdk.core.no.dq dq = com.bytedance.msdk.mn.dq.dq.jy().dq(this.dq.mp());
                if (dq == null) {
                    com.bytedance.msdk.s.iw.dq("", (com.bytedance.msdk.d.s) null, (com.bytedance.msdk.api.dq.d) null, (no) null, new com.bytedance.msdk.api.dq(49013, "创建自定义广告对象 adNetworkConfValue is null"));
                } else if (dq.ox() == null) {
                    com.bytedance.msdk.s.iw.dq("", (com.bytedance.msdk.d.s) null, (com.bytedance.msdk.api.dq.d) null, (no) null, new com.bytedance.msdk.api.dq(49013, "创建自定义广告对象 getGMCustomConfig is null"));
                } else {
                    com.bytedance.msdk.api.p.dq.d.ox.dq dq2 = dq.ox().dq(this.dq.kx(), this.dq.jy());
                    if (dq2 == null) {
                        com.bytedance.msdk.s.iw.dq("", (com.bytedance.msdk.d.s) null, (com.bytedance.msdk.api.dq.d) null, (no) null, new com.bytedance.msdk.api.dq(49013, "创建自定义广告对象 adConfig is null"));
                    } else if (dq(dq2)) {
                        this.p = com.bytedance.msdk.ox.ox.d.dq.p.dq(dq2.dq(), this.dq, this);
                    } else {
                        com.bytedance.msdk.s.iw.dq("", (com.bytedance.msdk.d.s) null, (com.bytedance.msdk.api.dq.d) null, (no) null, new com.bytedance.msdk.api.dq(49013, "创建自定义广告对象 check className false className is " + dq2.dq()));
                    }
                }
            }
        } else if (this.dq.no()) {
            this.p = com.bytedance.msdk.ox.ox.d.dq.p.dq(this.dq, this);
        } else if (mn.dq(this.dq.ia())) {
            this.p = new com.bytedance.msdk.ox.ox.d.dq.ox(this);
        }
        com.bytedance.msdk.ox.dq.dq dqVar = this.p;
        if (dqVar != null) {
            com.bytedance.msdk.ox.s.d.d dVar2 = this.dq;
            dq(dVar2, this.f1177d, null, dqVar.dq(dVar2.mp()));
            this.p.dq(this.f1177d.getContext(), this.dq, this.ox, d());
            if (this.dq.o()) {
                return;
            }
            com.bytedance.msdk.core.s.dq.dq.dq().dq(this.dq.d(), this.dq.ig(), this.dq.ia(), this.dq.ox());
            return;
        }
        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "**********【重要】" + this.dq.mp() + "创建失败，请检查adapter是否接入 **********");
        com.bytedance.msdk.s.ox.dq.dq().dq(com.bytedance.msdk.s.p.ox(), this.dq.ia(), this.ox, this.dq.mn(), this.dq.iw());
        dq(this.dq, this.f1177d, new com.bytedance.msdk.api.dq("create adn loader fail"), "");
        dq(new com.bytedance.msdk.api.dq("create adn loader fail"));
    }

    @Override // com.bytedance.msdk.ox.dq.d
    public void dq(com.bytedance.msdk.api.dq dqVar) {
        dq(dqVar, true);
    }

    @Override // com.bytedance.msdk.ox.dq.d
    public void dq(com.bytedance.msdk.d.s sVar, String str) {
        if (sVar == null || sVar.qz() != 5) {
            return;
        }
        com.bytedance.msdk.s.iw.dq(sVar, this.ox, str);
    }

    @Override // com.bytedance.msdk.ox.ox.d.dq
    public void dq(dq.InterfaceC0083dq interfaceC0083dq) {
        if (interfaceC0083dq == null) {
            return;
        }
        this.mn = System.currentTimeMillis();
        this.dq = interfaceC0083dq.dq();
        com.bytedance.msdk.ox.s.dq.d d2 = interfaceC0083dq.d();
        this.f1177d = d2;
        this.ox = d2.gh();
        if (this.f1177d.getContext() == null) {
            com.bytedance.msdk.api.dq dqVar = new com.bytedance.msdk.api.dq("request adn context is null");
            dq(this.dq, this.f1177d, dqVar, "");
            dq(dqVar);
        } else {
            if (this.dq != null) {
                p();
                return;
            }
            com.bytedance.msdk.api.dq dqVar2 = new com.bytedance.msdk.api.dq("request adn waterfall request is null");
            dq(this.dq, this.f1177d, dqVar2, "");
            dq(dqVar2);
        }
    }

    @Override // com.bytedance.msdk.ox.dq.d
    public void dq(List<com.bytedance.msdk.d.s> list) {
        ox oxVar;
        String str;
        if (list == null) {
            return;
        }
        long j = -1;
        if (this.s == -1) {
            this.s = SystemClock.elapsedRealtime();
        }
        this.iw = System.currentTimeMillis() - this.mn;
        Iterator<com.bytedance.msdk.d.s> it = list.iterator();
        while (it.hasNext()) {
            dq(it.next());
        }
        List<com.bytedance.msdk.d.s> d2 = d(list);
        if (d2.size() == 0) {
            dq(new com.bytedance.msdk.api.dq(50100, com.bytedance.msdk.api.dq.dq(50100)), false);
            return;
        }
        if (this.dq != null) {
            long currentTimeMillis = System.currentTimeMillis();
            if (r.dq(this.dq.ia())) {
                String i = tn.i();
                j = System.currentTimeMillis() - currentTimeMillis;
                str = i;
            } else {
                str = null;
            }
            long j2 = j;
            int i2 = list.size() > 0 ? AdBaseConstants.DEFAULT_INSTALL_FINISH_TRY_INTERVAL_MS : 820001;
            if (this.dq.dq() || this.dq.wp()) {
                for (com.bytedance.msdk.d.s sVar : list) {
                    if (sVar != null) {
                        dq(i2, sVar, 1, str, j2);
                    }
                }
                oxVar = this;
            } else {
                oxVar = this;
                oxVar.dq(i2, d2.get(0), d2.size(), str, j2);
            }
            if (oxVar.dq.k() && !n.d(list)) {
                com.bytedance.msdk.s.iw.dq(list.get(0), oxVar.ox, oxVar.dq.ia(), oxVar.iw);
            }
        } else {
            oxVar = this;
        }
        ox(d2);
        if (oxVar.dq.ia() != null && oxVar.dq.ia().mp() == 10 && oxVar.dq.ia().iw() == 1) {
            dq(d2, (com.bytedance.msdk.api.dq) null);
        }
    }

    @Override // com.bytedance.msdk.ox.dq.d
    public void dq(final List<com.bytedance.msdk.d.s> list, com.bytedance.msdk.api.dq dqVar) {
        if (list != null) {
            for (com.bytedance.msdk.d.s sVar : list) {
                if (sVar != null) {
                    sVar.kk(true);
                    dq(sVar);
                    d(sVar);
                }
            }
        }
        if (dqVar != null && dqVar.dq == 30010 && com.bytedance.msdk.dq.dq.p()) {
            com.bytedance.msdk.dq.s.iw.dq(new Runnable() { // from class: com.bytedance.msdk.ox.ox.d.ox.1
                @Override // java.lang.Runnable
                public void run() {
                    if (ox.this.dq != null && ox.this.dq.k()) {
                        com.bytedance.msdk.s.iw.dq(!n.d(list) ? (com.bytedance.msdk.d.s) list.get(0) : null, ox.this.ox, ox.this.dq.ia());
                    }
                    ox.this.dq();
                }
            }, 1000L);
            return;
        }
        com.bytedance.msdk.ox.s.d.d dVar = this.dq;
        if (dVar != null && dVar.k()) {
            com.bytedance.msdk.s.iw.dq(!n.d(list) ? list.get(0) : null, this.ox, this.dq.ia());
        }
        dq();
    }
}
