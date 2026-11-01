package com.bytedance.msdk.core.jy;

import android.content.Context;
import android.os.SystemClock;
import android.service.quicksettings.TileService;
import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.msdk.core.kk.ig;
import com.bytedance.msdk.core.mn.mn;
import com.bytedance.msdk.core.no.ia;
import com.bytedance.msdk.core.no.kk;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.d.s;
import com.bytedance.msdk.dq.dq.p;
import com.bytedance.msdk.dq.s.iw;
import com.bytedance.msdk.dq.s.ox;
import com.bytedance.msdk.ia.bl;
import com.bytedance.msdk.ia.c;
import com.bytedance.msdk.ia.e;
import com.bytedance.msdk.ia.gh;
import com.bytedance.msdk.ia.n;
import com.bytedance.msdk.ia.q;
import com.bytedance.msdk.ia.wp;
import com.bytedance.msdk.iw.d.d;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.abn;
import g.awf;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {
    private static volatile dq dq;

    /* renamed from: com.bytedance.msdk.core.jy.dq$dq, reason: collision with other inner class name */
    public interface InterfaceC0058dq {
        void dq(com.bytedance.msdk.api.dq dqVar);

        void dq(ia iaVar);
    }

    private String d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            com.bytedance.msdk.api.p.dq.d.iw.dq dq2 = com.bytedance.msdk.iw.d.dq.dq(str);
            if (dq2 != null) {
                return dq2.dq();
            }
            p dq3 = d.dq().dq(str);
            if (dq3 == null) {
                return null;
            }
            return dq3.d();
        } catch (Throwable th) {
            th.printStackTrace();
            ox.p("TTMediationSDK_SDK_Init", "GDT SDK 初始化失败。。 e=" + th.toString());
            return null;
        }
    }

    private JSONObject d() {
        if (TextUtils.isEmpty(com.bytedance.msdk.core.dq.d().mp())) {
            return null;
        }
        try {
            return new JSONObject(com.bytedance.msdk.core.dq.d().mp());
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private JSONObject d(com.bytedance.msdk.api.dq.d dVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            int le = dVar.le();
            jSONObject.put(TTDownloadField.TT_ID, dVar.k());
            jSONObject.put("adtype", le);
            jSONObject.put("pos", dq(le));
            dq(jSONObject, "accepted_size", dVar.e(), dVar.kx());
            jSONObject.put("is_support_dpl", dVar.ji());
            int h = dVar.h();
            int i = 1;
            if (h <= 0) {
                h = 1;
            }
            if (h > 3) {
                h = 3;
            }
            if (le != 7 && le != 8) {
                i = h;
            }
            jSONObject.put("ad_count", i);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private void d(JSONObject jSONObject) {
        try {
            jSONObject.put("package_name", c.dq());
            jSONObject.put("version_code", c.d());
            jSONObject.put("version", c.ox());
        } catch (Exception unused) {
        }
    }

    public static int dq(int i) {
        if (i == 1) {
            return 2;
        }
        if (i != 2) {
            return (i == 3 || i == 4 || i == 7 || i == 8) ? 5 : 3;
        }
        return 4;
    }

    public static dq dq() {
        if (dq == null) {
            synchronized (dq.class) {
                try {
                    if (dq == null) {
                        dq = new dq();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x008a A[Catch: all -> 0x005e, TryCatch #2 {all -> 0x005e, blocks: (B:9:0x0019, B:11:0x002d, B:15:0x0037, B:19:0x008a, B:21:0x0094, B:23:0x0109, B:25:0x010f, B:31:0x0048, B:33:0x0063, B:39:0x0078, B:41:0x0080, B:42:0x0115, B:36:0x0071, B:28:0x0041), top: B:8:0x0019, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x010f A[Catch: all -> 0x005e, TryCatch #2 {all -> 0x005e, blocks: (B:9:0x0019, B:11:0x002d, B:15:0x0037, B:19:0x008a, B:21:0x0094, B:23:0x0109, B:25:0x010f, B:31:0x0048, B:33:0x0063, B:39:0x0078, B:41:0x0080, B:42:0x0115, B:36:0x0071, B:28:0x0041), top: B:8:0x0019, inners: #0, #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private kk dq(JSONObject jSONObject) {
        JSONObject jSONObject2;
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString("m_adm");
        Object opt = jSONObject.opt("extra_data_and_no_parse");
        if (TextUtils.isEmpty(optString)) {
            return null;
        }
        try {
            JSONObject jSONObject3 = new JSONObject(optString);
            int optInt = jSONObject3.optInt("cypher", -1);
            String optString2 = jSONObject3.optString("message");
            if (optInt < 0 || TextUtils.isEmpty(optString2)) {
                ox.p("ServerBiddingHelper", "adm winner data onResponse error ");
                return null;
            }
            if (optInt == 2) {
                String dq2 = c.dq(optString2);
                if (!TextUtils.isEmpty(dq2)) {
                    try {
                        jSONObject2 = new JSONObject(dq2);
                    } catch (Throwable th) {
                        ox.dq("ServerBiddingHelper", ">>>>> adm winner data error: " + th.toString());
                    }
                    if (jSONObject2 == null) {
                        ox.p("ServerBiddingHelper", "adm winner data is null");
                        return null;
                    }
                    if (TextUtils.isEmpty(jSONObject2.toString())) {
                        ox.p("ServerBiddingHelper", "adm winner data.string is null ");
                        return null;
                    }
                    kk kkVar = new kk();
                    kkVar.d(jSONObject2.optInt("req_bidding_type"));
                    kkVar.ox(jSONObject2.optString("price"));
                    kkVar.p(jSONObject2.optString("load_price"));
                    kkVar.o(jSONObject2.optString("adm"));
                    kkVar.s(jSONObject2.optString(abn.EXTRA_UA_APP_NAME));
                    kkVar.mn(jSONObject2.optString(PluginConstants.KEY_APP_ID));
                    kkVar.iw(jSONObject2.optString("slot_id"));
                    kkVar.ia(jSONObject2.optString("win_callback", null));
                    kkVar.kk(jSONObject2.optString("fail_callback", null));
                    kkVar.dq(jSONObject2.optString("m_aid", null));
                    kkVar.d(jSONObject2.optString("ad_extra", null));
                    kkVar.dq(jSONObject2.optInt("pricing_type", 1));
                    kkVar.dq(opt);
                    return kkVar;
                }
                jSONObject2 = null;
                if (jSONObject2 == null) {
                }
            } else {
                if (optInt == 1) {
                    String d2 = com.bytedance.msdk.ia.dq.d(optString2, com.bytedance.msdk.ia.d.dq());
                    if (!TextUtils.isEmpty(d2)) {
                        try {
                            jSONObject2 = new JSONObject(d2);
                        } catch (Throwable th2) {
                            ox.dq("ServerBiddingHelper", "adm winner data error: ", th2);
                        }
                    }
                    jSONObject2 = null;
                } else {
                    if (optInt == 0) {
                        jSONObject2 = new JSONObject(optString2);
                    }
                    jSONObject2 = null;
                }
                if (jSONObject2 == null) {
                }
            }
        } catch (Throwable th3) {
            ox.p("ServerBiddingHelper", "adm winner onResponse throwable ：".concat(String.valueOf(th3.toString())));
            return null;
        }
    }

    private String dq(com.bytedance.msdk.api.dq.d dVar, no noVar) {
        String dq2 = dVar != null ? dVar.dq() : null;
        if (noVar == null) {
            return dq2;
        }
        StringBuilder o = awf.o(awf.c(dq2, "_"));
        o.append(noVar.cd());
        return o.toString();
    }

    private String dq(Map<String, com.bytedance.msdk.dq.dq> map, Context context, com.bytedance.msdk.api.dq.d dVar, no noVar, Map<String, Object> map2) {
        if (dVar == null || noVar == null) {
            ox.d("serverBiddingRequest", "adSlot is null or waterFallConfig is null can not get server bidding token");
            return "";
        }
        if (!TextUtils.equals(MediationConstant.ADN_BAIDU, noVar.jy())) {
            return com.bytedance.msdk.iw.d.dq.dq(map2, noVar.jy());
        }
        com.bytedance.msdk.dq.dq ox = mn.ox(noVar);
        if (ox == null) {
            return "";
        }
        try {
            map.put(String.format("%1$s_%2$s_%3$s", dVar.dq(), dVar.k(), noVar.cd()), ox);
            return dVar.le() == 5 ? ox.dq(context, noVar.cd(), dVar) : ox.dq(context, noVar.cd(), dVar);
        } catch (Throwable unused) {
            return "";
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(21:0|1|(13:2|3|(2:254|255)|5|(1:7)|8|(1:10)|11|(1:13)|14|(1:16)|26|27)|(8:28|29|30|(3:32|33|(4:35|36|37|39)(36:42|43|44|45|46|47|48|49|50|51|52|(3:139|140|(28:142|143|144|145|146|147|148|(1:150)|151|60|(3:133|134|(1:136))|62|63|64|65|(2:67|(1:69))(2:126|(1:128))|70|71|(6:97|98|99|100|101|(8:(1:104)(1:118)|105|106|107|108|109|110|111)(1:119))(2:73|(13:(1:88)(1:96)|89|90|91|92|76|77|78|79|(1:81)|36|37|39))|75|76|77|78|79|(0)|36|37|39))|54|55|56|(1:58)|59|60|(0)|62|63|64|65|(0)(0)|70|71|(0)(0)|75|76|77|78|79|(0)|36|37|39))(1:175)|21|22|23|24)|176|177|178|179|(4:181|182|183|184)(1:246)|185|(1:243)(1:189)|190|(3:223|224|(7:226|(2:196|(1:198))|199|(4:201|(4:204|(7:206|(1:208)(1:217)|(1:210)|211|(1:213)|214|215)(2:218|219)|216|202)|220|221)|22|23|24)(2:227|(4:229|(4:233|234|230|231)|235|236)))|192|(3:194|196|(0))|199|(0)|22|23|24|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(34:42|43|44|45|46|47|48|49|(3:50|51|52)|(3:139|140|(28:142|143|144|145|146|147|148|(1:150)|151|60|(3:133|134|(1:136))|62|63|64|65|(2:67|(1:69))(2:126|(1:128))|70|71|(6:97|98|99|100|101|(8:(1:104)(1:118)|105|106|107|108|109|110|111)(1:119))(2:73|(13:(1:88)(1:96)|89|90|91|92|76|77|78|79|(1:81)|36|37|39))|75|76|77|78|79|(0)|36|37|39))|54|55|56|(1:58)|59|60|(0)|62|63|64|65|(0)(0)|70|71|(0)(0)|75|76|77|78|79|(0)|36|37|39) */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x02d5, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x02d6, code lost:
    
        r24 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x04bb, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x04bc, code lost:
    
        r1 = r35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0439, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0270 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0561 A[Catch: Exception -> 0x04b8, TryCatch #2 {Exception -> 0x04b8, blocks: (B:184:0x04b0, B:185:0x04c2, B:187:0x04f9, B:189:0x04ff, B:190:0x051c, B:194:0x0561, B:196:0x0564, B:198:0x056e, B:199:0x0573, B:201:0x0583, B:202:0x0587, B:204:0x058d, B:206:0x0595, B:208:0x05a7, B:210:0x05ba, B:211:0x05c1, B:213:0x05f9, B:214:0x0602, B:217:0x05b0, B:221:0x0619, B:240:0x055a), top: B:183:0x04b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:198:0x056e A[Catch: Exception -> 0x04b8, TryCatch #2 {Exception -> 0x04b8, blocks: (B:184:0x04b0, B:185:0x04c2, B:187:0x04f9, B:189:0x04ff, B:190:0x051c, B:194:0x0561, B:196:0x0564, B:198:0x056e, B:199:0x0573, B:201:0x0583, B:202:0x0587, B:204:0x058d, B:206:0x0595, B:208:0x05a7, B:210:0x05ba, B:211:0x05c1, B:213:0x05f9, B:214:0x0602, B:217:0x05b0, B:221:0x0619, B:240:0x055a), top: B:183:0x04b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0583 A[Catch: Exception -> 0x04b8, TryCatch #2 {Exception -> 0x04b8, blocks: (B:184:0x04b0, B:185:0x04c2, B:187:0x04f9, B:189:0x04ff, B:190:0x051c, B:194:0x0561, B:196:0x0564, B:198:0x056e, B:199:0x0573, B:201:0x0583, B:202:0x0587, B:204:0x058d, B:206:0x0595, B:208:0x05a7, B:210:0x05ba, B:211:0x05c1, B:213:0x05f9, B:214:0x0602, B:217:0x05b0, B:221:0x0619, B:240:0x055a), top: B:183:0x04b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x02c1 A[Catch: all -> 0x02d5, TryCatch #15 {all -> 0x02d5, blocks: (B:65:0x02b8, B:67:0x02c1, B:69:0x02cb, B:70:0x02e5, B:128:0x02de), top: B:64:0x02b8 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0391 A[Catch: all -> 0x0373, TryCatch #11 {all -> 0x0373, blocks: (B:111:0x0340, B:73:0x0391, B:85:0x03ab, B:89:0x03c4), top: B:110:0x0340 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0303 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String dq(Map<String, com.bytedance.msdk.dq.dq> map, Context context, com.bytedance.msdk.api.dq.d dVar, List<no> list, List<s> list2, com.bytedance.msdk.core.no.d dVar2, int i, boolean z, JSONObject jSONObject, boolean z2) {
        JSONObject jSONObject2;
        boolean z3;
        JSONArray jSONArray;
        HashMap hashMap;
        int i2;
        String str;
        JSONObject jSONObject3;
        int[] iArr;
        int i3;
        Object obj;
        int[] iArr2;
        String str2;
        String dq2;
        JSONArray jSONArray2;
        int i4;
        HashMap hashMap2;
        String str3;
        String str4;
        no noVar;
        String f2;
        JSONArray jSONArray3;
        com.bytedance.msdk.core.no.dq dq3;
        Map<String, Object> d2;
        long elapsedRealtime;
        String str5;
        boolean wn;
        String j;
        boolean nh;
        boolean vf;
        dq dqVar;
        JSONArray jSONArray4;
        no noVar2;
        HashMap hashMap3;
        Integer num;
        com.bytedance.msdk.core.kk.kk p;
        dq dqVar2 = this;
        com.bytedance.msdk.api.dq.d dVar3 = dVar;
        List<no> list3 = list;
        String str6 = "req_bidding_type";
        String str7 = PluginConstants.KEY_SDK_VERSION;
        Integer num2 = 2;
        JSONObject jSONObject4 = new JSONObject();
        try {
            jSONObject4.putOpt("request_id", dVar3.dq());
            jSONObject4.putOpt(PluginConstants.KEY_SDK_VERSION, com.bytedance.msdk.d.p.d());
            jSONObject4.putOpt(PluginConstants.KEY_PLUGIN_VERSION, com.bytedance.msdk.d.p.p());
            jSONObject4.putOpt("waterfall_id", Long.valueOf(dVar2.h()));
            jSONObject4.putOpt("waterfall_version", dVar2.ir());
            jSONObject4.putOpt("req_bidding_type", num2);
            jSONObject4.putOpt("segment_id", Integer.valueOf(dVar2.ji()));
            jSONObject4.putOpt("segment_version", dVar2.bl());
            jSONObject4.putOpt("transparent_params", dVar3.iw());
            if (dVar3.wp() != null) {
                try {
                    jSONObject4.putOpt("scenario_id", dVar3.wp());
                } catch (Exception e2) {
                    e = e2;
                    jSONObject2 = jSONObject4;
                    z3 = false;
                    ox.d("tt_server_bidding", "ServerBiddingHelper#serverBiddingRequest getParam() error:" + e.toString());
                    return dqVar2.dq(jSONObject2, z3, z2);
                }
            }
            jSONObject4.putOpt("is_fusion", 1);
            if (!TextUtils.isEmpty(dVar3.vf())) {
                jSONObject4.putOpt("mediation_map_request", 1);
            }
            JSONObject dq4 = com.bytedance.msdk.core.mp.dq.dq().dq(dqVar2.d());
            if (dq4 != null) {
                jSONObject4.putOpt("app_abtest", dq4);
            }
            JSONObject d3 = com.bytedance.msdk.core.mp.dq.dq().d(dqVar2.dq(dVar2.gx()));
            if (d3 != null) {
                jSONObject4.putOpt("waterfall_abtest", d3);
            }
            jSONObject4.putOpt("grouping_params", com.bytedance.msdk.core.f.d.d());
            JSONObject ox = com.bytedance.msdk.core.f.d.ox();
            if (ox != null) {
                jSONObject4.putOpt("user_defined_grouping_params", ox);
            }
            jSONArray = new JSONArray();
            hashMap = new HashMap();
            hashMap.put(com.bytedance.msdk.dq.dq.dq.dq, dVar3);
            hashMap.put(com.bytedance.msdk.dq.dq.dq.p, dVar2.gx());
            i2 = 0;
            z3 = false;
        } catch (Exception e3) {
            e = e3;
            jSONObject2 = jSONObject4;
        }
        while (true) {
            try {
                str = str6;
                jSONObject3 = jSONObject4;
                iArr = null;
                Integer num3 = num2;
                if (i2 >= list3.size()) {
                    break;
                }
                try {
                    noVar = list3.get(i2);
                } catch (Throwable th) {
                    th = th;
                    jSONArray2 = jSONArray;
                    i4 = i2;
                    hashMap2 = hashMap;
                    str3 = str7;
                }
                if (noVar.n()) {
                    JSONObject jSONObject5 = new JSONObject();
                    str3 = str7;
                    try {
                        str4 = noVar.jy();
                        try {
                            f2 = noVar.f();
                            jSONArray3 = jSONArray;
                            try {
                                hashMap.put(com.bytedance.msdk.dq.dq.dq.f1042d, Integer.valueOf(noVar.o()));
                                hashMap.put(com.bytedance.msdk.dq.dq.dq.ox, Integer.valueOf(noVar.iw()));
                                hashMap.put(com.bytedance.msdk.dq.dq.dq.iw, dqVar2.dq(dVar3, noVar));
                                hashMap.put("slot_id", noVar.cd());
                                hashMap.put("rit_type", Integer.valueOf(noVar.mp()));
                                hashMap.put(MediationConstant.REWARD_NAME, dVar3.bl());
                                hashMap.put(MediationConstant.REWARD_AMOUNT, Integer.valueOf(dVar3.n()));
                                dq3 = com.bytedance.msdk.core.dq.d().dq(str4);
                                long elapsedRealtime2 = SystemClock.elapsedRealtime();
                                d2 = com.bytedance.msdk.iw.d.dq.d(hashMap, str4);
                                elapsedRealtime = SystemClock.elapsedRealtime() - elapsedRealtime2;
                            } catch (Throwable th2) {
                                th = th2;
                                i4 = i2;
                                hashMap2 = hashMap;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            jSONArray2 = jSONArray;
                            i4 = i2;
                            hashMap2 = hashMap;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        jSONArray2 = jSONArray;
                        i4 = i2;
                        hashMap2 = hashMap;
                        str4 = null;
                        ox.p("TTMediationSDK", "serverBiddingRequest-buildBiddingRequestBody:[adnName=" + str4 + "]-error:" + th.toString());
                        if (MediationConstant.ADN_PANGLE.equals(str4)) {
                        }
                        i2 = i4 + 1;
                        list3 = list;
                        jSONArray = jSONArray2;
                        str6 = str;
                        jSONObject4 = jSONObject3;
                        num2 = num3;
                        str7 = str3;
                        hashMap = hashMap2;
                        dqVar2 = this;
                    }
                    if (d2 != null) {
                        try {
                        } catch (Throwable th5) {
                            th = th5;
                            i4 = i2;
                        }
                        if (!d2.isEmpty()) {
                            JSONObject jSONObject6 = new JSONObject();
                            String str8 = (String) d2.get("buyerId");
                            i4 = i2;
                            try {
                                str5 = (String) d2.get("sdkInfo");
                                wn = com.bytedance.msdk.core.d.no().wn();
                                j = com.bytedance.msdk.core.d.no().j();
                                nh = com.bytedance.msdk.core.d.no().nh();
                                vf = com.bytedance.msdk.core.d.no().vf();
                                hashMap2 = hashMap;
                            } catch (Throwable th6) {
                                th = th6;
                                hashMap2 = hashMap;
                                dVar3 = dVar;
                                jSONArray2 = jSONArray3;
                                ox.p("TTMediationSDK", "serverBiddingRequest-buildBiddingRequestBody:[adnName=" + str4 + "]-error:" + th.toString());
                                if (MediationConstant.ADN_PANGLE.equals(str4)) {
                                }
                                i2 = i4 + 1;
                                list3 = list;
                                jSONArray = jSONArray2;
                                str6 = str;
                                jSONObject4 = jSONObject3;
                                num2 = num3;
                                str7 = str3;
                                hashMap = hashMap2;
                                dqVar2 = this;
                            }
                            try {
                                jSONObject6.putOpt("sdk_info", str5);
                                jSONObject6.putOpt("wx_installed", Boolean.valueOf(wn));
                                jSONObject6.putOpt("opensdk_ver", j);
                                jSONObject6.putOpt("support_h265", Boolean.valueOf(nh));
                                jSONObject6.putOpt("support_splash_zoomout", Boolean.valueOf(vf));
                                jSONObject5.putOpt(TileService.EXTRA_TOKEN, str8);
                                jSONObject5.putOpt("extra", jSONObject6);
                                if (jSONObject != null) {
                                    jSONObject.put(str4, elapsedRealtime);
                                }
                                dqVar = this;
                                dVar3 = dVar;
                                jSONArray4 = jSONArray3;
                                noVar2 = noVar;
                                hashMap3 = hashMap2;
                                String d4 = dqVar.d(str4);
                                jSONObject5.putOpt(abn.EXTRA_UA_APP_NAME, str4);
                                jSONObject5.putOpt("custom_adn_name", f2);
                                if (TextUtils.equals(str4, MediationConstant.ADN_PANGLE)) {
                                    try {
                                        if (com.bytedance.msdk.core.d.no().ce()) {
                                            jSONObject5.putOpt("sub_adn_name", "pangleoppo");
                                        }
                                    } catch (Throwable th7) {
                                        th = th7;
                                        hashMap2 = hashMap3;
                                        jSONArray2 = jSONArray4;
                                        ox.p("TTMediationSDK", "serverBiddingRequest-buildBiddingRequestBody:[adnName=" + str4 + "]-error:" + th.toString());
                                        if (MediationConstant.ADN_PANGLE.equals(str4)) {
                                        }
                                        i2 = i4 + 1;
                                        list3 = list;
                                        jSONArray = jSONArray2;
                                        str6 = str;
                                        jSONObject4 = jSONObject3;
                                        num2 = num3;
                                        str7 = str3;
                                        hashMap = hashMap2;
                                        dqVar2 = this;
                                    }
                                }
                                jSONObject5.putOpt("show_sort", Integer.valueOf(noVar2.e()));
                                jSONObject5.putOpt("load_sort", Integer.valueOf(noVar2.wp()));
                                jSONObject5.putOpt("exchange_rate", noVar2.q());
                                jSONObject5.putOpt("slot_id", noVar2.cd());
                                jSONObject5.putOpt("sub_adType", Integer.valueOf(noVar2.iw()));
                                jSONObject5.putOpt(str3, d4);
                                if (!noVar2.wn()) {
                                    com.bytedance.msdk.core.no.dq d5 = com.bytedance.msdk.core.dq.d().d(str4);
                                    if (d5 != null) {
                                        jSONObject5.putOpt(PluginConstants.KEY_APP_ID, d5.dq());
                                    }
                                } else if (dq3 != null) {
                                    jSONObject5.putOpt(PluginConstants.KEY_APP_ID, dq3.dq());
                                }
                            } catch (Throwable th8) {
                                th = th8;
                                dVar3 = dVar;
                                jSONArray2 = jSONArray3;
                                ox.p("TTMediationSDK", "serverBiddingRequest-buildBiddingRequestBody:[adnName=" + str4 + "]-error:" + th.toString());
                                if (MediationConstant.ADN_PANGLE.equals(str4)) {
                                }
                                i2 = i4 + 1;
                                list3 = list;
                                jSONArray = jSONArray2;
                                str6 = str;
                                jSONObject4 = jSONObject3;
                                num2 = num3;
                                str7 = str3;
                                hashMap = hashMap2;
                                dqVar2 = this;
                            }
                            if (com.bytedance.msdk.core.kk.no.dq().ox(dVar3.k(), noVar2.cd())) {
                                try {
                                    str3 = str3;
                                } catch (Throwable th9) {
                                    th = th9;
                                    str3 = str3;
                                }
                                try {
                                    Pair<String, String> dq5 = com.bytedance.msdk.core.kk.no.dq().dq(dVar3.k(), noVar2.cd());
                                    if (dq5 != null) {
                                        jSONObject5.putOpt("mediation_req_type", Integer.valueOf(z ? 2 : 3));
                                        num = num3;
                                        try {
                                            jSONObject5.putOpt("media_req_type", num);
                                            hashMap2 = hashMap3;
                                            try {
                                                com.bytedance.msdk.api.d.d dVar4 = new com.bytedance.msdk.api.d.d(41041, com.bytedance.msdk.api.dq.dq(41041), (String) dq5.second, (String) dq5.first);
                                                jSONObject5.putOpt("error_code", Integer.valueOf(dVar4.dq));
                                                JSONObject jSONObject7 = new JSONObject();
                                                jSONObject7.putOpt("error_code", Integer.valueOf(dVar4.dq));
                                                jSONObject7.putOpt("error_msg", dVar4.f756d);
                                                jSONObject7.putOpt("block_show_count", dVar4.dq());
                                                jSONObject7.putOpt("adn_rit_show_rule_id", dVar4.d());
                                                jSONObject5.putOpt("log_extra", jSONObject7);
                                            } catch (Throwable th10) {
                                                th = th10;
                                                num3 = num;
                                                jSONArray2 = jSONArray4;
                                                ox.p("TTMediationSDK", "serverBiddingRequest-buildBiddingRequestBody:[adnName=" + str4 + "]-error:" + th.toString());
                                                if (MediationConstant.ADN_PANGLE.equals(str4)) {
                                                }
                                                i2 = i4 + 1;
                                                list3 = list;
                                                jSONArray = jSONArray2;
                                                str6 = str;
                                                jSONObject4 = jSONObject3;
                                                num2 = num3;
                                                str7 = str3;
                                                hashMap = hashMap2;
                                                dqVar2 = this;
                                            }
                                        } catch (Throwable th11) {
                                            th = th11;
                                            hashMap2 = hashMap3;
                                        }
                                    } else {
                                        hashMap2 = hashMap3;
                                        num = num3;
                                    }
                                } catch (Throwable th12) {
                                    th = th12;
                                    hashMap2 = hashMap3;
                                    jSONArray2 = jSONArray4;
                                    ox.p("TTMediationSDK", "serverBiddingRequest-buildBiddingRequestBody:[adnName=" + str4 + "]-error:" + th.toString());
                                    if (MediationConstant.ADN_PANGLE.equals(str4)) {
                                    }
                                    i2 = i4 + 1;
                                    list3 = list;
                                    jSONArray = jSONArray2;
                                    str6 = str;
                                    jSONObject4 = jSONObject3;
                                    num2 = num3;
                                    str7 = str3;
                                    hashMap = hashMap2;
                                    dqVar2 = this;
                                }
                            } else {
                                str3 = str3;
                                hashMap2 = hashMap3;
                                num = num3;
                                no noVar3 = noVar2;
                                if (!ig.dq().ox(dVar3.k(), noVar3.cd()) && (p = ig.dq().p(dVar3.k(), noVar3.cd())) != null) {
                                    jSONObject5.putOpt("mediation_req_type", Integer.valueOf(z ? 2 : 3));
                                    jSONObject5.putOpt("media_req_type", num);
                                    String dq6 = com.bytedance.msdk.api.dq.dq(41042);
                                    StringBuilder sb = new StringBuilder();
                                    num3 = num;
                                    try {
                                        sb.append(ig.dq().dq(dVar3.k(), noVar3.cd()));
                                        com.bytedance.msdk.api.d.ox oxVar = new com.bytedance.msdk.api.d.ox(41042, dq6, sb.toString(), p.o());
                                        jSONObject5.putOpt("error_code", Integer.valueOf(oxVar.dq));
                                        JSONObject jSONObject8 = new JSONObject();
                                        jSONObject8.putOpt("error_code", Integer.valueOf(oxVar.dq));
                                        jSONObject8.putOpt("error_msg", oxVar.f756d);
                                        jSONObject8.putOpt("block_pacing", oxVar.dq());
                                        jSONObject8.putOpt("adn_rit_show_rule_id", oxVar.d());
                                        jSONObject5.putOpt("log_extra", jSONObject8);
                                        jSONArray2 = jSONArray4;
                                        jSONArray2.put(jSONObject5);
                                    } catch (Throwable th13) {
                                        th = th13;
                                        jSONArray2 = jSONArray4;
                                        ox.p("TTMediationSDK", "serverBiddingRequest-buildBiddingRequestBody:[adnName=" + str4 + "]-error:" + th.toString());
                                        if (MediationConstant.ADN_PANGLE.equals(str4)) {
                                        }
                                        i2 = i4 + 1;
                                        list3 = list;
                                        jSONArray = jSONArray2;
                                        str6 = str;
                                        jSONObject4 = jSONObject3;
                                        num2 = num3;
                                        str7 = str3;
                                        hashMap = hashMap2;
                                        dqVar2 = this;
                                    }
                                    if (MediationConstant.ADN_PANGLE.equals(str4)) {
                                        z3 = true;
                                    }
                                    i2 = i4 + 1;
                                    list3 = list;
                                    jSONArray = jSONArray2;
                                    str6 = str;
                                    jSONObject4 = jSONObject3;
                                    num2 = num3;
                                    str7 = str3;
                                    hashMap = hashMap2;
                                    dqVar2 = this;
                                }
                            }
                            num3 = num;
                            jSONArray2 = jSONArray4;
                            jSONArray2.put(jSONObject5);
                            if (MediationConstant.ADN_PANGLE.equals(str4)) {
                            }
                            i2 = i4 + 1;
                            list3 = list;
                            jSONArray = jSONArray2;
                            str6 = str;
                            jSONObject4 = jSONObject3;
                            num2 = num3;
                            str7 = str3;
                            hashMap = hashMap2;
                            dqVar2 = this;
                        }
                    }
                    i4 = i2;
                    HashMap hashMap4 = hashMap;
                    long elapsedRealtime3 = SystemClock.elapsedRealtime();
                    dqVar = this;
                    dVar3 = dVar;
                    jSONArray4 = jSONArray3;
                    noVar2 = noVar;
                    hashMap3 = hashMap4;
                    String dq7 = dqVar.dq(map, context, dVar3, noVar2, hashMap3);
                    long elapsedRealtime4 = SystemClock.elapsedRealtime() - elapsedRealtime3;
                    if (jSONObject != null) {
                        jSONObject.put(str4, elapsedRealtime4);
                    }
                    jSONObject5.putOpt(TileService.EXTRA_TOKEN, dq7);
                    String d42 = dqVar.d(str4);
                    jSONObject5.putOpt(abn.EXTRA_UA_APP_NAME, str4);
                    jSONObject5.putOpt("custom_adn_name", f2);
                    if (TextUtils.equals(str4, MediationConstant.ADN_PANGLE)) {
                    }
                    jSONObject5.putOpt("show_sort", Integer.valueOf(noVar2.e()));
                    jSONObject5.putOpt("load_sort", Integer.valueOf(noVar2.wp()));
                    jSONObject5.putOpt("exchange_rate", noVar2.q());
                    jSONObject5.putOpt("slot_id", noVar2.cd());
                    jSONObject5.putOpt("sub_adType", Integer.valueOf(noVar2.iw()));
                    jSONObject5.putOpt(str3, d42);
                    if (!noVar2.wn()) {
                    }
                    if (com.bytedance.msdk.core.kk.no.dq().ox(dVar3.k(), noVar2.cd())) {
                    }
                    num3 = num;
                    jSONArray2 = jSONArray4;
                    jSONArray2.put(jSONObject5);
                    if (MediationConstant.ADN_PANGLE.equals(str4)) {
                    }
                    i2 = i4 + 1;
                    list3 = list;
                    jSONArray = jSONArray2;
                    str6 = str;
                    jSONObject4 = jSONObject3;
                    num2 = num3;
                    str7 = str3;
                    hashMap = hashMap2;
                    dqVar2 = this;
                } else {
                    jSONArray2 = jSONArray;
                    i4 = i2;
                    hashMap2 = hashMap;
                    str3 = str7;
                    try {
                        i2 = i4 + 1;
                        list3 = list;
                        jSONArray = jSONArray2;
                        str6 = str;
                        jSONObject4 = jSONObject3;
                        num2 = num3;
                        str7 = str3;
                        hashMap = hashMap2;
                        dqVar2 = this;
                    } catch (Exception e4) {
                        e = e4;
                        dqVar2 = this;
                        jSONObject2 = jSONObject3;
                    }
                }
            } catch (Exception e5) {
                e = e5;
                jSONObject2 = jSONObject4;
            }
            ox.d("tt_server_bidding", "ServerBiddingHelper#serverBiddingRequest getParam() error:" + e.toString());
            return dqVar2.dq(jSONObject2, z3, z2);
        }
        jSONObject2 = jSONObject3;
        jSONObject2.putOpt("bidders", jSONArray);
        if (z3) {
            dqVar2 = this;
        } else {
            dqVar2 = this;
            try {
                jSONObject2.putOpt("bid_request", dqVar2.dq(dVar3));
            } catch (Exception e6) {
                e = e6;
            }
        }
        JSONObject jSONObject9 = new JSONObject();
        jSONObject9.put("group_type", dVar2.iw());
        jSONObject9.put("primerit_req_type", i);
        jSONObject9.put("req_type", dVar3.p());
        jSONObject9.put("ad_type", dVar3.le());
        jSONObject9.putOpt("waterfall_extra", dVar3.v());
        if (dVar3.s() != 2 || list.size() <= 0) {
            i3 = 0;
        } else {
            jSONObject9.put("if_test", dVar3.s());
            i3 = 0;
            jSONObject9.put("expect_winner", list.get(0).jy());
        }
        com.bytedance.msdk.core.o.p.dq(dVar2.iw(), dVar3.k(), jSONObject9);
        Map<String, Object> wn2 = dVar3.wn();
        if (wn2 != null) {
            try {
                obj = wn2.get(MediationConstant.PANGLE_VID);
            } catch (Throwable th14) {
                th = th14;
            }
            if (obj instanceof int[]) {
                iArr2 = (int[]) obj;
                if (iArr2 != null && iArr2.length > 0) {
                    dq2 = gh.dq(iArr2);
                    if (!TextUtils.isEmpty(dq2)) {
                        jSONObject9.put("external_vid", dq2);
                    }
                }
                jSONObject2.putOpt("bid_request_ext", jSONObject9);
                JSONArray jSONArray5 = new JSONArray();
                if (!n.dq(list2)) {
                    for (s sVar : list2) {
                        if (sVar != null) {
                            JSONObject jSONObject10 = new JSONObject();
                            String m = sVar.m();
                            jSONObject10.put(abn.EXTRA_UA_APP_NAME, m);
                            com.bytedance.msdk.core.no.dq d6 = sVar.zc() ? com.bytedance.msdk.core.dq.d().d(m) : com.bytedance.msdk.core.dq.d().dq(m);
                            if (d6 != null) {
                                jSONObject10.putOpt(PluginConstants.KEY_APP_ID, d6.dq());
                            }
                            jSONObject10.put("slot_id", sVar.b());
                            str2 = str;
                            jSONObject10.put(str2, sVar.y());
                            jSONObject10.put("level_tag", sVar.ij());
                            jSONObject10.put("load_sort", sVar.ae());
                            jSONObject10.put("show_sort", sVar.wq());
                            jSONObject10.put("exchange_rate", sVar.io());
                            if (!TextUtils.isEmpty(sVar.iw())) {
                                jSONObject10.put("req_id", sVar.iw());
                            }
                            jSONObject10.put("cpm", String.valueOf(sVar.dk()));
                            jSONArray5.put(jSONObject10);
                        } else {
                            str2 = str;
                        }
                        str = str2;
                    }
                    jSONObject2.putOpt("non_server_bidding_results", jSONArray5);
                }
                return dqVar2.dq(jSONObject2, z3, z2);
            }
            if (obj instanceof Integer[]) {
                Integer[] numArr = (Integer[]) obj;
                int[] iArr3 = new int[numArr.length];
                while (i3 < numArr.length) {
                    try {
                        iArr3[i3] = numArr[i3].intValue();
                        i3++;
                    } catch (Throwable th15) {
                        th = th15;
                        iArr = iArr3;
                        th.printStackTrace();
                        iArr2 = iArr;
                        if (iArr2 != null) {
                        }
                        jSONObject2.putOpt("bid_request_ext", jSONObject9);
                        JSONArray jSONArray52 = new JSONArray();
                        if (!n.dq(list2)) {
                        }
                        return dqVar2.dq(jSONObject2, z3, z2);
                    }
                }
                iArr = iArr3;
            }
        }
        iArr2 = iArr;
        if (iArr2 != null) {
            dq2 = gh.dq(iArr2);
            if (!TextUtils.isEmpty(dq2)) {
            }
        }
        jSONObject2.putOpt("bid_request_ext", jSONObject9);
        JSONArray jSONArray522 = new JSONArray();
        if (!n.dq(list2)) {
        }
        return dqVar2.dq(jSONObject2, z3, z2);
    }

    private String dq(JSONObject jSONObject, boolean z, boolean z2) {
        if (z2) {
            if (jSONObject == null) {
                return null;
            }
            try {
                jSONObject.putOpt("token_type", Integer.valueOf(z ? 1 : 0));
            } catch (Exception unused) {
            }
            return jSONObject.toString();
        }
        JSONObject dq2 = c.dq(jSONObject);
        if (dq2 == null) {
            return null;
        }
        try {
            dq2.putOpt("token_type", Integer.valueOf(z ? 1 : 0));
        } catch (Exception unused2) {
        }
        return dq2.toString();
    }

    private JSONObject dq(com.bytedance.msdk.api.dq.d dVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("request_id", dVar.dq());
            jSONObject.put("ad_sdk_version", com.bytedance.msdk.d.p.d());
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, com.bytedance.msdk.d.p.p());
            jSONObject.put("source_type", "app");
            jSONObject.put("app", ox());
            JSONObject dq2 = wp.dq(com.bytedance.msdk.core.dq.getContext());
            if (dq2 != null && dVar.u() > 0) {
                dq2.put("orientation", dVar.u());
            }
            jSONObject.put("device", dq2);
            jSONObject.put("ua", com.bytedance.msdk.d.p.dq);
            jSONObject.put("ip", e.le());
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(d(dVar));
            jSONObject.put("adslots", jSONArray);
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            jSONObject.put("ts", currentTimeMillis);
            String str = "";
            if (dVar.k() != null && dVar.dq() != null) {
                str = String.valueOf(currentTimeMillis).concat(dVar.k()).concat(dVar.dq());
            }
            jSONObject.put("req_sign", q.dq(str));
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private JSONObject dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new JSONObject(str);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i, String str, InterfaceC0058dq interfaceC0058dq, boolean z) {
        bl.dq(z ? "v4Enc_exchange" : "v2Enc_exchange", false, 0L, "code = " + i + "，msg = " + str);
        dq(interfaceC0058dq, new com.bytedance.msdk.api.dq(i, str));
    }

    private void dq(final InterfaceC0058dq interfaceC0058dq, final com.bytedance.msdk.api.dq dqVar) {
        iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.jy.dq.2
            @Override // java.lang.Runnable
            public void run() {
                InterfaceC0058dq interfaceC0058dq2 = interfaceC0058dq;
                if (interfaceC0058dq2 != null) {
                    interfaceC0058dq2.dq(dqVar);
                }
            }
        });
    }

    private void dq(final InterfaceC0058dq interfaceC0058dq, final ia iaVar) {
        iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.jy.dq.3
            @Override // java.lang.Runnable
            public void run() {
                InterfaceC0058dq interfaceC0058dq2 = interfaceC0058dq;
                if (interfaceC0058dq2 != null) {
                    interfaceC0058dq2.dq(iaVar);
                }
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x007e A[Catch: all -> 0x0052, TryCatch #0 {all -> 0x0052, blocks: (B:6:0x000e, B:8:0x0022, B:12:0x002b, B:16:0x007e, B:18:0x0088, B:21:0x00a4, B:23:0x00aa, B:29:0x003c, B:32:0x0057, B:38:0x006c, B:40:0x0074, B:41:0x00b0, B:35:0x0065, B:26:0x0035), top: B:5:0x000e, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00aa A[Catch: all -> 0x0052, TryCatch #0 {all -> 0x0052, blocks: (B:6:0x000e, B:8:0x0022, B:12:0x002b, B:16:0x007e, B:18:0x0088, B:21:0x00a4, B:23:0x00aa, B:29:0x003c, B:32:0x0057, B:38:0x006c, B:40:0x0074, B:41:0x00b0, B:35:0x0065, B:26:0x0035), top: B:5:0x000e, inners: #1, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void dq(ia iaVar, String str) {
        JSONObject jSONObject;
        if (iaVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject2 = new JSONObject(str);
            int optInt = jSONObject2.optInt("cypher", -1);
            String optString = jSONObject2.optString("message");
            if (optInt < 0 || TextUtils.isEmpty(optString)) {
                ox.p("ServerBiddingHelper", "m_meta onResponse error ");
                return;
            }
            if (optInt == 2) {
                String dq2 = c.dq(optString);
                if (!TextUtils.isEmpty(dq2)) {
                    try {
                        jSONObject = new JSONObject(dq2);
                    } catch (Throwable th) {
                        ox.dq("ServerBiddingHelper", ">>>>> m_meta data error: " + th.toString());
                    }
                    if (jSONObject == null) {
                        ox.p("ServerBiddingHelper", "m_meta...data is null");
                        return;
                    } else {
                        if (TextUtils.isEmpty(jSONObject.toString())) {
                            ox.p("ServerBiddingHelper", "m_meta..data.string is null ");
                            return;
                        }
                        iaVar.ox(jSONObject.optString("request_id"));
                        iaVar.s(jSONObject.optString("server_bidding_extra"));
                        iaVar.p(jSONObject.optString("server_request_id"));
                        return;
                    }
                }
                jSONObject = null;
                if (jSONObject == null) {
                }
            } else {
                if (optInt == 1) {
                    String d2 = com.bytedance.msdk.ia.dq.d(optString, com.bytedance.msdk.ia.d.dq());
                    if (!TextUtils.isEmpty(d2)) {
                        try {
                            jSONObject = new JSONObject(d2);
                        } catch (Throwable th2) {
                            ox.dq("ServerBiddingHelper", "m_meta data error: ", th2);
                        }
                    }
                    jSONObject = null;
                } else {
                    if (optInt == 0) {
                        jSONObject = new JSONObject(optString);
                    }
                    jSONObject = null;
                }
                if (jSONObject == null) {
                }
            }
        } catch (Throwable th3) {
            ox.p("ServerBiddingHelper", "m_meta onResponse throwable ：".concat(String.valueOf(th3.toString())));
        }
    }

    private void dq(JSONObject jSONObject, String str, int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            jSONObject2.put(MediaFormat.KEY_WIDTH, i);
            jSONObject2.put(MediaFormat.KEY_HEIGHT, i2);
            jSONArray.put(jSONObject2);
            jSONObject.put(str, jSONArray);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(JSONObject jSONObject, JSONObject jSONObject2, InterfaceC0058dq interfaceC0058dq, boolean z, long j) {
        String str;
        String str2;
        JSONArray jSONArray;
        String str3;
        String str4;
        kk kkVar;
        JSONObject optJSONObject;
        long currentTimeMillis = System.currentTimeMillis() - j;
        if (jSONObject == null) {
            ox.p("ServerBiddingHelper", "Server Bidding Request onResponse...data is null");
            dq(-1, "data is null", interfaceC0058dq, z);
            return;
        }
        if (TextUtils.isEmpty(jSONObject.toString())) {
            ox.p("ServerBiddingHelper", "Server Bidding Request onResponse..data.string is null ");
            dq(-1, "data.string is null", interfaceC0058dq, z);
            return;
        }
        ia iaVar = new ia();
        iaVar.dq(jSONObject2);
        iaVar.ox(jSONObject.optString("request_id"));
        iaVar.s(jSONObject.optString("server_bidding_extra"));
        iaVar.p(jSONObject.optString("server_request_id"));
        kk kkVar2 = new kk();
        JSONObject optJSONObject2 = jSONObject.optJSONObject("winner");
        String str5 = "price";
        if (optJSONObject2 != null) {
            kkVar2.d(optJSONObject2.optInt("req_bidding_type"));
            kkVar2.ox(optJSONObject2.optString("price"));
            kkVar2.p(optJSONObject2.optString("load_price"));
            kkVar2.o(optJSONObject2.optString("adm"));
            kkVar2.s(optJSONObject2.optString(abn.EXTRA_UA_APP_NAME));
            kkVar2.mn(optJSONObject2.optString(PluginConstants.KEY_APP_ID));
            kkVar2.iw(optJSONObject2.optString("slot_id"));
            str = "ServerBiddingHelper";
            kkVar2.ia(optJSONObject2.optString("win_callback", null));
            kkVar2.kk(optJSONObject2.optString("fail_callback", null));
            kkVar2.dq(optJSONObject2.optInt("pricing_type", 1));
            iaVar.dq(kkVar2);
        } else {
            str = "ServerBiddingHelper";
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("winners");
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            str2 = str;
        } else {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i < optJSONArray.length()) {
                try {
                    kkVar = new kk();
                    optJSONObject = optJSONArray.optJSONObject(i);
                    jSONArray = optJSONArray;
                } catch (Throwable th) {
                    th = th;
                    jSONArray = optJSONArray;
                }
                try {
                    kkVar.d(optJSONObject.optInt("req_bidding_type"));
                    kkVar.ox(optJSONObject.optString(str5));
                    kkVar.p(optJSONObject.optString("load_price"));
                    kkVar.o(optJSONObject.optString("adm"));
                    kkVar.s(optJSONObject.optString(abn.EXTRA_UA_APP_NAME));
                    kkVar.mn(optJSONObject.optString(PluginConstants.KEY_APP_ID));
                    kkVar.iw(optJSONObject.optString("slot_id"));
                    str3 = str5;
                    try {
                        kkVar.ia(optJSONObject.optString("win_callback", null));
                        kkVar.kk(optJSONObject.optString("fail_callback", null));
                        kkVar.dq(optJSONObject.optString("m_aid", null));
                        kkVar.d(optJSONObject.optString("ad_extra", null));
                        try {
                            kkVar.dq(optJSONObject.optInt("pricing_type", 1));
                            arrayList.add(kkVar);
                            str4 = str;
                        } catch (Throwable th2) {
                            th = th2;
                            str4 = str;
                            ox.dq(str4, "new invalid_non_server_bidding_results winners parse error: " + th.toString());
                            i++;
                            str = str4;
                            str5 = str3;
                            optJSONArray = jSONArray;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        str4 = str;
                        ox.dq(str4, "new invalid_non_server_bidding_results winners parse error: " + th.toString());
                        i++;
                        str = str4;
                        str5 = str3;
                        optJSONArray = jSONArray;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    str3 = str5;
                    str4 = str;
                    ox.dq(str4, "new invalid_non_server_bidding_results winners parse error: " + th.toString());
                    i++;
                    str = str4;
                    str5 = str3;
                    optJSONArray = jSONArray;
                }
                i++;
                str = str4;
                str5 = str3;
                optJSONArray = jSONArray;
            }
            str2 = str;
            iaVar.dq(arrayList);
        }
        JSONObject optJSONObject3 = jSONObject.optJSONObject("auto_detail");
        if (optJSONObject3 != null) {
            iaVar.dq(optJSONObject3.optString("est_price"));
            iaVar.dq(optJSONObject3.optInt("est_price_source"));
            iaVar.d(optJSONObject3.optString("bidding_ecpm"));
        }
        JSONObject optJSONObject4 = jSONObject.optJSONObject("waterfall");
        if (optJSONObject4 != null) {
            ia.dq dqVar = new ia.dq();
            dqVar.dq(optJSONObject4.optString("version"));
            JSONArray optJSONArray2 = optJSONObject4.optJSONArray("adn_rit_conf");
            ArrayList arrayList2 = new ArrayList();
            if (optJSONArray2 != null && optJSONArray2.length() > 0) {
                for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                    try {
                        JSONObject optJSONObject5 = optJSONArray2.optJSONObject(i2);
                        no noVar = new no();
                        noVar.ox(optJSONObject5.optString(MediationConstant.EXTRA_ADN_NAME));
                        noVar.s(optJSONObject5.optString("adn_slot_id"));
                        arrayList2.add(noVar);
                    } catch (Throwable th5) {
                        ox.dq(str2, "new waterfallListJson parse error: " + th5.toString());
                    }
                }
            }
            dqVar.dq(arrayList2);
            iaVar.dq(dqVar);
        }
        JSONArray optJSONArray3 = jSONObject.optJSONArray("invalid_non_server_bidding_results");
        ArrayList arrayList3 = new ArrayList();
        if (optJSONArray3 != null && optJSONArray3.length() > 0) {
            for (int i3 = 0; i3 < optJSONArray3.length(); i3++) {
                try {
                    JSONObject optJSONObject6 = optJSONArray3.optJSONObject(i3);
                    com.bytedance.msdk.core.no.mn mnVar = new com.bytedance.msdk.core.no.mn();
                    mnVar.dq(optJSONObject6.optString(abn.EXTRA_UA_APP_NAME));
                    mnVar.d(optJSONObject6.optString("slot_id"));
                    mnVar.dq(optJSONObject6.optInt("req_bidding_type"));
                    mnVar.d(optJSONObject6.optInt("error_code"));
                    mnVar.ox(optJSONObject6.optString("error_msg"));
                    mnVar.p(optJSONObject6.optString("level_tag"));
                    arrayList3.add(mnVar);
                } catch (Throwable th6) {
                    ox.dq(str2, "new invalid_non_server_bidding_results parse error: " + th6.toString());
                }
            }
            iaVar.d(arrayList3);
        }
        dq(interfaceC0058dq, iaVar);
        dq(z, currentTimeMillis);
    }

    private void dq(boolean z, long j) {
        bl.dq(z ? "v4Enc_exchange" : "v2Enc_exchange", true, j, "");
    }

    private JSONObject ox() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appid", com.bytedance.msdk.core.d.no().ig());
            jSONObject.put(abn.EXTRA_UA_APP_NAME, com.bytedance.msdk.core.d.no().i());
            d(jSONObject);
            ox(jSONObject);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private void ox(JSONObject jSONObject) {
        if (com.bytedance.msdk.ia.iw.dq(com.bytedance.msdk.core.dq.getContext()) != null) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("latitude", r0.dq);
                jSONObject2.put("longitude", r0.f1101d);
                jSONObject.put("geo", jSONObject2);
            } catch (Exception unused) {
            }
        }
    }

    public String dq(Map<String, com.bytedance.msdk.dq.dq> map, Context context, com.bytedance.msdk.api.dq.d dVar, List<no> list, com.bytedance.msdk.core.no.d dVar2, int i, boolean z, JSONObject jSONObject) {
        return context == null ? "" : dq(map, context, dVar, list, null, dVar2, i, z, jSONObject, false);
    }

    public void dq(String str, InterfaceC0058dq interfaceC0058dq) {
        if (TextUtils.isEmpty(str)) {
            ox.p("ServerBiddingHelper", "Server Bidding Request onResponse...response is invalid");
            dq(interfaceC0058dq, new com.bytedance.msdk.api.dq(-1, "response is invalid"));
            return;
        }
        try {
            ia iaVar = new ia();
            JSONObject jSONObject = new JSONObject(str);
            JSONArray optJSONArray = jSONObject.optJSONArray("items");
            String optString = jSONObject.optString("m_meta");
            if (optJSONArray != null && optJSONArray.length() > 0) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < optJSONArray.length(); i++) {
                    try {
                        kk dq2 = dq(optJSONArray.optJSONObject(i));
                        if (dq2 != null) {
                            arrayList.add(dq2);
                        }
                    } catch (Throwable th) {
                        ox.dq("ServerBiddingHelper", "new invalid_non_server_bidding_results winners parse error: " + th.toString());
                    }
                }
                iaVar.dq(arrayList);
            }
            dq(iaVar, optString);
            dq(interfaceC0058dq, iaVar);
        } catch (Throwable th2) {
            String th3 = th2.toString();
            ox.p("ServerBiddingHelper", "Server Bidding onResponse throwable ：".concat(String.valueOf(th3)));
            if (TextUtils.isEmpty(th3)) {
                th3 = com.bytedance.msdk.api.dq.dq(-1);
            }
            dq(interfaceC0058dq, new com.bytedance.msdk.api.dq(-1, th3));
        }
    }

    public void dq(Map<String, com.bytedance.msdk.dq.dq> map, Context context, com.bytedance.msdk.api.dq.d dVar, List<no> list, List<s> list2, com.bytedance.msdk.core.no.d dVar2, int i, boolean z, final InterfaceC0058dq interfaceC0058dq) {
        final JSONObject jSONObject = new JSONObject();
        final long currentTimeMillis = System.currentTimeMillis();
        com.bytedance.sdk.component.kk.d.s d2 = com.bytedance.msdk.p.d.dq().d().d();
        d2.dq(com.bytedance.msdk.core.ox.ox());
        String ia = com.bytedance.msdk.core.d.no().ia();
        if (!TextUtils.isEmpty(ia)) {
            d2.d("X-Tt-Env", ia);
            d2.d("x-use-ppe", "1");
        }
        d2.d("User-Agent", com.bytedance.msdk.d.p.dq);
        final boolean s = com.bytedance.msdk.core.dq.d().s();
        if (s) {
            d2.d("x-pglcypher", "4");
            d2.dq("application/octet-stream", c.d(dq(map, context, dVar, list, list2, dVar2, i, z, jSONObject, true)));
        } else {
            d2.ox(dq(map, context, dVar, list, list2, dVar2, i, z, jSONObject, false));
        }
        d2.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.msdk.core.jy.dq.1
            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar3) {
                JSONObject jSONObject2;
                JSONObject jSONObject3;
                if (dVar3 == null) {
                    ox.p("ServerBiddingHelper", "Server Bidding Request onResponse...response is null");
                    dq.this.dq(-1, "response is null", interfaceC0058dq, s);
                    return;
                }
                int dq2 = dVar3.dq();
                if (c.dq(dVar3)) {
                    String dq3 = c.dq(dVar3.o());
                    if (TextUtils.isEmpty(dq3)) {
                        ox.p("ServerBiddingHelper", "Server Bidding Request onResponse...response v4 is empty");
                        dq.this.dq(dq2, "response is empty", interfaceC0058dq, s);
                        return;
                    }
                    try {
                        dq.this.dq(new JSONObject(dq3), jSONObject, interfaceC0058dq, s, currentTimeMillis);
                        return;
                    } catch (Throwable th) {
                        dq.this.dq(81014, th.getMessage(), interfaceC0058dq, s);
                        return;
                    }
                }
                if (TextUtils.isEmpty(dVar3.p())) {
                    ox.p("ServerBiddingHelper", "Server Bidding Request onResponse...response is empty");
                    dq.this.dq(dq2, "response is empty", interfaceC0058dq, s);
                    return;
                }
                try {
                    JSONObject jSONObject4 = new JSONObject(dVar3.p());
                    int optInt = jSONObject4.optInt("cypher", -1);
                    String optString = jSONObject4.optString("message");
                    if (optInt < 0 || TextUtils.isEmpty(optString)) {
                        int optInt2 = jSONObject4.optInt("status_code", -2);
                        int optInt3 = jSONObject4.optInt(MediationConstant.KEY_REASON, -2);
                        String optString2 = jSONObject4.optString("desc");
                        ox.p("ServerBiddingHelper", "Server Bidding onResponse error ");
                        dq.this.dq(optInt2, "reason is " + optInt3 + "，desc is " + optString2, interfaceC0058dq, s);
                        return;
                    }
                    if (optInt == 2) {
                        String dq4 = c.dq(optString);
                        if (!TextUtils.isEmpty(dq4)) {
                            try {
                                jSONObject3 = new JSONObject(dq4);
                            } catch (Throwable th2) {
                                ox.dq("ServerBiddingHelper", ">>>>> server bidding data error: " + th2.toString());
                            }
                            jSONObject2 = jSONObject3;
                        }
                        jSONObject3 = null;
                        jSONObject2 = jSONObject3;
                    } else {
                        if (optInt == 1) {
                            String d3 = com.bytedance.msdk.ia.dq.d(optString, com.bytedance.msdk.ia.d.dq());
                            if (!TextUtils.isEmpty(d3)) {
                                try {
                                    jSONObject3 = new JSONObject(d3);
                                } catch (Throwable th3) {
                                    ox.dq("ServerBiddingHelper", "server bidding data error: ", th3);
                                }
                                jSONObject2 = jSONObject3;
                            }
                        } else if (optInt == 0) {
                            jSONObject2 = new JSONObject(optString);
                        }
                        jSONObject3 = null;
                        jSONObject2 = jSONObject3;
                    }
                    dq.this.dq(jSONObject2, jSONObject, interfaceC0058dq, s, currentTimeMillis);
                } catch (Throwable th4) {
                    dq.this.dq(81006, th4.getMessage(), interfaceC0058dq, s);
                }
            }

            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
                int i2 = iOException instanceof SocketTimeoutException ? 44405 : 44404;
                ox.p("ServerBiddingHelper", "Server Bidding Request onError...errorCode=".concat(String.valueOf(i2)));
                dq.this.dq(i2, "request fail " + iOException.getMessage(), interfaceC0058dq, s);
            }
        });
    }
}
