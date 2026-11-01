package com.bytedance.sdk.openadsdk.core.op;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Network;
import android.service.quicksettings.TileService;
import android.text.TextUtils;
import android.util.Pair;
import com.bytedance.sdk.component.utils.ia;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.o;
import com.bytedance.sdk.openadsdk.core.op.dq.d;
import com.bytedance.sdk.openadsdk.core.op.dq.ox;
import com.bytedance.sdk.openadsdk.core.ox.p;
import com.bytedance.sdk.openadsdk.core.r.ij;
import g.ekq;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile dq dq;
    private static final List<String> mp = Arrays.asList("-10001", "-10008", "103111", "105002", "-5", "-2", "-15", "-10", "-11");

    /* renamed from: d, reason: collision with root package name */
    private final Context f3335d;
    private String[] ia;
    private final ox ox;
    private final ij p;
    private final p s;
    private final AtomicBoolean mn = new AtomicBoolean(false);
    private long kk = 0;
    private long o = 0;
    private long no = 0;
    private long ig = 0;
    private boolean iw = true;

    private dq(Context context) {
        this.f3335d = context;
        this.ox = ox.dq(context);
        p dq2 = p.dq();
        this.s = dq2;
        if (dq2 == null) {
            this.p = new ij("", "-1", "", "");
            return;
        }
        String ox = dq2.ox("cr", 3300000L);
        if (TextUtils.isEmpty(ox)) {
            this.p = new ij("", "", "", "");
        } else {
            this.p = new ij(dq2.ox("vd", dq(ox)), dq2.ox("err", dq(ox)), dq2.ox("tk", dq(ox)), dq2.ox("cr", dq(ox)));
        }
        ox();
    }

    private boolean d() {
        p pVar = this.s;
        if (pVar != null) {
            String ox = pVar.ox("cr", 3300000L);
            if (!TextUtils.isEmpty(ox) && !TextUtils.isEmpty(this.s.ox("tk", dq(ox)))) {
                return true;
            }
        }
        return false;
    }

    private long dq(String str) {
        String str2;
        switch (str.hashCode()) {
            case 49:
                str2 = "1";
                break;
            case 50:
                return str.equals("2") ? 50000L : 3300000L;
            case 51:
                str2 = "3";
                break;
            default:
                return 3300000L;
        }
        str.equals(str2);
        return 3300000L;
    }

    private Pair<String, String> dq(Network network, String str, String str2, String str3) {
        String str4;
        JSONObject dq2 = d.dq(network, str, null);
        try {
            if (dq2 == null) {
                this.p.dq(str3, "6", "", str2);
                return new Pair<>("6", "");
            }
            String string = dq2.has("err_code") ? dq2.getString("err_code") : "6";
            if (this.ia == null || System.currentTimeMillis() - this.kk > 3600000) {
                this.ia = o.ia();
                this.kk = System.currentTimeMillis();
            }
            String[] strArr = this.ia;
            if (strArr.length == 2 && !TextUtils.isEmpty(strArr[1])) {
                this.p.dq(this.ia[1]);
            }
            if (dq2.has("province")) {
                this.p.d(dq2.getString("province"));
            }
            if (dq2.has(PluginConstants.KEY_ERROR_CODE)) {
                string = "0";
                str4 = dq2.getString(PluginConstants.KEY_ERROR_CODE);
            } else {
                str4 = "";
            }
            return new Pair<>(string, str4);
        } catch (Throwable unused) {
            return new Pair<>("6", "");
        }
    }

    public static dq dq(Context context) {
        if (dq == null) {
            synchronized (dq.class) {
                try {
                    if (dq == null) {
                        dq = new dq(context);
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00f0 A[Catch: Exception -> 0x0112, TryCatch #0 {Exception -> 0x0112, blocks: (B:12:0x0025, B:13:0x002c, B:21:0x00e7, B:23:0x00f0, B:25:0x00f6, B:30:0x0058, B:32:0x005e, B:33:0x0064, B:35:0x006a, B:37:0x0074, B:39:0x008d, B:40:0x0090, B:42:0x0094, B:45:0x009a, B:47:0x00aa, B:50:0x00ca, B:52:0x00de, B:54:0x0030, B:57:0x003a, B:60:0x0044), top: B:11:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void dq(Network network, String str, String str2, String str3, String str4, String str5) {
        char c2;
        String str6;
        String string;
        JSONObject dq2 = ("1".equals(str3) && TextUtils.isEmpty(str2)) ? null : d.dq(network, str, str2);
        String str7 = "";
        if (dq2 == null) {
            this.p.dq(str4, "6", "", str3);
            return;
        }
        try {
            switch (str3.hashCode()) {
                case 49:
                    if (str3.equals("1")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 50:
                    if (str3.equals("2")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 51:
                    if (str3.equals("3")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            if (c2 != 0) {
                if (c2 == 1) {
                    String valueOf = String.valueOf(dq2.getInt(ekq.EXTRA_PERMISSION_RESULT));
                    if ("0".equals(valueOf)) {
                        string = new JSONObject(com.bytedance.sdk.openadsdk.core.op.dq.dq.dq(false, s.dq(dq2.getString("data")), str5)).getString("accessCode");
                        str6 = string;
                        str7 = "0";
                    } else {
                        str7 = valueOf;
                        str6 = "";
                    }
                } else if (c2 != 2) {
                    str6 = "";
                } else {
                    String optString = dq2.has(PluginConstants.KEY_ERROR_CODE) ? dq2.optString(PluginConstants.KEY_ERROR_CODE) : "";
                    if (dq2.has("authurl")) {
                        String string2 = dq2.getString("authurl");
                        if (!TextUtils.isEmpty(string2)) {
                            Pair<String, String> dq3 = dq(network, string2 + "/api?appid=1554778161154", str3, str4);
                            Object obj = dq3.first;
                            if (obj != null) {
                                optString = (String) obj;
                            }
                            Object obj2 = dq3.second;
                            if (obj2 != null) {
                                str7 = (String) obj2;
                            }
                        }
                    }
                    str6 = str7;
                    str7 = optString;
                }
                this.p.dq(str4, str7, str6, str3);
                if (this.s == null || TextUtils.isEmpty(str6)) {
                    return;
                }
                this.s.p("vd", str4);
                this.s.p("cr", str3);
                this.s.p("err", str7);
                this.s.p("tk", str6);
                return;
            }
            JSONObject jSONObject = dq2.getJSONObject("body");
            String string3 = jSONObject.getString("resultCode");
            if ("103000".equals(string3)) {
                string = jSONObject.getString(TileService.EXTRA_TOKEN);
                str6 = string;
                str7 = "0";
                this.p.dq(str4, str7, str6, str3);
                if (this.s == null) {
                    return;
                } else {
                    return;
                }
            }
            str6 = "";
            str7 = string3;
            this.p.dq(str4, str7, str6, str3);
            if (this.s == null) {
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0108 A[EDGE_INSN: B:56:0x0108->B:45:0x0108 BREAK  A[LOOP:0: B:2:0x0006->B:54:0x0006], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00ca A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dq(Network network, List<String> list) {
        int hashCode;
        char c2;
        dq dqVar;
        String str;
        String str2;
        String dq2;
        String str3;
        for (String str4 : list) {
            try {
                hashCode = str4.hashCode();
            } catch (Exception unused) {
                this.p.dq("", "6", "", "");
            }
            if (hashCode == 15305274) {
                if (str4.equals("https://msg.cmpassport.com/h5/getMobile")) {
                    c2 = 0;
                    String str5 = null;
                    if (c2 != 0) {
                    }
                    str3 = str4;
                    dqVar.dq(network, str3, dq2, str2, str, str5);
                    if (TextUtils.isEmpty(this.p.d())) {
                    }
                }
                c2 = 65535;
                String str52 = null;
                if (c2 != 0) {
                }
                str3 = str4;
                dqVar.dq(network, str3, dq2, str2, str, str52);
                if (TextUtils.isEmpty(this.p.d())) {
                }
            } else if (hashCode != 899606572) {
                if (hashCode == 1964448447 && str4.equals("https://id6.me/gw/preuniq.do")) {
                    c2 = 1;
                    String str522 = null;
                    if (c2 != 0) {
                        dqVar = this;
                        str = "0";
                        str2 = "1";
                        dq2 = com.bytedance.sdk.openadsdk.core.op.dq.p.dq();
                    } else if (c2 == 1) {
                        String dq3 = com.bytedance.sdk.component.utils.dq.dq(8);
                        str4 = com.bytedance.sdk.openadsdk.core.op.dq.p.dq(str4, dq3);
                        str2 = "3";
                        dqVar = this;
                        str = "1";
                        dq2 = null;
                        str522 = dq3;
                    } else {
                        if (c2 != 2) {
                            this.mn.set(false);
                            return;
                        }
                        long j = this.no + 1;
                        this.no = j;
                        p pVar = this.s;
                        if (pVar != null) {
                            pVar.dq("uni_times", j);
                            if (this.no == 1) {
                                long currentTimeMillis = System.currentTimeMillis();
                                this.o = currentTimeMillis;
                                this.s.dq("uni_fir_ts", currentTimeMillis);
                            }
                        }
                        long currentTimeMillis2 = System.currentTimeMillis();
                        str = "2";
                        if (!c.dq(currentTimeMillis2, this.o) || this.no < 30 || currentTimeMillis2 - this.ig >= 3000000) {
                            long currentTimeMillis3 = System.currentTimeMillis();
                            this.ig = currentTimeMillis3;
                            p pVar2 = this.s;
                            if (pVar2 != null) {
                                pVar2.dq("uni_ts", currentTimeMillis3);
                            }
                            dqVar = this;
                            str3 = str4;
                            str2 = "2";
                            dq2 = null;
                            dqVar.dq(network, str3, dq2, str2, str, str522);
                            if (TextUtils.isEmpty(this.p.d())) {
                                if (!TextUtils.isEmpty(this.p.dq()) && !mp.contains(this.p.dq())) {
                                    break;
                                }
                            } else {
                                break;
                            }
                        } else {
                            this.p.dq("2", "7", "", "2");
                        }
                    }
                    str3 = str4;
                    dqVar.dq(network, str3, dq2, str2, str, str522);
                    if (TextUtils.isEmpty(this.p.d())) {
                    }
                }
                c2 = 65535;
                String str5222 = null;
                if (c2 != 0) {
                }
                str3 = str4;
                dqVar.dq(network, str3, dq2, str2, str, str5222);
                if (TextUtils.isEmpty(this.p.d())) {
                }
            } else {
                if (str4.equals("https://nisportal.10010.com:9001/api?appid=1554778161154")) {
                    c2 = 2;
                    String str52222 = null;
                    if (c2 != 0) {
                    }
                    str3 = str4;
                    dqVar.dq(network, str3, dq2, str2, str, str52222);
                    if (TextUtils.isEmpty(this.p.d())) {
                    }
                }
                c2 = 65535;
                String str522222 = null;
                if (c2 != 0) {
                }
                str3 = str4;
                dqVar.dq(network, str3, dq2, str2, str, str522222);
                if (TextUtils.isEmpty(this.p.d())) {
                }
            }
        }
        if (!TextUtils.isEmpty(this.p.dq()) && mp.contains(this.p.dq())) {
            this.iw = false;
        }
        this.mn.set(false);
        this.ox.d();
    }

    private void ox() {
        p pVar = this.s;
        if (pVar != null) {
            this.o = pVar.d("uni_fir_ts", 0L);
            if (c.dq(System.currentTimeMillis(), this.o)) {
                this.no = this.s.d("uni_times", 0L);
                this.ig = this.s.d("uni_ts", 0L);
            } else {
                this.no = 0L;
                this.ig = 0L;
            }
        }
    }

    public ij dq() {
        if (d() || !this.iw) {
            return this.p;
        }
        if (!this.mn.compareAndSet(false, true)) {
            return this.p;
        }
        ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.op.dq.1
            /* JADX WARN: Removed duplicated region for block: B:10:0x00cf  */
            /* JADX WARN: Removed duplicated region for block: B:13:0x00e2  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void run() {
                int i;
                String str;
                final ArrayList arrayList = new ArrayList();
                if (com.bytedance.sdk.openadsdk.core.k.d.dq(dq.this.f3335d, "android.permission.ACCESS_NETWORK_STATE") != -1) {
                    i = dq.this.ox.dq();
                    if (i != 3 || com.bytedance.sdk.openadsdk.core.k.d.dq(dq.this.f3335d, "android.permission.CHANGE_NETWORK_STATE") != -1) {
                        if (i == 3 || i == 2) {
                            String dq2 = com.bytedance.sdk.openadsdk.core.op.dq.s.dq();
                            dq2.getClass();
                            switch (dq2) {
                                case "0":
                                    dq.this.iw = false;
                                    str = "3";
                                    break;
                                case "1":
                                    arrayList.add("https://msg.cmpassport.com/h5/getMobile");
                                    str = "";
                                    break;
                                case "2":
                                    arrayList.add("https://nisportal.10010.com:9001/api?appid=1554778161154");
                                    str = "";
                                    break;
                                case "3":
                                    arrayList.add("https://id6.me/gw/preuniq.do");
                                    str = "";
                                    break;
                                case "4":
                                case "6":
                                    arrayList.add("https://msg.cmpassport.com/h5/getMobile");
                                    arrayList.add("https://id6.me/gw/preuniq.do");
                                    arrayList.add("https://nisportal.10010.com:9001/api?appid=1554778161154");
                                    str = "";
                                    break;
                                default:
                                    dq.this.iw = false;
                                    str = "2";
                                    break;
                            }
                        } else {
                            str = "4".concat(String.valueOf(i));
                        }
                        if (TextUtils.isEmpty(str)) {
                            dq.this.p.dq("", str, "", "");
                            dq.this.mn.set(false);
                            return;
                        }
                        dq.this.p.dq("", "1", "", "");
                        if (i == 3) {
                            dq.this.ox.dq(new ox.dq() { // from class: com.bytedance.sdk.openadsdk.core.op.dq.1.1
                                @Override // com.bytedance.sdk.openadsdk.core.op.dq.ox.dq
                                public void dq(Network network) {
                                    dq.this.dq(network, (List<String>) arrayList);
                                }
                            });
                            return;
                        } else {
                            dq.this.dq((Network) null, arrayList);
                            return;
                        }
                    }
                } else {
                    i = 0;
                }
                dq.this.iw = false;
                str = "5";
                if (TextUtils.isEmpty(str)) {
                }
            }
        });
        return this.p;
    }
}
