package com.bytedance.msdk.core.mn;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.msdk.core.dq.kk;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.dq.ox.ig;
import com.bytedance.msdk.dq.ox.mp;
import com.bytedance.msdk.ia.bl;
import com.bytedance.msdk.ia.ir;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.hat;
import g.tn;
import java.util.Calendar;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes.dex */
public class mn {

    /* renamed from: d, reason: collision with root package name */
    private static String f961d = "KEY_LOAD_SEQ";
    private static Comparator<com.bytedance.msdk.d.s> dq = null;
    private static String ox = "KEY_LOAD_SEQ_TIME";

    public static com.bytedance.msdk.dq.dq d(no noVar) {
        if (noVar != null && noVar.jy().equals(MediationConstant.ADN_PANGLE)) {
            return p(noVar);
        }
        if (dq(noVar)) {
            return ox(noVar);
        }
        com.bytedance.msdk.dq.s.ox.d("TMe", "getAndCheckTTAbsAdLoaderAdapter fail");
        return null;
    }

    public static Comparator<com.bytedance.msdk.d.s> d() {
        Comparator<com.bytedance.msdk.d.s> comparator = new Comparator<com.bytedance.msdk.d.s>() { // from class: com.bytedance.msdk.core.mn.mn.1
            @Override // java.util.Comparator
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public int compare(com.bytedance.msdk.d.s sVar, com.bytedance.msdk.d.s sVar2) {
                if (sVar.dk() > sVar2.dk()) {
                    return -1;
                }
                if (sVar.dk() < sVar2.dk()) {
                    return 1;
                }
                return (sVar.dk() == sVar2.dk() && sVar.hf() == 1) ? -1 : 0;
            }
        };
        dq = comparator;
        return comparator;
    }

    public static boolean d(String str) {
        return true;
    }

    private static boolean d(String str, com.bytedance.msdk.d.s sVar) {
        if (sVar == null) {
            return false;
        }
        com.bytedance.msdk.core.no.d dq2 = com.bytedance.msdk.core.dq.d().dq(str, sVar.qz(), 101);
        return com.bytedance.msdk.core.dq.d().d(str, sVar.qz()) && dq2 != null && dq2.u() != null && dq2.u().size() > 0 && dq2.kx() != null && dq2.kx().size() > 0;
    }

    public static no dq(String str, String str2, int i, int i2) {
        no noVar = new no();
        noVar.ox(str2);
        noVar.s(str);
        noVar.o(0);
        noVar.iw("0");
        noVar.d("1");
        noVar.no(i);
        noVar.ig(i2);
        noVar.kk(3);
        noVar.dq("%1$s%2$sAdapter");
        return noVar;
    }

    public static String dq(String str) {
        return !TextUtils.isEmpty(str) ? str.substring(0, 1).toUpperCase().concat(str.substring(1).toLowerCase()) : str;
    }

    public static String dq(String str, String str2, String str3) {
        if (TextUtils.equals(MediationConstant.ADN_PANGLE, com.bytedance.msdk.d.dq.dq(str2)) && com.bytedance.msdk.core.d.no().ce()) {
            return "com.bytedance.msdk.adapter.panglecustom.".concat(String.format(str, "PangleCustom", str3));
        }
        return "com.bytedance.msdk.adapter." + com.bytedance.msdk.d.dq.dq(str2) + "." + String.format(str, str2, str3);
    }

    public static Comparator<com.bytedance.msdk.d.s> dq() {
        Comparator<com.bytedance.msdk.d.s> comparator = dq;
        return comparator != null ? comparator : d();
    }

    public static Map<String, Object> dq(no noVar, com.bytedance.msdk.api.dq.d dVar, Map<String, Object> map, com.bytedance.msdk.api.p.no noVar2, int i, int i2, boolean z, long j) {
        HashMap hashMap = new HashMap();
        com.bytedance.msdk.core.no.dq dq2 = com.bytedance.msdk.core.dq.d().dq(noVar.jy());
        if (dq2 != null) {
            hashMap.put("tt_ad_network_config_appid", dq2.dq());
            hashMap.put("tt_ad_network_config_appKey", dq2.d());
        } else {
            String jy = noVar.jy();
            String dq3 = noVar2 != null ? com.bytedance.msdk.d.dq.dq(noVar2.dq()) : null;
            if (noVar2 != null && noVar.wp() == -4 && !TextUtils.isEmpty(jy) && jy.equals(dq3)) {
                hashMap.put("tt_ad_network_config_appid", noVar2.ox());
                hashMap.put("tt_ad_network_config_appKey", noVar2.p());
            }
        }
        hashMap.put("tt_ad_origin_type", Integer.valueOf(noVar.o()));
        hashMap.put("tt_ad_sub_type", Integer.valueOf(noVar.iw()));
        if (dVar != null) {
            if (dVar.wn() != null) {
                hashMap.putAll(dVar.wn());
            }
            int e2 = dVar.e();
            int kx = dVar.kx();
            if (e2 < 0) {
                e2 = 0;
            }
            if (kx < 0) {
                kx = 0;
            }
            tn.e(kx, hashMap, "ad_height", e2, "ad_width");
            hashMap.put("ad_type", Integer.valueOf(dVar.le()));
        }
        tn.e(i, hashMap, "key_mediation_rit_req_type", i2, "key_mediation_rit_req_type_src");
        hashMap.put("key_is_from_developer_req", Boolean.valueOf(z));
        hashMap.put("key_requestwfb_ms", Long.valueOf(j));
        if (map != null && map.size() > 0) {
            hashMap.putAll(map);
        }
        return hashMap;
    }

