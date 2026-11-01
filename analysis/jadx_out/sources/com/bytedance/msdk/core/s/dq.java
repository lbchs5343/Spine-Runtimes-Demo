package com.bytedance.msdk.core.s;

import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.msdk.api.dq.d;
import com.bytedance.msdk.core.s.d.ig;
import com.bytedance.msdk.d.s;
import com.bytedance.msdk.dq.s.ox;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.awf;
import g.dub;
import g.tn;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class dq {
    private final Map<String, Integer> dq = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    private final Map<String, Integer> f1024d = new HashMap();

    public static boolean dq(d dVar, d dVar2, s sVar) {
        if (dVar == null || dVar2 == null) {
            ox.dq("TMe", "--==-- adSlot = null, a1: " + dVar + ", a2: " + dVar2);
            return false;
        }
        if (dVar.u() != dVar2.u()) {
            ox.dq("TMe", "--==-- orientation, a1: " + dVar.u() + ", a2: " + dVar2.u());
            return false;
        }
        if (dVar.c() != dVar2.c()) {
            ox.dq("TMe", "--==-- isMuted, a1: " + dVar.c() + ", a2: " + dVar2.c());
            return false;
        }
        if (dVar.e() != dVar2.e()) {
            ox.dq("TMe", "--==-- ImgWidth, a1: " + dVar.e() + ", a2: " + dVar2.e());
            return false;
        }
        if (dVar.kx() != dVar2.kx()) {
            ox.dq("TMe", "--==-- ImgHeight, a1: " + dVar.kx() + ", a2: " + dVar2.kx());
            return false;
        }
        if (dVar.bl() == null || dVar2.bl() == null) {
            if (dVar.bl() != null || dVar2.bl() != null) {
                ox.dq("TMe", "--==-- rewardName=null, a1: " + dVar.bl() + ", a2: " + dVar2.bl());
                return false;
            }
        } else if (!dVar.bl().equals(dVar2.bl())) {
            ox.dq("TMe", "--==-- rewardName, a1: " + dVar.bl() + ", a2: " + dVar2.bl());
            return false;
        }
        if (dVar.n() != dVar2.n()) {
            ox.dq("TMe", "--==-- rewardAmount, a1: " + dVar.n() + ", a2: " + dVar2.n());
            return false;
        }
        if (dVar.ir() == null || dVar2.ir() == null) {
            if (dVar.ir() != null || dVar2.ir() != null) {
                ox.dq("TMe", "--==-- reward, userId=null, a1: " + dVar.ir() + ", a2: " + dVar2.ir());
                return false;
            }
        } else if (!dVar.ir().equals(dVar2.ir())) {
            ox.dq("TMe", "--==-- reward, userId, a1: " + dVar.ir() + ", a2: " + dVar2.ir());
            return false;
        }
        if (dVar.wn() != null && dVar2.wn() != null) {
            if (dq(dVar.wn(), dVar2.wn())) {
                return true;
            }
            ox.dq("TMe", "--==-- customData, a1: " + dVar.wn().toString() + ", a2: " + dVar2.wn().toString());
            return false;
        }
        if (dVar.wn() == null && dVar2.wn() == null) {
            return true;
        }
        ox.dq("TMe", "--==-- customData=null, a1: " + dVar.wn() + ", a2: " + dVar2.wn());
        return false;
    }

    public static boolean dq(Map<String, Object> map, Map<String, Object> map2) {
        if (map == null && map2 == null) {
            return true;
        }
        if (map == null || map2 == null || map.size() != map2.size()) {
            return false;
        }
        Set<String> keySet = map.keySet();
        if (keySet != null) {
            for (String str : keySet) {
                if (str != null) {
                    Object obj = map.get(str);
                    String str2 = obj instanceof String ? (String) obj : null;
                    Object obj2 = map2.get(str);
                    String str3 = obj2 instanceof String ? (String) obj2 : null;
                    if (str2 != null || str3 != null) {
                        if (!TextUtils.equals(str2, str3)) {
                            return false;
                        }
                    }
                }
            }
        }
        return true;
    }

    public int d(String str, String str2) {
        Integer num = this.f1024d.get(str + "_" + str2);
        if (num != null) {
            return num.intValue();
        }
        return 1;
    }

    public void d(String str, String str2, int i) {
        this.f1024d.put(awf.i(str, "_", str2), Integer.valueOf(i));
    }

    public int dq(ig igVar, d dVar, d dVar2, String str) {
        if (igVar == null || igVar.dq == null) {
            return 4;
        }
        String k = dVar2 != null ? dVar2.k() : "";
        String m = igVar.dq.m();
        String b2 = igVar.dq.b();
        MediationConstant.AdIsReadyStatus kx = igVar.dq.kx();
        if (kx == MediationConstant.AdIsReadyStatus.ADN_NO_READY_API) {
            if (igVar.dq.xi()) {
                dub.k(tn.o("--==-- ", str, ":广告已show过 ---: ", m, ", adSlotId: "), b2, "TTMediationSDK");
                return 7;
            }
            if (dq(k, igVar.dq)) {
                dub.k(tn.o("--==-- ", str, ":广告过期了(M配置) ---: ", m, ", adSlotId: "), b2, "TTMediationSDK");
                return 2;
            }
            if (dq(dVar, dVar2, igVar.dq)) {
                dub.k(tn.o("--==-- ", str, ":复用成功：---", m, ", adSlotId: "), b2, "TTMediationSDK");
                return -1;
            }
            dub.k(tn.o("--==-- ", str, ":AdSlot不符合 ---: ", m, ", adSlotId: "), b2, "TTMediationSDK");
            return 6;
        }
        if (igVar.dq.xi()) {
            dub.k(tn.o("--==-- ", str, ":广告已show过 ---: ", m, ", adSlotId: "), b2, "TTMediationSDK");
            return 7;
        }
        if (kx == MediationConstant.AdIsReadyStatus.AD_IS_EXPIRED) {
            dub.k(tn.o("--==-- ", str, ":广告过期了(adn api) ---: ", m, ", adSlotId: "), b2, "TTMediationSDK");
            return 1;
        }
        if (kx == MediationConstant.AdIsReadyStatus.AD_IS_NOT_READY) {
            dub.k(tn.o("--==-- ", str, ":isReady是false ---: ", m, ", adSlotId: "), b2, "TTMediationSDK");
            return 5;
        }
        if (dq(dVar, dVar2, igVar.dq)) {
            dub.k(tn.o("--==-- ", str, ":复用成功：---", m, ", adSlotId: "), b2, "TTMediationSDK");
            return -1;
        }
        dub.k(tn.o("--==-- ", str, ":AdSlot不符合 ---: ", m, ", adSlotId: "), b2, "TTMediationSDK");
        return 6;
    }

    public int dq(String str, String str2) {
        Integer num = this.dq.get(str + "_" + str2);
        if (num != null) {
            return num.intValue();
        }
        return 1800000;
    }

    public void dq(String str, String str2, int i) {
        this.dq.put(awf.i(str, "_", str2), Integer.valueOf(i));
    }

    public final boolean dq(String str, s sVar) {
        if (sVar == null || sVar.s()) {
            ox.dq("TTMediationSDK", "--==-- 广告已经destroy了，视为过期 ------");
            return true;
        }
        boolean z = SystemClock.elapsedRealtime() > sVar.z() + ((long) dq(str, sVar.b()));
        ox.dq("TTMediationSDK", "--==-- 使用了配置的过期时间进行判断 ------");
        return z;
    }
}
