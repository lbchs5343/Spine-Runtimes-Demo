package com.bytedance.msdk.core.o;

import android.text.TextUtils;
import com.bytedance.msdk.core.no.no;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class ox {
    private static void d(double d2, double d3, double d4, com.bytedance.msdk.core.no.d dVar, List<no> list) {
        if (d3 < d4 || d3 <= 0.0d || d2 < dVar.e()) {
            return;
        }
        if (d2 > dVar.wp() && d4 <= 0.0d) {
            list.addAll(dVar.t());
            return;
        }
        BigDecimal valueOf = BigDecimal.valueOf(d2 * d3);
        RoundingMode roundingMode = RoundingMode.HALF_UP;
        double doubleValue = valueOf.setScale(2, roundingMode).doubleValue();
        double doubleValue2 = BigDecimal.valueOf(d2 * d4).setScale(2, roundingMode).doubleValue();
        List<no> t = dVar.t();
        double d5 = -1.0d;
        double d6 = -1.0d;
        for (int i = 0; i < t.size(); i++) {
            no noVar = t.get(i);
            if (noVar.gh() == 0) {
                double doubleValue3 = BigDecimal.valueOf(noVar.k()).setScale(2, RoundingMode.HALF_UP).doubleValue();
                if (doubleValue3 <= doubleValue && doubleValue3 >= doubleValue2) {
                    if (d5 == -1.0d || d5 < noVar.k()) {
                        d5 = noVar.k();
                    }
                    if (d6 == -1.0d || d6 > noVar.k()) {
                        d6 = noVar.k();
                    }
                    list.add(noVar);
                }
            } else {
                list.add(noVar);
            }
        }
        dVar.s().put("max_ecpm", Double.valueOf(d5));
        dVar.s().put("min_ecpm", Double.valueOf(d6));
        dVar.s().put("upper_cpm_x", Double.valueOf(doubleValue));
    }

    public static List<no> dq(com.bytedance.msdk.core.no.d dVar, String str) {
        return dq(dVar, str, 0.0d, 0.0d);
    }

    public static List<no> dq(com.bytedance.msdk.core.no.d dVar, String str, double d2, double d3) {
        int i;
        double d4;
        if (dVar == null || TextUtils.isEmpty(str)) {
            return null;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        com.bytedance.msdk.core.no.s s = com.bytedance.msdk.core.dq.d().s(str);
        if (s != null) {
            double dq = s.dq();
            double d5 = s.d();
            int ox = s.ox();
            if (dVar.iw() == 3 || dVar.iw() == 4) {
                i = 1;
                double[] dq2 = d.p().dq(dVar.iw(), d2, d3, dVar.ir(), str);
                d4 = dq2[0];
                dVar.s().put("price_from", Integer.valueOf((int) dq2[1]));
            } else {
                d4 = dVar.iw() == 2 ? d.p().dq(3, str, ox) : 0.0d;
                i = 1;
            }
            if (!s.s() && d4 > 0.0d) {
                if (s.getType() == i) {
                    d(d4, dq, d5, dVar, copyOnWriteArrayList);
                } else if (s.getType() == 2) {
                    dq(d4, dq, d5, dVar, copyOnWriteArrayList);
                }
                List<com.bytedance.msdk.core.no.p> iw = com.bytedance.msdk.core.dq.d().iw(String.valueOf(dVar.ce()));
                if (iw != null) {
                    Iterator<com.bytedance.msdk.core.no.p> it = iw.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        com.bytedance.msdk.core.no.p next = it.next();
                        if (d4 > next.iw() && d4 <= next.s()) {
                            dVar.s().put("user_label_value", next);
                            break;
                        }
                    }
                }
            }
            dVar.s().put("rule_id", s.p());
            dVar.s().put(MediationConstant.KEY_ECPM, Double.valueOf(d4));
            dVar.s().put("rule_in_use", Integer.valueOf(copyOnWriteArrayList.size() == 0 ? 0 : 1));
            dVar.s().put("group_type", Integer.valueOf(dVar.iw()));
        }
        if (com.bytedance.msdk.dq.s.ox.d()) {
            if (copyOnWriteArrayList.size() != 0) {
                for (int i2 = 0; i2 < copyOnWriteArrayList.size(); i2++) {
                    com.bytedance.msdk.dq.s.ox.dq("DynamicRuleCalculate", "rit：" + ((no) copyOnWriteArrayList.get(i2)).cd() + ",level：" + ((no) copyOnWriteArrayList.get(i2)).wp());
                }
            } else {
                com.bytedance.msdk.dq.s.ox.dq("DynamicRuleCalculate", "走原waterfall，inUse ： 不生效");
            }
        }
        return copyOnWriteArrayList.size() != 0 ? copyOnWriteArrayList : dVar.t();
    }

    private static void dq(double d2, double d3, double d4, com.bytedance.msdk.core.no.d dVar, List<no> list) {
        if (dVar == null || d3 == 0.0d || d2 < dVar.e()) {
            return;
        }
        if (d2 <= dVar.wp() || d4 > 0.0d) {
            dq(dVar, d2, d3, d4, list);
        } else {
            list.addAll(dVar.t());
        }
    }

    public static void dq(com.bytedance.msdk.core.no.d dVar, double d2, double d3, double d4, List<no> list) {
        double d5;
        Map<Integer, List<no>> l = dVar.l();
        if (l != null) {
            ArrayList arrayList = new ArrayList(l.keySet());
            ArrayList arrayList2 = new ArrayList();
            int i = 0;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                if (((Integer) arrayList.get(i2)).intValue() > 0) {
                    arrayList2.add(arrayList.get(i2));
                } else {
                    List<no> list2 = l.get(arrayList.get(i2));
                    if (list2 != null) {
                        list.addAll(list2);
                    }
                }
            }
            com.bytedance.msdk.core.mn.d.dq(arrayList2);
            int size = arrayList2.size();
            if (size <= 0) {
                return;
            }
            int i3 = -1;
            int i4 = size;
            for (int i5 = 0; i5 < arrayList2.size(); i5++) {
                double d6 = i5;
                List<no> list3 = l.get(arrayList2.get(i5));
                if (list3 != null) {
                    int i6 = 0;
                    while (true) {
                        if (i6 >= list3.size()) {
                            break;
                        }
                        no noVar = list3.get(i6);
                        if (noVar != null && noVar.gh() == 0) {
                            double doubleValue = BigDecimal.valueOf(noVar.k()).setScale(2, RoundingMode.HALF_UP).doubleValue();
                            if (d2 == doubleValue) {
                                if (i3 < 0) {
                                    i3 = Math.max((int) (d6 - d3), 0);
                                }
                                if (i4 == size || d2 == doubleValue) {
                                    if (d4 > 0.0d) {
                                        i4 = Math.min((int) (d6 + d4), size - 1);
                                    }
                                }
                            } else if (d2 > doubleValue) {
                                if (i3 < 0) {
                                    d5 = 2.0d;
                                    i3 = Math.max((int) Math.ceil((((d6 - 1.0d) + d6) / 2.0d) - d3), 0);
                                } else {
                                    d5 = 2.0d;
                                }
                                if (i4 == size) {
                                    if (d4 > 0.0d) {
                                        i4 = Math.min((int) Math.floor((((d6 - 1.0d) + d6) / d5) + d4), size - 1);
                                    }
                                }
                            }
                        }
                        i6++;
                    }
                    i4 = size - 1;
                }
            }
            if (i3 < 0) {
                i3 = 0;
            }
            if (i4 >= size) {
                i4 = size - 1;
            }
            int i7 = i3;
            double d7 = -1.0d;
            double d8 = -1.0d;
            double d9 = -1.0d;
            while (i7 <= i4) {
                List<no> list4 = l.get(arrayList2.get(i7));
                if (list4 != null && list4.size() != 0) {
                    while (i < list4.size()) {
                        no noVar2 = list4.get(i);
                        if (noVar2 != null) {
                            if (d8 < noVar2.k() || d8 == -1.0d) {
                                d8 = noVar2.k();
                            }
                            if (d9 > noVar2.k() || d9 == -1.0d) {
                                d9 = noVar2.k();
                            }
                            list.add(noVar2);
                            if (i7 == i3) {
                                d7 = d8;
                            }
                        }
                        i++;
                    }
                }
                i7++;
                i = 0;
            }
            dVar.s().put("upper_cpm_x", Double.valueOf(d7));
            dVar.s().put("max_ecpm", Double.valueOf(d8));
            dVar.s().put("min_ecpm", Double.valueOf(d9));
        }
    }
}