    public static void dq(com.bytedance.msdk.api.dq dqVar, no noVar) {
        if (!com.bytedance.msdk.core.dq.d().vf() || dqVar == null || noVar == null) {
            return;
        }
        if (820001 == dqVar.dq) {
            com.bytedance.msdk.api.p.dq(com.bytedance.msdk.core.dq.getContext(), String.format("error_adn:%1$s no ads，please check ad network", noVar.fw()));
        } else {
            com.bytedance.msdk.api.p.dq(com.bytedance.msdk.core.dq.getContext(), String.format("test error_adn:%1$s  error_slot_id: %2$s  error_code:%3$d  error_message:%4$s", noVar.fw(), noVar.cd(), Integer.valueOf(dqVar.ox), dqVar.p));
        }
    }

    public static void dq(com.bytedance.msdk.api.dq dqVar, com.bytedance.msdk.core.no.ox oxVar) {
        if (!com.bytedance.msdk.core.dq.d().vf() || dqVar == null || oxVar == null) {
            return;
        }
        if (820001 == dqVar.dq) {
            com.bytedance.msdk.api.p.dq(com.bytedance.msdk.core.dq.getContext(), String.format("error_adn:%1$s no ads，please check ad network", oxVar.no()));
        } else {
            com.bytedance.msdk.api.p.dq(com.bytedance.msdk.core.dq.getContext(), String.format("test error_adn:%1$s  error_slot_id: %2$s  error_code:%3$d  error_message:%4$s", oxVar.no(), oxVar.mp(), Integer.valueOf(dqVar.ox), dqVar.p));
        }
    }

    public static void dq(String str, no noVar, com.bytedance.msdk.d.s sVar) {
        if (com.bytedance.msdk.core.dq.d().vf() && noVar != null && d(str, sVar)) {
            com.bytedance.msdk.api.p.dq(com.bytedance.msdk.core.dq.getContext(), String.format("fill_suceess ,test_adn:%1$s,slot_id : %2$s", noVar.jy(), Integer.valueOf(noVar.gh())));
        }
    }

    public static void dq(String str, com.bytedance.msdk.core.no.ox oxVar, com.bytedance.msdk.d.s sVar) {
        if (com.bytedance.msdk.core.dq.d().vf() && oxVar != null && d(str, sVar)) {
            com.bytedance.msdk.api.p.dq(com.bytedance.msdk.core.dq.getContext(), String.format("fill_suceess ,test_adn:%1$s,slot_id : %2$s", oxVar.no(), oxVar.mp()));
        }
    }

    public static void dq(String str, com.bytedance.msdk.d.s sVar) {
        if (com.bytedance.msdk.core.dq.d().vf() && sVar != null && d(str, sVar)) {
            com.bytedance.msdk.api.p.dq(com.bytedance.msdk.core.dq.getContext(), String.format("test_suceess ,test_adn:%1$s,slot_id : %2$s", com.bytedance.msdk.d.dq.dq(sVar.hf()), sVar.b()));
        }
    }

    public static void dq(List<com.bytedance.msdk.d.s> list, Comparator<com.bytedance.msdk.d.s> comparator) {
        if (comparator == null) {
            ir.dq(list);
        } else {
            ir.dq(list, comparator);
        }
    }

