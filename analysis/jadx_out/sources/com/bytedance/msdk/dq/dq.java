package com.bytedance.msdk.dq;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import com.bykv.vk.openvk.api.proto.Loader;
import com.bytedance.msdk.core.no.kk;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.core.no.o;
import com.bytedance.msdk.core.no.ox;
import com.bytedance.msdk.d.p;
import com.bytedance.msdk.d.s;
import com.bytedance.msdk.ia.e;
import com.bytedance.msdk.ia.n;
import com.bytedance.msdk.ia.op;
import com.bytedance.msdk.ia.r;
import com.bytedance.msdk.s.iw;
import com.bytedance.sdk.gromore.init.DispatchAdSdkInitializerHolder;
import com.bytedance.sdk.openadsdk.core.u;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import g.awf;
import g.tn;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class dq {
    private int bl;
    private String cd;

    /* renamed from: d, reason: collision with root package name */
    protected no f1037d;
    protected String dq;

    /* renamed from: e, reason: collision with root package name */
    private kk f1038e;

    /* renamed from: f, reason: collision with root package name */
    private int f1039f;
    private double fw;
    private String gh;
    private int h;
    private long i;
    private String ji;
    private int jy;
    private int k;
    private int kx;
    private int le;
    private InterfaceC0063dq mp;
    private boolean n;
    private int op;
    protected com.bytedance.msdk.api.dq.d ox;
    protected o p;
    private String q;
    private long r;
    protected int s;
    private int wp;
    private final int iw = 10;
    private final String mn = "adload_ads";
    private final String ia = "adload_ad";
    private final String kk = "failed";
    private final String o = "ad_video_cache";
    private boolean no = false;
    private boolean ig = false;
    private volatile long ir = -1;

    public class d implements Runnable {

        /* renamed from: d, reason: collision with root package name */
        private String f1041d;
        private boolean ia;
        private String iw;
        private long mn;
        private s ox;
        private List<s> p;
        private com.bytedance.msdk.api.dq s;

        public d(String str, s sVar, List<s> list, com.bytedance.msdk.api.dq dqVar, String str2, long j, boolean z) {
            this.f1041d = str;
            this.ox = sVar;
            this.p = list;
            this.s = dqVar;
            this.iw = str2;
            this.mn = j;
            this.ia = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            String str2;
            if (dq.this.mp != null) {
                ox oxVar = new ox();
                oxVar.d(dq.this.ox.le()).dq(dq.this.s).ox(dq.this.h).p(dq.this.jy).s(dq.this.f1039f).d(dq.this.fw()).dq(dq.this.gh()).ox(dq.this.ji);
                if ("adload_ads".equals(this.f1041d) || "adload_ad".equals(this.f1041d)) {
                    if (!"adload_ads".equals(this.f1041d)) {
                        s sVar = this.ox;
                        int i = sVar != null ? AdBaseConstants.DEFAULT_INSTALL_FINISH_TRY_INTERVAL_MS : 820001;
                        dq.this.ox(sVar);
                        dq.this.dq(i, this.ox, 1, this.iw, this.mn);
                        if (dq.this.s()) {
                            s sVar2 = this.ox;
                            dq dqVar = dq.this;
                            iw.dq(sVar2, dqVar.ox, dqVar.f1037d, dqVar.i);
                        }
                        if (dq.this.mp != null) {
                            dq.this.mp.dq(this.ox, oxVar);
                            com.bytedance.msdk.core.ox.ox.ox(dq.this.ox(), dq.this.ig(), dq.this.no());
                            return;
                        }
                        return;
                    }
                    List<s> list = this.p;
                    int size = list != null ? list.size() : 0;
                    List<s> list2 = this.p;
                    int i2 = (list2 == null || list2.size() <= 0) ? 820001 : AdBaseConstants.DEFAULT_INSTALL_FINISH_TRY_INTERVAL_MS;
                    s sVar3 = null;
                    for (s sVar4 : this.p) {
                        if (sVar4 != null) {
                            dq.this.ox(sVar4);
                            if (sVar3 == null) {
                                sVar3 = sVar4;
                            }
                        }
                    }
                    if (dq.this.iw() || dq.this.mn() || dq.this.s()) {
                        for (s sVar5 : this.p) {
                            if (sVar5 != null) {
                                dq.this.dq(i2, sVar5, 1, this.iw, this.mn);
                            }
                        }
                    } else {
                        dq.this.dq(i2, sVar3, size, this.iw, this.mn);
                    }
                    if (dq.this.s() && !n.d(this.p)) {
                        s sVar6 = this.p.get(0);
                        dq dqVar2 = dq.this;
                        iw.dq(sVar6, dqVar2.ox, dqVar2.f1037d, dqVar2.i);
                    }
                    if (dq.this.mp != null) {
                        dq.this.mp.dq(this.p, oxVar);
                        com.bytedance.msdk.core.ox.ox.ox(dq.this.ox(), dq.this.ig(), dq.this.no());
                        return;
                    }
                    return;
                }
                if (!"failed".equals(this.f1041d)) {
                    if ("ad_video_cache".equals(this.f1041d)) {
                        if (this.ox == null || !(dq.this.bl == 10 || dq.this.bl == 8 || dq.this.bl == 7)) {
                            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(dq.this.q, "fill") + "onAdVideoCache-----ttAd=" + this.ox);
                            return;
                        }
                        dq.this.ox(this.ox);
                        com.bytedance.msdk.api.dq dqVar3 = this.s;
                        if (dqVar3 != null && dqVar3.dq == 30010 && dq.p()) {
                            com.bytedance.msdk.dq.s.iw.dq(new Runnable() { // from class: com.bytedance.msdk.dq.dq.d.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    d.this.ox.kk(true);
                                    d dVar = d.this;
                                    dq.this.d(dVar.ox);
                                    if (dq.this.s()) {
                                        s sVar7 = d.this.ox;
                                        dq dqVar4 = dq.this;
                                        iw.dq(sVar7, dqVar4.ox, dqVar4.f1037d);
                                    }
                                    if (dq.this.mp != null) {
                                        dq.this.mp.m_();
                                    }
                                }
                            }, 1000L);
                            return;
                        }
                        this.ox.kk(true);
                        dq.this.d(this.ox);
                        if (dq.this.s()) {
                            s sVar7 = this.ox;
                            dq dqVar4 = dq.this;
                            iw.dq(sVar7, dqVar4.ox, dqVar4.f1037d);
                        }
                        if (dq.this.mp != null) {
                            dq.this.mp.m_();
                            return;
                        }
                        return;
                    }
                    return;
                }
                s sVar8 = this.ox;
                if (sVar8 != null) {
                    String valueOf = String.valueOf(sVar8.dk());
                    str2 = this.ox.ij();
                    str = valueOf;
                } else {
                    str = null;
                    str2 = null;
                }
                if (dq.this.h == 2 || !this.ia) {
                    com.bytedance.msdk.api.dq dqVar5 = this.s;
                    dq dqVar6 = dq.this;
                    iw.dq(dqVar5, dqVar6.ox, dqVar6.f1037d, dqVar6.le, dq.this.k, dq.this.wp, dq.this.r(), dq.this.i);
                } else {
                    com.bytedance.msdk.api.dq dqVar7 = this.s;
                    dq dqVar8 = dq.this;
                    iw.dq(dqVar7, dqVar8.ox, dqVar8.f1037d, dqVar8.le, dq.this.k, dq.this.wp, dq.this.r(), dq.this.i, str, str2, this.iw, this.mn);
                }
                if (this.s != null) {
                    if (p.f1030d) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(com.bytedance.msdk.dq.s.s.dq(dq.this.q, "fill_fail"));
                        sb.append("AdNetWorkName[");
                        sb.append(dq.this.cd());
                        sb.append("] AdUnitId[");
                        sb.append(dq.this.ji);
                        sb.append("] AdType[");
                        dq dqVar9 = dq.this;
                        com.bytedance.msdk.api.dq.d dVar = dqVar9.ox;
                        String fw = dqVar9.fw();
                        int le = dq.this.ox.le();
                        dq dqVar10 = dq.this;
                        sb.append(dqVar9.dq(dVar, fw, com.bytedance.msdk.d.dq.dq(le, dqVar10.s, dqVar10.f1037d)));
                        sb.append("] 请求失败 (loadSort=");
                        sb.append(dq.this.jy);
                        sb.append(",showSort=");
                        sb.append(dq.this.f1039f);
                        sb.append("),error=");
                        sb.append(this.s.ox);
                        sb.append(",msg=");
                        sb.append(this.s.p);
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", sb.toString());
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(com.bytedance.msdk.dq.s.s.dq(dq.this.q, "fill_fail"));
                        sb2.append("AdNetWorkName[");
                        sb2.append(dq.this.cd());
                        sb2.append("] AdType[");
                        dq dqVar11 = dq.this;
                        com.bytedance.msdk.api.dq.d dVar2 = dqVar11.ox;
                        String fw2 = dqVar11.fw();
                        int le2 = dq.this.ox.le();
                        dq dqVar12 = dq.this;
                        sb2.append(dqVar11.dq(dVar2, fw2, com.bytedance.msdk.d.dq.dq(le2, dqVar12.s, dqVar12.f1037d)));
                        sb2.append("] 请求失败 error=");
                        sb2.append(this.s.ox);
                        sb2.append(",msg=");
                        sb2.append(this.s.p);
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", sb2.toString());
                    }
                    if (dq.this.f1037d != null) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(this.s.ox);
                        String sb4 = sb3.toString();
                        String dq = dq.dq(dq.this.f1037d.jy(), this.s.p);
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "errorCode = " + sb4 + " errorCodeList = " + dq);
                        com.bytedance.msdk.core.kk.ox.dq().dq(dq.this.f1037d.jy(), dq.this.f1037d.cd(), dq.dq(dq.this.f1037d.jy(), sb4, dq));
                    }
                }
                if (dq.this.mp != null) {
                    dq.this.mp.dq(this.s, oxVar);
                }
            }
        }
    }

    /* renamed from: com.bytedance.msdk.dq.dq$dq, reason: collision with other inner class name */
    public interface InterfaceC0063dq {
        void dq(com.bytedance.msdk.api.dq dqVar, ox oxVar);

        void dq(s sVar, ox oxVar);

        void dq(List<s> list, ox oxVar);

        void m_();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(s sVar) {
        if (this.h != 2 && sVar != null) {
            iw.dq(this.ox, sVar, this.f1037d);
        }
        if (!p.f1030d) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.q, "fill") + "AdNetWorkName[" + cd() + "] AdType[" + com.bytedance.msdk.d.dq.dq(this.ox.le(), this.s, this.f1037d) + "] 视频缓存成功 ");
            return;
        }
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.q, "fill") + "AdNetWorkName[" + cd() + "] AdUnitId[" + this.ji + "] AdType[" + com.bytedance.msdk.d.dq.dq(this.ox.le(), this.s, this.f1037d) + "] 视频缓存成功 (loadSort=" + this.jy + ",showSort=" + this.f1039f + ")");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String dq(com.bytedance.msdk.api.dq.d dVar, String str, String str2) {
        return dVar == null ? "" : str2;
    }

    public static String dq(String str, String str2) {
        String[] split;
        if (TextUtils.isEmpty(str2)) {
            return "";
        }
        if (TextUtils.equals(str, MediationConstant.ADN_PANGLE)) {
            String[] split2 = str2.split("message:");
            if (split2 != null && split2.length > 0) {
                String str3 = split2[0];
                if (!TextUtils.isEmpty(str3) && (split = str3.trim().split(":")) != null && split.length >= 2) {
                    String str4 = split[1];
                    if (!TextUtils.isEmpty(str4)) {
                        return str4.trim();
                    }
                }
            }
            return "";
        }
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        char[] charArray = str2.toCharArray();
        int i = 0;
        while (true) {
            if (i >= charArray.length) {
                break;
            }
            char c2 = charArray[i];
            if (c2 >= '0' && c2 <= '9') {
                sb.append(c2);
                if (i == charArray.length - 1) {
                    arrayList.add(sb.toString());
                    break;
                }
            } else if (sb.length() > 0) {
                arrayList.add(sb.toString());
                sb.delete(0, sb.length());
            }
            if (arrayList.size() > 0) {
                return (String) arrayList.get(0);
            }
            i++;
        }
        StringBuilder sb2 = new StringBuilder();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            sb2.append((String) it.next());
            sb2.append("_");
        }
        if (sb2.length() > 0) {
            sb2.delete(sb2.length() - 1, sb2.length());
        }
        return sb2.toString();
    }

    public static String dq(String str, String str2, String str3) {
        return (!TextUtils.isEmpty(str3) && (TextUtils.equals(str, MediationConstant.ADN_GDT) || TextUtils.equals(str, MediationConstant.ADN_PANGLE))) ? awf.i(str2, "_", str3) : str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i, s sVar, int i2, String str, long j) {
        String str2 = i == 20000 ? "load success" : "请求成功，但无广告可用";
        o oVar = this.p;
        int i3 = (oVar == null || !oVar.iw) ? 0 : 1;
        if (this.h != 2 && sVar != null) {
            iw.dq(sVar, i, str2, this.i, this.ox, this.le, i2, i3, str, j, this.ir != -1 ? SystemClock.elapsedRealtime() - this.ir : -1L);
        }
        if (!p.f1030d) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.q, "fill") + "AdNetWorkName[" + cd() + "] AdType[" + dq(this.ox, fw(), com.bytedance.msdk.d.dq.dq(this.ox.le(), this.s, this.f1037d)) + "] 请求成功");
            return;
        }
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.q, "fill") + "AdNetWorkName[" + cd() + "] AdUnitId[" + this.ji + "] AdType[" + dq(this.ox, fw(), com.bytedance.msdk.d.dq.dq(this.ox.le(), this.s, this.f1037d)) + "] 请求成功 (loadSort=" + this.jy + ",showSort=" + this.f1039f + ")");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(Context context, Map<String, Object> map, String str) {
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.q, "request") + "AdNetWorkName[" + cd() + "] AdUnitId[" + this.ji + "] + AdType[" + com.bytedance.msdk.d.dq.dq(this.ox.le(), this.s, this.f1037d) + "] 开始adn请求");
        if (com.bytedance.msdk.core.d.no().e()) {
            if (map == null) {
                map = new HashMap<>();
            }
            dq(context, map);
            return;
        }
        if (map == null) {
            try {
                map = new HashMap<>();
            } catch (Throwable th) {
                dq(new com.bytedance.msdk.api.dq(str));
                th.printStackTrace();
                return;
            }
        }
        dq(context, map);
    }

    private final void dq(s sVar, com.bytedance.msdk.api.dq dqVar, boolean z) {
        this.ig = true;
        if (this.no) {
            return;
        }
        this.no = true;
        this.i = System.currentTimeMillis() - this.r;
        dq("failed", sVar, (List<s>) null, dqVar, z);
    }

    private void dq(String str, s sVar, List<s> list, com.bytedance.msdk.api.dq dqVar, boolean z) {
        String str2;
        long j;
        long currentTimeMillis = System.currentTimeMillis();
        if (r.dq(this.f1037d)) {
            str2 = tn.i();
            j = System.currentTimeMillis() - currentTimeMillis;
        } else {
            str2 = null;
            j = -1;
        }
        com.bytedance.msdk.dq.s.iw.dq(new d(str, sVar, list, dqVar, str2, j, z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(s sVar) {
        no noVar;
        if (sVar == null) {
            return;
        }
        int i = this.h;
        if (i == 0 || i == 100) {
            double d2 = this.fw;
            if (d2 != 0.0d) {
                sVar.dq(d2);
            }
        }
        if (s() && (noVar = this.f1037d) != null) {
            sVar.d(noVar.i());
            sVar.ox(this.f1037d.le());
            if (this.f1037d.ji() != null) {
                sVar.s(this.f1037d.ji().ox());
                sVar.iw(this.f1037d.ji().p());
                sVar.ox(this.f1037d.ji().ia());
                sVar.p(this.f1037d.ji().kk());
                sVar.s(this.f1037d.ji().dq());
            }
        }
        sVar.f(this.h);
        sVar.cd(this.jy);
        sVar.fw(this.f1039f);
        sVar.fw(r());
        no noVar2 = this.f1037d;
        sVar.jy(noVar2 != null ? noVar2.jy() : fw());
        no noVar3 = this.f1037d;
        sVar.f(noVar3 != null ? noVar3.f() : null);
        sVar.q(this.gh);
        sVar.gh(this.ji);
        sVar.cd(this.q);
        sVar.d("waterfall_abtest", com.bytedance.msdk.core.mp.dq.dq().ox(this.dq));
        sVar.q(com.bytedance.msdk.d.dq.d(fw()));
        sVar.ia(this.k);
        sVar.kk(this.wp);
        sVar.mn(this.cd);
        sVar.o(this.k);
        sVar.no(this.wp);
        no noVar4 = this.f1037d;
        sVar.mn(noVar4 != null ? noVar4.o() : -1);
        sVar.iw(this.s);
        sVar.jy(this.bl);
        no noVar5 = this.f1037d;
        sVar.p(noVar5 != null ? noVar5.kk() : 0);
        no noVar6 = this.f1037d;
        sVar.d(noVar6 != null ? noVar6.dq() : 0);
        op.dq(sVar, this.f1037d, this.ox, false);
        o oVar = this.p;
        if (oVar != null) {
            int i2 = oVar.f996d;
            sVar.d("if_test", Integer.valueOf(i2 == 1 ? i2 : 0));
            sVar.d("server_bidding_extra", this.p.dq);
            com.bytedance.msdk.api.dq.d dVar = this.ox;
            int ia = sVar.ia(dVar != null ? dVar.dq() : null);
            if (ia == 1 || ia == 2) {
                sVar.p(this.p.s);
            }
        }
        kk kkVar = this.f1038e;
        if (kkVar == null || kkVar.d() == null) {
            return;
        }
        sVar.dq("extra_data_and_no_parse", this.f1038e.d());
    }

    public static boolean p() {
        boolean ox = e.ox(com.bytedance.msdk.core.dq.getContext());
        boolean d2 = e.d(com.bytedance.msdk.core.dq.getContext());
        if (com.bytedance.msdk.core.dq.d().ig()) {
            return ox || d2;
        }
        return false;
    }

    public String cd() {
        if (this.f1037d != null && com.bytedance.msdk.core.dq.d().ox(this.f1037d.jy())) {
            return this.f1037d.f() + "_" + this.f1037d.jy();
        }
        return fw();
    }

    public no d() {
        return this.f1037d;
    }

    public final void d(List<s> list) {
        int i;
        int i2;
        long j;
        if (this.ir == -1) {
            this.ir = SystemClock.elapsedRealtime();
        }
        if (list != null) {
            for (s sVar : list) {
                if (sVar != null) {
                    sVar.dq(SystemClock.elapsedRealtime());
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        if (!n.dq(list)) {
            arrayList.addAll(list);
        }
        if (!n.d(list) && ((i = this.h) == 1 || i == 3)) {
            Iterator<s> it = list.iterator();
            while (true) {
                String str = null;
                if (!it.hasNext()) {
                    break;
                }
                s next = it.next();
                next.f(this.h);
                next.q(this.gh);
                op.dq(next, this.f1037d, this.ox, true);
                com.bytedance.msdk.api.dq.d dVar = this.ox;
                if (dVar != null && ((i2 = this.h) == 1 || i2 == 3)) {
                    double t = dVar.t();
                    if (t > 0.0d && t > next.dk()) {
                        arrayList.remove(next);
                        String valueOf = String.valueOf(next.dk());
                        String ij = next.ij();
                        long currentTimeMillis = System.currentTimeMillis();
                        if (r.dq(this.f1037d)) {
                            str = tn.i();
                            j = System.currentTimeMillis() - currentTimeMillis;
                        } else {
                            j = -1;
                        }
                        iw.dq(new com.bytedance.msdk.api.dq(50100, com.bytedance.msdk.api.dq.dq(50100)), this.ox, this.f1037d, this.le, this.k, this.wp, r(), this.i, valueOf, ij, str, j);
                    }
                }
            }
            if (arrayList.size() <= 0) {
                dq((s) null, new com.bytedance.msdk.api.dq(50100, com.bytedance.msdk.api.dq.dq(50100)), false);
                return;
            }
        }
        if (this.no) {
            return;
        }
        this.no = true;
        this.i = System.currentTimeMillis() - this.r;
        dq("adload_ads", (s) null, (List<s>) arrayList, (com.bytedance.msdk.api.dq) null, true);
    }

    public com.bytedance.msdk.api.dq.d dq() {
        return this.ox;
    }

    public u dq(Context context) {
        Loader csjLoader = DispatchAdSdkInitializerHolder.getCsjLoader(context);
        if (csjLoader instanceof u) {
            return (u) csjLoader;
        }
        if (csjLoader == null) {
            dq(new com.bytedance.msdk.api.dq("ClassCastException：load ad fail loader is null"));
            return null;
        }
        dq(new com.bytedance.msdk.api.dq("ClassCastException：load ad fail loader is not TTAdNativeImpl"));
        return null;
    }

    public String dq(Context context, String str, com.bytedance.msdk.api.dq.d dVar) {
        return null;
    }

    public final void dq(final Context context, no noVar, final Map<String, Object> map, com.bytedance.msdk.api.dq.d dVar, o oVar, int i) {
        this.no = false;
        this.ig = false;
        this.f1037d = noVar;
        this.q = dVar.k();
        this.kx = dVar.h();
        this.cd = dVar.dq();
        this.bl = dVar.le();
        this.s = noVar.iw();
        this.jy = noVar.wp();
        this.f1039f = noVar.e();
        this.ji = noVar.cd();
        this.f1038e = noVar.ji();
        this.gh = noVar.q();
        this.ox = dVar;
        this.p = oVar;
        this.h = noVar.gh();
        this.dq = noVar.kx();
        this.le = i;
        Object obj = map.get("key_mediation_rit_req_type");
        this.k = obj != null ? ((Integer) obj).intValue() : 1;
        Object obj2 = map.get("key_mediation_rit_req_type_src");
        this.wp = obj2 != null ? ((Integer) obj2).intValue() : 1;
        Object obj3 = map.get("key_is_from_developer_req");
        this.n = obj3 != null && ((Boolean) obj3).booleanValue();
        Object obj4 = map.get("key_requestwfb_ms");
        long longValue = obj4 instanceof Long ? ((Long) obj4).longValue() : -1L;
        Object obj5 = map.get("const_is_custom");
        boolean z = obj5 != null && ((Boolean) obj5).booleanValue();
        if (!noVar.n()) {
            this.op = this.k == 4 ? 3 : 0;
            String r = r();
            boolean z2 = this.n;
            int i2 = this.op;
            int i3 = this.k;
            int i4 = this.wp;
            o oVar2 = this.p;
            iw.dq(noVar, dVar, r, z2, i2, i, i3, i4, (com.bytedance.msdk.api.dq) null, longValue, oVar2 != null ? oVar2.s : false, false);
        }
        if (s() || iw() || mn()) {
            this.fw = 0.0d;
        } else {
            this.fw = noVar.k();
        }
        this.r = System.currentTimeMillis();
        if (!z) {
            com.bytedance.msdk.core.s.dq.dq.dq().p(noVar.cd(), r());
        }
        if (TextUtils.equals(MediationConstant.ADN_MINTEGRAL, noVar.jy()) || TextUtils.equals(MediationConstant.ADN_BAIDU, noVar.jy()) || TextUtils.equals(MediationConstant.ADN_ADMOB, noVar.jy())) {
            com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.dq.dq.1
                @Override // java.lang.Runnable
                public void run() {
                    dq.this.dq(context, (Map<String, Object>) map, "主线程ADN请求广告崩溃");
                }
            });
        } else {
            dq(context, map, "子线程ADN请求广告崩溃");
        }
        com.bytedance.msdk.core.ox.ox.d(ox(), ig(), no());
    }

    public abstract void dq(Context context, Map<String, Object> map);

    public void dq(View view) {
        com.bytedance.msdk.api.s.dq(view);
    }

    public final void dq(com.bytedance.msdk.api.dq dqVar) {
        dq((s) null, dqVar, true);
    }

    public final void dq(com.bytedance.msdk.api.p.dq.d.d.dq dqVar) {
        dq(dqVar.no());
    }

    public final void dq(com.bytedance.msdk.api.p.dq.d.d.dq dqVar, com.bytedance.msdk.api.dq dqVar2) {
        dq(dqVar.no(), dqVar2);
    }

    public final void dq(s sVar) {
        int i;
        if (this.ir == -1) {
            this.ir = SystemClock.elapsedRealtime();
        }
        if (sVar != null) {
            sVar.f(this.h);
            sVar.q(this.gh);
            sVar.dq(SystemClock.elapsedRealtime());
            op.dq(sVar, this.f1037d, this.ox, true);
            com.bytedance.msdk.api.dq.d dVar = this.ox;
            if (dVar != null && ((i = this.h) == 1 || i == 3)) {
                double t = dVar.t();
                if (t > 0.0d && t > sVar.dk()) {
                    dq(sVar, new com.bytedance.msdk.api.dq(50100, com.bytedance.msdk.api.dq.dq(50100)), true);
                    return;
                }
            }
        }
        if (this.no) {
            return;
        }
        this.no = true;
        this.i = System.currentTimeMillis() - this.r;
        dq("adload_ad", sVar, (List<s>) null, (com.bytedance.msdk.api.dq) null, true);
        no noVar = this.f1037d;
        if (noVar != null && noVar.mp() == 10 && this.s == 1) {
            dq(sVar, (com.bytedance.msdk.api.dq) null);
        }
    }

    public final void dq(s sVar, com.bytedance.msdk.api.dq dqVar) {
        if (this.ig) {
            return;
        }
        dq("ad_video_cache", sVar, (List<s>) null, dqVar, true);
    }

    public final void dq(s sVar, String str, Map<String, Object> map) {
        if (sVar == null || sVar.qz() != 5) {
            return;
        }
        iw.dq(sVar, this.ox, str);
    }

    public final void dq(InterfaceC0063dq interfaceC0063dq) {
        this.mp = interfaceC0063dq;
    }

    public final void dq(List<? extends com.bytedance.msdk.api.p.dq.d.d.dq> list) {
        if (list != null) {
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<? extends com.bytedance.msdk.api.p.dq.d.d.dq> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().no());
            }
            d(arrayList);
        }
    }

    public boolean f() {
        return this.no;
    }

    public abstract String fw();

    public String gh() {
        if (this.f1037d == null || !com.bytedance.msdk.core.dq.d().ox(this.f1037d.jy())) {
            return null;
        }
        return this.f1037d.f();
    }

    public int ia() {
        return this.h;
    }

    public String ig() {
        return this.q;
    }

    public boolean iw() {
        return this.h == 1;
    }

    public boolean jy() {
        return this.ig;
    }

    public final String kk() {
        kk kkVar;
        return (s() && (kkVar = this.f1038e) != null) ? kkVar.o() : "";
    }

    public boolean mn() {
        return this.h == 3;
    }

    public int mp() {
        return this.s;
    }

    public final String no() {
        return this.ji;
    }

    public final Object o() {
        kk kkVar;
        if (s() && (kkVar = this.f1038e) != null) {
            return kkVar.d();
        }
        return null;
    }

    public String ox() {
        no noVar = this.f1037d;
        return noVar != null ? noVar.fw() : "";
    }

    public String q() {
        String str = !TextUtils.isEmpty(this.cd) ? this.cd : null;
        if (TextUtils.isEmpty(this.ji)) {
            return str;
        }
        StringBuilder o = awf.o(awf.c(str, "_"));
        o.append(this.ji);
        return o.toString();
    }

    public abstract String r();

    public boolean s() {
        return this.h == 2;
    }
}
