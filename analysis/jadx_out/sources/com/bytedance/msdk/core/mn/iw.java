package com.bytedance.msdk.core.mn;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.ia.i;
import com.bytedance.msdk.ia.n;
import g.tn;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class iw extends s {
    protected Map<Integer, Integer> xi;
    protected boolean z;

    public iw(Context context, String str, int i) {
        super(context, str, i);
        this.xi = new HashMap();
        this.z = false;
    }

    private void ig() {
        if (by()) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "抛出成功回调_广告池中广告满足数量直接返回......");
            if (h()) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "当前广告池中有广告且满足client bididing的返回条件...给出成功回调...");
                n_();
            }
        }
    }

    private void no() {
        for (int i = 0; i < this.fw.size(); i++) {
            if (this.xi.get(this.fw.get(i)) == null) {
                this.xi.put(this.fw.get(i), 0);
            }
        }
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void cv() {
        com.bytedance.msdk.core.no.d dVar = this.mn;
        if (dVar == null || !dVar.no()) {
            super.cv();
        } else {
            m();
            pa();
        }
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void d(int i, boolean z) {
        com.bytedance.msdk.core.no.d dVar = this.mn;
        if (dVar == null || !dVar.no()) {
            super.d(i, z);
            return;
        }
        for (int i2 = 0; i2 < yy(); i2++) {
            int i3 = i + i2 + 1;
            if (i3 < this.fw.size()) {
                dq(i3, false);
            }
        }
    }

    public void d(Message message) {
        int no;
        int no2;
        List<com.bytedance.msdk.d.s> list;
        List<com.bytedance.msdk.d.s> list2;
        int i = message.what;
        if (i == 1) {
            if (message.arg1 == 10003) {
                Integer num = (Integer) message.obj;
                int intValue = num.intValue();
                this.xi.put(num, 4);
                if (op() && !c()) {
                    StringBuilder sb = new StringBuilder();
                    tn.h(sb, this.kk, "当前层超时....server Bidding 的请求还没有返回，继续执行下一层普通层(不一定执行)....mTTCommonAdPoolList.size()=");
                    sb.append(this.cd.size());
                    com.bytedance.msdk.dq.s.ox.ox("TTMediationSDK", sb.toString());
                    int mp = mp(intValue);
                    if (mp < 0 || (no2 = no(mp)) < 0) {
                        return;
                    }
                    dq(no2, false);
                    return;
                }
                if (!by()) {
                    StringBuilder sb2 = new StringBuilder();
                    tn.h(sb2, this.kk, "当前层超时....普通广告池没广告尝试执行下层(不一定执行)....mTTCommonAdPoolList.size()=");
                    sb2.append(this.cd.size());
                    com.bytedance.msdk.dq.s.ox.ox("TTMediationSDK", sb2.toString());
                    int mp2 = mp(intValue);
                    if (mp2 < 0 || (no = no(mp2)) < 0) {
                        return;
                    }
                    dq(no, false);
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
            Integer num2 = (Integer) message.obj;
            int intValue2 = num2.intValue();
            if (this.xi.get(num2) != null && this.xi.get(num2).intValue() == 1) {
                this.xi.put(num2, 4);
            }
            if (gx()) {
                StringBuilder sb5 = new StringBuilder();
                tn.h(sb5, this.kk, "当前层超时....广告池已有P层类型广告不执行下层....mTTPAdPoolList.size()=");
                sb5.append(this.r.size());
                com.bytedance.msdk.dq.s.ox.ox("TTMediationSDK", sb5.toString());
                n_();
                return;
            }
            StringBuilder sb6 = new StringBuilder();
            tn.h(sb6, this.kk, "当前层超时....P层广告池没广告或者数量不达标,尝试执行下层(不一定执行)....mTTPAdPoolList.size()=");
            sb6.append(this.r.size());
            com.bytedance.msdk.dq.s.ox.ox("TTMediationSDK", sb6.toString());
            int mp3 = mp(intValue2);
            if (mp3 >= 0) {
                p(mp3, false);
                return;
            }
            return;
        }
        if (i != 5) {
            return;
        }
        this.kx.set(true);
        if (op() && c()) {
            if (by()) {
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "SeverBidding广告成功返回且到达ClientBidding的等待时间，广告池中的广告数量满足...直接返回......");
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

    public void dq(int i, int i2, boolean z) {
        if (i2 < -100) {
            p(i, z);
            return;
        }
        if (i2 == -100) {
            dq(i + 1, z);
            return;
        }
        if (i2 != 0) {
            int no = no(i);
            if (no >= 0) {
                dq(no, z);
                return;
            }
            return;
        }
        for (int i3 = 0; i3 < yy(); i3++) {
            int i4 = i + i3 + 1;
            if (i4 < this.fw.size()) {
                dq(i4, z);
            }
        }
    }

    @Override // com.bytedance.msdk.core.mn.s, com.bytedance.msdk.core.mn.ox
    public void dq(int i, boolean z) {
        com.bytedance.msdk.core.no.d dVar = this.mn;
        if (dVar == null || !dVar.no()) {
            super.dq(i, z);
        } else {
            ox(i, z);
        }
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void dq(Message message) {
        com.bytedance.msdk.core.no.d dVar = this.mn;
        if (dVar == null || !dVar.no()) {
            super.dq(message);
        } else {
            d(message);
        }
    }

    @Override // com.bytedance.msdk.core.mn.s, com.bytedance.msdk.dq.dq.InterfaceC0063dq
    public void dq(com.bytedance.msdk.api.dq dqVar, com.bytedance.msdk.core.no.ox oxVar) {
        com.bytedance.msdk.core.no.d dVar = this.mn;
        if (dVar == null || !dVar.no()) {
            super.dq(dqVar, oxVar);
        } else {
            ox(dqVar, oxVar);
        }
    }

    @Override // com.bytedance.msdk.core.mn.s, com.bytedance.msdk.dq.dq.InterfaceC0063dq
    public void dq(List<com.bytedance.msdk.d.s> list, com.bytedance.msdk.core.no.ox oxVar) {
        com.bytedance.msdk.core.no.d dVar = this.mn;
        if (dVar == null || !dVar.no()) {
            super.dq(list, oxVar);
        } else {
            p(list, oxVar);
        }
    }

    public boolean ig(int i) {
        List<no> list;
        Handler handler;
        Handler handler2;
        Map<Integer, List<no>> map = this.ia;
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
        Message obtain = Message.obtain();
        if (z2) {
            obtain.what = 4;
            obtain.obj = i.dq(i);
        } else if (z3) {
            obtain.what = 5;
        } else if (z) {
            obtain.what = 1;
            obtain.arg1 = AVMDLDataLoader.KeyIsStoRingBufferSizeKB;
            obtain.obj = i.dq(i);
        }
        long j = z3 ? this.vf : this.j;
        if (!z4 && (handler2 = this.o) != null) {
            if (obtain.what == 4) {
                handler2.removeMessages(4, i.dq(i));
            } else if (obtain.arg1 == 10003) {
                handler2.removeMessages(1, i.dq(i));
            } else {
                handler2.removeMessages(1);
            }
            this.o.sendMessageDelayed(obtain, j);
        }
        if (this.wn != 0 && (handler = this.o) != null) {
            handler.removeMessages(3);
            this.o.sendEmptyMessageDelayed(3, this.wn);
        }
        return p(list);
    }

    public boolean io() {
        for (int i = 0; i < this.fw.size(); i++) {
            if (this.fw.get(i).intValue() < -100 && (this.xi.get(this.fw.get(i)).intValue() == 0 || this.xi.get(this.fw.get(i)).intValue() == 1)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.bytedance.msdk.core.mn.ox
    public void ji() {
        com.bytedance.msdk.core.no.d dVar = this.mn;
        if (dVar == null || !dVar.no()) {
            super.ji();
        } else {
            ig();
        }
    }

    public int kk(int i) {
        for (int i2 = 0; i2 < this.fw.size(); i2++) {
            int i3 = i + i2 + 1;
            if (i3 < this.fw.size()) {
                Integer num = this.fw.get(i3);
                num.intValue();
                if (this.xi.get(num) != null && this.xi.get(num).intValue() == 0) {
                    return i3;
                }
            }
        }
        return -1;
    }

    @Override // com.bytedance.msdk.core.mn.ox
    public void kx() {
        com.bytedance.msdk.core.no.d dVar = this.mn;
        if (dVar == null || !dVar.no()) {
            super.kx();
            return;
        }
        this.z = false;
        no();
        pa();
        ji();
    }

    public void m() {
        for (int i = 0; i < this.fw.size(); i++) {
            this.xi.put(this.fw.get(i), 0);
        }
    }

    @Override // com.bytedance.msdk.core.mn.s
    public boolean mn(int i) {
        com.bytedance.msdk.core.no.d dVar = this.mn;
        return (dVar == null || !dVar.no()) ? super.mn(i) : ig(i);
    }

    public int mp(int i) {
        int i2 = -1;
        for (int i3 = 0; i3 < this.fw.size(); i3++) {
            if (this.fw.get(i3).intValue() == i) {
                i2 = i3;
            }
        }
        return i2;
    }

    public int no(int i) {
        for (int i2 = 0; i2 < this.fw.size(); i2++) {
            int i3 = i + i2 + 1;
            if (i3 < this.fw.size()) {
                Integer num = this.fw.get(i3);
                if (num.intValue() > 0 && this.xi.get(num).intValue() == 0) {
                    return i3;
                }
            }
        }
        return -1;
    }

    public int o(int i) {
        for (int i2 = 0; i2 < this.fw.size(); i2++) {
            int i3 = i + i2 + 1;
            if (i3 < this.fw.size()) {
                Integer num = this.fw.get(i3);
                if (num.intValue() < -100 && this.xi.get(num).intValue() == 0) {
                    return i3;
                }
            }
        }
        return -1;
    }

    public void ox(int i, boolean z) {
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
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "层操作......index:" + i + "   层数：" + this.fw.get(i) + "的广告已经加载过了，开始执行下一层............：" + intValue);
            dq(i, intValue, false);
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
                this.xi.put(num, 3);
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
        if (this.xi.get(num) != null && this.xi.get(num).intValue() == 0) {
            this.xi.put(num, 1);
        }
        if (!mn(intValue)) {
            this.xi.put(num, 3);
            dq(i, intValue, false);
            return;
        }
        if (intValue == -100) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "层操作......ClientBidding、多阶、ServerBidding广告同时发起请求............");
            dq(i + 1, false);
        }
        if (intValue == 0) {
            tn.y(this.kk, "层操作......ServerBidding ,普通广告同时发起请求............", "TTMediationSDK", new StringBuilder());
            for (int i2 = 0; i2 < yy(); i2++) {
                int i3 = i + i2 + 1;
                if (i3 < this.fw.size()) {
                    dq(i3, false);
                }
            }
        }
    }

    public void ox(com.bytedance.msdk.api.dq dqVar, com.bytedance.msdk.core.no.ox oxVar) {
        iw iwVar;
        List<com.bytedance.msdk.d.s> list;
        List<com.bytedance.msdk.d.s> list2;
        com.bytedance.msdk.api.dq.d dVar;
        int no;
        if (this.o == null || oxVar == null) {
            return;
        }
        d((List<com.bytedance.msdk.d.s>) null, dqVar);
        if (dqVar != null) {
            iwVar = this;
            iwVar.dq(oxVar.mp(), oxVar.no(), oxVar.ig(), com.bytedance.msdk.d.dq.dq(oxVar.d(), oxVar.dq()), dqVar.ox, dqVar.p);
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(iwVar.kk) + "广告加载失败...........adnName:" + oxVar.no() + " ,slotId:" + oxVar.mp() + ",slotType:" + oxVar.ia() + ",loadSort:" + oxVar.kk() + ",showSort:" + oxVar.o() + " ，adError:" + dqVar.toString());
        } else {
            iwVar = this;
        }
        if (oxVar.ia() == 0 && s(oxVar.mp())) {
            return;
        }
        iwVar.le.dq(oxVar.mp());
        iwVar.le.ox(oxVar.kk());
        if (oxVar.s() || oxVar.p()) {
            iwVar.le.ox();
            fd();
        }
        if (oxVar.ox() && by() && h()) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(iwVar.kk) + "SeverBidding广告有返回结果且满足ClientBidding等待时间时广告池中有广告直接返回......");
            n_();
            return;
        }
        if (iwVar.p.get() || r()) {
            return;
        }
        List<com.bytedance.msdk.d.s> list3 = iwVar.r;
        if ((list3 == null || list3.size() <= 0) && (((list = iwVar.cd) == null || list.size() <= 0) && ((list2 = iwVar.gh) == null || list2.size() <= 0))) {
            if (!iwVar.le.dq() && iwVar.le.mn() && (dVar = iwVar.no) != null && !TextUtils.isEmpty(com.bytedance.msdk.core.fw.dq.dq(dVar.ce()))) {
                d(dqVar, oxVar);
                return;
            }
        } else if (!iwVar.le.dq() && iwVar.le.mn() && h()) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(iwVar.kk) + "所有层级和所有waterfall都已完成直接回调...");
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(iwVar.kk) + "当前广告池中有广告且满足client bididing的返回条件...给出成功回调...");
            n_();
            return;
        }
        if (oxVar.o() < -100) {
            if (iwVar.xi.get(Integer.valueOf(oxVar.o())) != null && iwVar.xi.get(Integer.valueOf(oxVar.o())).intValue() != 4) {
                Handler handler = iwVar.o;
                if (handler != null) {
                    handler.removeMessages(4, i.dq(oxVar.o()));
                }
                iwVar.xi.put(Integer.valueOf(oxVar.o()), 3);
                int mp = mp(oxVar.o());
                if (mp >= 0) {
                    com.bytedance.msdk.dq.s.ox.ox("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(iwVar.kk) + "当前level为：" + oxVar.o() + "的P层请求失败-----onAdFailed--》 加载下一层-nextIdx=" + mp);
                    p(mp, true);
                }
            }
        } else if (oxVar.mn() && iwVar.xi.get(Integer.valueOf(oxVar.o())) != null && iwVar.xi.get(Integer.valueOf(oxVar.o())).intValue() != 4) {
            Handler handler2 = iwVar.o;
            if (handler2 != null) {
                handler2.removeMessages(1, i.dq(oxVar.o()));
            }
            iwVar.xi.put(Integer.valueOf(oxVar.o()), 3);
            int mp2 = mp(oxVar.o());
            if (mp2 >= 0 && (no = no(mp2)) >= 0) {
                com.bytedance.msdk.dq.s.ox.ox("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(iwVar.kk) + "当前level为：" + oxVar.o() + "的普通层请求失败-----onAdFailed--》 加载下一层-nextIdx=" + no);
                dq(no, true);
            }
        }
        if ((iwVar.le.dq() || iwVar.le.mn()) && h()) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(iwVar.kk) + "所有广告都加载失败....");
            d(new com.bytedance.msdk.api.dq(20005, com.bytedance.msdk.api.dq.dq(20005)), oxVar);
        }
    }

    public void p(int i, boolean z) {
        int o = o(i);
        if (o >= 0) {
            dq(o, z);
            return;
        }
        if (!io() || this.z) {
            return;
        }
        this.z = true;
        int kk = kk(i);
        if (kk > 0) {
            if (this.fw.get(kk).intValue() > 0) {
                for (int i2 = 0; i2 < yy(); i2++) {
                    int i3 = kk + i2;
                    if (i3 < this.fw.size()) {
                        dq(i3, z);
                    }
                }
                return;
            }
            if (this.fw.get(kk).intValue() == 0) {
                dq(kk, z);
            } else {
                if (u()) {
                    return;
                }
                dq(kk, z);
            }
        }
    }

    public void p(List<com.bytedance.msdk.d.s> list, com.bytedance.msdk.core.no.ox oxVar) {
        if (this.o == null || oxVar == null) {
            return;
        }
        dq(list, this.mn);
        dq(oxVar.mp(), oxVar.no(), oxVar.ig(), com.bytedance.msdk.d.dq.dq(oxVar.d(), oxVar.dq()), 0, "广告加载成功");
        ox(list, oxVar);
        if (oxVar.ia() == 0 && !n.d(list)) {
            String b2 = list.get(0).b();
            if (s(b2)) {
                this.xi.put(Integer.valueOf(list.get(0).wq()), 3);
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
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "P层广告已经成功返回loadSort:" + list.get(0).ae() + " ,showSort:" + list.get(0).wq());
            this.xi.put(Integer.valueOf(list.get(0).wq()), 2);
            n_();
            return;
        }
        if (((!op() && !ir()) || (op() && c())) && !n.d(list) && list.get(0).jn() && by()) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "普通层广告已经成功返回loadSort:" + list.get(0).ae() + " ,showSort:" + list.get(0).wq());
            if (h()) {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "满足广告的返回条件...直接返回...");
                n_();
                return;
            }
            return;
        }
        if (oxVar.ox() && by() && h()) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "SeverBidding广告返回结果且满足ClientBidding等待时间时广告池中有广告直接返回......");
            n_();
            return;
        }
        if (this.le.mn() && h()) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "所有层级和所有waterfall都已完成直接回调...");
            n_();
        }
    }

    public void pa() {
        if (n.d(this.fw)) {
            return;
        }
        int intValue = this.fw.get(0).intValue();
        if (intValue < -100) {
            for (int i = 0; i < yy(); i++) {
                if (i < this.fw.size() && this.fw.get(i).intValue() < -100) {
                    dq(i, false);
                }
            }
            return;
        }
        if (intValue == -100 || intValue == 0) {
            dq(0, false);
            return;
        }
        for (int i2 = 0; i2 < yy(); i2++) {
            if (i2 < this.fw.size()) {
                dq(i2, false);
            }
        }
    }
}