    public static boolean dq(no noVar) {
        if (noVar != null && TextUtils.equals(noVar.jy(), MediationConstant.ADN_PANGLE)) {
            return true;
        }
        if (noVar == null) {
            return false;
        }
        Bridge mn = com.bytedance.msdk.core.mp.dq.dq().mn();
        if (mn == null) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "load ad check class loader is null ");
            return false;
        }
        String iw = iw(noVar);
        if (TextUtils.isEmpty(iw)) {
            return false;
        }
        hat f2 = hat.f();
        f2.n(AVMDLDataLoader.KeyIsLiveMobileUploadAllow, iw);
        return ((Boolean) mn.call(8229, f2.k(), Boolean.class)).booleanValue();
    }

    private static boolean dq(Date date, Date date2) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(date2);
        return calendar.get(1) == calendar2.get(1) && calendar.get(2) == calendar2.get(2) && calendar.get(5) == calendar2.get(5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b9, code lost:
    
        if (r2 == 2) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00c4, code lost:
    
        if (r2 != 7) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00cf, code lost:
    
        if (r2 == 3) goto L74;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String iw(no noVar) {
        String str;
        String str2 = "";
        if (noVar == null) {
            return "";
        }
        String jy = noVar.jy();
        jy.getClass();
        switch (jy) {
            case "klevin":
                str = "com.bytedance.msdk.adapter.klevin.Klevin";
                break;
            case "pangle":
                str = "com.bytedance.msdk.adapter.pangle_csjm.Pangle";
                break;
            case "sigmob":
                str = "com.bytedance.msdk.adapter.sigmob.Sigmob";
                break;
            case "ks":
                str = "com.bytedance.msdk.adapter.ks.Ks";
                break;
            case "gdt":
                str = "com.bytedance.msdk.adapter.gdt.Gdt";
                break;
            case "admob":
                str = "com.bytedance.msdk.adapter.admob.Admob";
                break;
            case "baidu":
                str = "com.bytedance.msdk.adapter.baidu.Baidu";
                break;
            case "unity":
                str = "com.bytedance.msdk.adapter.unity.Unity";
                break;
            case "mintegral":
                str = "com.bytedance.msdk.adapter.mintegral.Mintegral";
                break;
            default:
                str = "";
                break;
        }
        int iw = noVar.iw();
        switch (noVar.mp()) {
            case 1:
                str2 = "BannerLoader";
                break;
            case 2:
                str2 = "InterstitialLoader";
                break;
            case 3:
                str2 = "SplashLoader";
                break;
            case 5:
                str2 = "NativeLoader";
                if (iw != 4) {
                    if (iw != 5) {
                    }
                    str2 = "DrawLoader";
                    break;
                }
                break;
            case 7:
                str2 = "RewardLoader";
                if (iw != 6) {
                }
                break;
            case 8:
                str2 = "FullVideoLoader";
                break;
            case 9:
                str2 = "DrawLoader";
                break;
            case 10:
                if (iw != 1) {
                }
                str2 = "InterstitialLoader";
                break;
        }
        return str.concat(str2);
    }

    public static com.bytedance.msdk.dq.dq ox(no noVar) {
        if (noVar != null) {
            return s(noVar);
        }
        return null;
    }

    public static String ox() {
        return UUID.randomUUID().toString();
    }

    public static int p() {
        long d2 = bl.dq((String) null, com.bytedance.msdk.core.dq.getContext()).d(ox, 0L);
        long currentTimeMillis = System.currentTimeMillis();
        boolean dq2 = dq(new Date(d2), new Date(currentTimeMillis));
        bl.dq((String) null, com.bytedance.msdk.core.dq.getContext()).dq(ox, currentTimeMillis);
        int d3 = (dq2 ? bl.dq((String) null, com.bytedance.msdk.core.dq.getContext()).d(f961d, 0) : 0) + 1;
        bl.dq((String) null, com.bytedance.msdk.core.dq.getContext()).dq(f961d, d3);
        return d3;
    }

    private static com.bytedance.msdk.dq.dq p(no noVar) {
        if (noVar == null) {
            return null;
        }
        int iw = noVar.iw();
        switch (noVar.mp()) {
            case 1:
                return new com.bytedance.msdk.dq.ox.ox();
            case 2:
                return new com.bytedance.msdk.dq.ox.ia();
            case 3:
                return new mp();
            case 4:
            case 6:
            default:
                return null;
            case 5:
                return iw == 4 ? new com.bytedance.msdk.dq.ox.no() : iw == 5 ? new com.bytedance.msdk.dq.ox.iw() : iw == 3 ? new com.bytedance.msdk.dq.ox.ox() : new com.bytedance.msdk.dq.ox.no();
            case 7:
                if (iw != 6 && iw == 7) {
                    return new com.bytedance.msdk.dq.ox.mn();
                }
                return new ig();
            case 8:
                return new com.bytedance.msdk.dq.ox.mn();
            case 9:
                return new com.bytedance.msdk.dq.ox.iw();
            case 10:
                if (iw == 1) {
                    return new com.bytedance.msdk.dq.ox.ia();
                }
                if (iw == 2) {
                    return new com.bytedance.msdk.dq.ox.mn();
                }
                return null;
        }
    }

    private static com.bytedance.msdk.dq.dq s(no noVar) {
        return new kk(iw(noVar));
    }

    public static void s() {
        if (com.bytedance.msdk.core.dq.d().vf()) {
            com.bytedance.msdk.api.p.dq(com.bytedance.msdk.core.dq.getContext(), "slot setting error");
        }
    }
}
