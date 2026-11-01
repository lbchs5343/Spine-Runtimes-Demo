package com.bytedance.msdk.ia.d;

import com.bytedance.msdk.core.no.d;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.core.s.d.ig;
import com.bytedance.msdk.dq.s.ox;
import com.bytedance.msdk.dq.s.s;
import com.bytedance.msdk.s.iw;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class dq {
    public static boolean d(d dVar) {
        if (dVar == null) {
            return false;
        }
        int ce = dVar.ce();
        Map<String, Integer> v = com.bytedance.msdk.core.dq.d().v();
        if (v == null) {
            return false;
        }
        Integer num = v.get(String.valueOf(ce));
        if (num != null) {
            return num.intValue() == 1;
        }
        Integer num2 = v.get("-1");
        return num2 != null && num2.intValue() == 1;
    }

    public static void dq(com.bytedance.msdk.ox.s.dq.d dVar, no noVar, int i) {
        if (dVar == null || dVar.gh() == null || noVar == null) {
            return;
        }
        com.bytedance.msdk.api.dq.d gh = dVar.gh();
        String k = gh.k();
        ox.d("TTMediationSDK", s.dq(k) + "----------总超时后尝试从复用池中查找广告：id:" + noVar.cd() + "   loadSort:" + noVar.wp() + "  showSort:" + noVar.e() + "   adnName:" + noVar.jy());
        String cd = noVar.cd();
        if (noVar.r() && com.bytedance.msdk.core.s.dq.dq.dq().p(k, cd, gh.s()) && com.bytedance.msdk.core.s.dq.dq.dq().dq(cd, gh, true) == 3) {
            ox.d("TTMediationSDK", s.dq(k) + "----------可复用：id:" + noVar.cd() + "   loadSort:" + noVar.wp() + "  showSort:" + noVar.e() + "   adnName:" + noVar.jy());
            com.bytedance.msdk.core.s.dq.dq.dq().dq(k, cd, noVar, i);
            List<ig> dq = com.bytedance.msdk.core.s.dq.dq.dq().dq(cd, gh, gh.s());
            if (dq == null || dq.size() <= 0) {
                return;
            }
            int ia = dq.get(0).dq.ia(gh.dq());
            iw.dq(noVar, gh, com.bytedance.msdk.core.s.dq.dq.dq().dq(cd), !dVar.k(), 4, i, 3, ia, (com.bytedance.msdk.api.dq) null, -1L, dVar.d(), true);
            ArrayList arrayList = new ArrayList();
            for (ig igVar : dq) {
                igVar.dq.o(3);
                igVar.dq.no(ia);
                igVar.dq.p(dVar.d());
                igVar.dq.ox(true);
                dq(k, igVar.dq, cd);
                arrayList.add(igVar.dq);
            }
            iw.dq(dq.get(0).dq, 0, "adn cache命中", 0L, gh, i, arrayList.size(), 4, (String) null, 0L, -1L);
            com.bytedance.msdk.ox.mn.dq.dq(dVar, arrayList, true);
            com.bytedance.msdk.d.s sVar = (com.bytedance.msdk.d.s) arrayList.get(0);
            if (sVar.w()) {
                dVar.dq(arrayList);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    com.bytedance.msdk.d.s sVar2 = (com.bytedance.msdk.d.s) it.next();
                    ox.dq("TTMediationSDK", s.dq(k) + "复用池回溯成功...........回溯到了P层广告_当前P层广告缓存池数量：" + dVar.mn().size() + ",slotId：" + sVar2.b() + ",广告类型：" + sVar2.m() + ",loadSort=" + sVar2.ae() + ",showSort=" + sVar2.wq() + ",CPM=" + sVar2.dk());
                }
                return;
            }
            if (sVar.jn()) {
                dVar.dq(arrayList);
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    com.bytedance.msdk.d.s sVar3 = (com.bytedance.msdk.d.s) it2.next();
                    ox.dq("TTMediationSDK", s.dq(k) + "复用池回溯成功...........回溯到了普通层广告_当前普通广告缓存池数量：" + dVar.ia().size() + ",slotId：" + sVar3.b() + ",广告类型：" + sVar3.m() + ",loadSort=" + sVar3.ae() + ",showSort=" + sVar3.wq() + ",CPM=" + sVar3.dk());
                }
            }
        }
    }

    private static void dq(String str, com.bytedance.msdk.d.s sVar, String str2) {
        no s = com.bytedance.msdk.core.s.dq.dq.dq().s(str, str2);
        if (sVar == null || s == null) {
            return;
        }
        sVar.cd(s.wp());
        sVar.fw(s.e());
        sVar.q(s.q());
        sVar.f(s.gh());
        sVar.dq(s.k());
    }

    public static boolean dq(d dVar) {
        if (dVar == null) {
            return false;
        }
        int ce = dVar.ce();
        Map<String, Integer> yy = com.bytedance.msdk.core.dq.d().yy();
        if (yy == null) {
            return false;
        }
        Integer num = yy.get(String.valueOf(ce));
        if (num != null) {
            return num.intValue() == 1;
        }
        Integer num2 = yy.get("-1");
        return num2 != null && num2.intValue() == 1;
    }

    public static boolean dq(com.bytedance.msdk.ox.s.dq.d dVar, List<Integer> list, Map<Integer, List<no>> map) {
        if (dVar != null && dVar.gh() != null) {
            String k = dVar.gh().k();
            if (list != null && list.size() != 0 && map != null && map.size() != 0) {
                for (Integer num : list) {
                    num.intValue();
                    List<no> list2 = map.get(num);
                    if (list2 != null && list2.size() != 0) {
                        for (no noVar : list2) {
                            if (noVar != null) {
                                if (noVar.p() && !com.bytedance.msdk.core.kk.no.dq().ox(k, noVar.cd())) {
                                    ox.dq("TTMediationSDK", s.dq(k) + "adn 请求触发次数拦截............");
                                } else if (noVar.p() && !com.bytedance.msdk.core.kk.ig.dq().ox(k, noVar.cd())) {
                                    ox.dq("TTMediationSDK", s.dq(k) + "adn 请求触发时间间隔拦截............");
                                } else if (com.bytedance.msdk.core.kk.ox.dq().dq(noVar.jy(), noVar.cd())) {
                                    dq(dVar, noVar, list2.size());
                                    if (dVar.jy()) {
                                        ox.dq("TTMediationSDK", s.dq(k) + "回溯到了满足数量的广告.......有广告回调成功");
                                        return true;
                                    }
                                } else {
                                    ox.dq("TTMediationSDK", s.dq(k) + "adn 请求触发了错误码拦截............");
                                }
                            }
                        }
                    }
                }
                if (dVar.mn().size() <= 0 && dVar.ia().size() <= 0 && dVar.o().size() <= 0) {
                    return false;
                }
                ox.dq("TTMediationSDK", s.dq(k) + "回溯到了广告.......有广告回调成功");
                return true;
            }
        }
        return false;
    }
}
