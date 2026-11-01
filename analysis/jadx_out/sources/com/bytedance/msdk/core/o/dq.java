package com.bytedance.msdk.core.o;

import android.text.TextUtils;
import com.bytedance.msdk.ia.bl;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.ada;
import g.awf;
import g.eyt;
import g.tn;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class dq {

    /* renamed from: d, reason: collision with root package name */
    protected final bl f1000d;
    protected final Map<String, String> dq = new HashMap();

    public dq(String str) {
        this.f1000d = bl.dq(str, com.bytedance.msdk.core.dq.getContext());
        ox();
    }

    private String d(int i, String str) {
        if (!TextUtils.isEmpty(str) && i == 3) {
            String d2 = this.f1000d.d(str);
            if (!TextUtils.isEmpty(d2) && !"0".equals(d2)) {
                String[] split = d2.split("_");
                String str2 = split[0];
                String str3 = split[1];
                if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                    if (com.bytedance.msdk.core.dq.d().dq(System.currentTimeMillis() - Long.parseLong(str3))) {
                        return str2;
                    }
                    this.f1000d.iw(str);
                }
            }
        }
        return "0";
    }

    private void d(int i, String str, double d2) {
        if (TextUtils.isEmpty(str) || i != 3) {
            return;
        }
        this.f1000d.dq(str, d2 + "_" + System.currentTimeMillis());
        dq(str);
    }

    public static String dq(int i) {
        switch (i) {
            case 1:
                return MediationConstant.RIT_TYPE_BANNER;
            case 2:
                return MediationConstant.RIT_TYPE_INTERSTITIAL;
            case 3:
            case 4:
                return MediationConstant.RIT_TYPE_SPLASH;
            case 5:
                return "native";
            case 6:
            default:
                return null;
            case 7:
                return MediationConstant.RIT_TYPE_REWARD_VIDEO;
            case 8:
                return "fullscreenVideo";
            case 9:
                return MediationConstant.RIT_TYPE_DRAW;
            case 10:
                return MediationConstant.RIT_TYPE_INTERSTITIAL_FULL;
        }
    }

    private String dq(int i, String str) {
        if (TextUtils.isEmpty(str) || i != 3) {
            return "0";
        }
        double[] dArr = new double[2];
        Iterator<Map.Entry<String, String>> it = dq().entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            if (next != null) {
                String value = next.getValue();
                if (!TextUtils.isEmpty(value) && value.contains(str)) {
                    String[] split = value.split("_");
                    String str2 = split[0];
                    String str3 = split[1];
                    String str4 = split[2];
                    if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4)) {
                        if (com.bytedance.msdk.core.dq.d().dq(System.currentTimeMillis() - Long.parseLong(str4))) {
                            dArr[0] = dArr[0] + 1.0d;
                            dArr[1] = Double.parseDouble(str3) + dArr[1];
                        } else {
                            it.remove();
                            this.f1000d.iw(next.getKey());
                            String str5 = "label_size_" + str;
                            bl blVar = this.f1000d;
                            blVar.dq(str5, blVar.ox(str5) - 1);
                        }
                    }
                }
            }
        }
        return dq(dArr);
    }

    private String dq(String str, double d2) {
        return str + "_" + d2 + "_" + System.currentTimeMillis();
    }

    private String dq(String str, int i) {
        return "cpm_key_" + str + "_" + i;
    }

    private synchronized void dq(int i, String str, double d2) {
        String str2 = "label_size_" + str;
        int d3 = this.f1000d.d(str2, 0) + 1;
        String dq = dq(str, d3);
        String dq2 = dq(str, d2);
        dq(dq, i, dq2);
        this.f1000d.dq(dq, dq2);
        this.f1000d.dq(str2, d3);
    }

    private String ox(int i, String str) {
        if (!TextUtils.isEmpty(str) && i == 3) {
            String d2 = this.f1000d.d(str);
            if (!TextUtils.isEmpty(d2) && !"0".equals(d2)) {
                String[] split = d2.split("_");
                String str2 = split[0];
                String str3 = split[1];
                if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                    if (str3.matches("[0-9]+")) {
                        try {
                            if (com.bytedance.msdk.core.dq.d().dq(System.currentTimeMillis() - Long.parseLong(str3))) {
                                return str2;
                            }
                            this.f1000d.iw(str);
                        } catch (NumberFormatException unused) {
                            this.f1000d.iw(str);
                            eyt.bu("自定义上报 saveTime format exception valueTimestamp ".concat(d2));
                        }
                    } else {
                        this.f1000d.iw(str);
                        eyt.bu("自定义上报 saveTime is not number valueTimestamp ".concat(d2));
                    }
                }
            }
        }
        return "0";
    }

    private void ox(int i, String str, double d2) {
        if (TextUtils.isEmpty(str) || i != 3) {
            return;
        }
        this.f1000d.dq(str, d2 + "_" + System.currentTimeMillis());
        dq(str);
    }

    public String d(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        char[] charArray = str.toCharArray();
        StringBuilder sb = new StringBuilder();
        for (char c2 : charArray) {
            sb.append(this.dq.get(String.valueOf(c2)));
        }
        return sb.toString();
    }

    public void d() {
        Map<String, ?> d2 = this.f1000d.d();
        if (d2 != null) {
            for (Map.Entry<String, ?> entry : d2.entrySet()) {
                if (entry != null) {
                    dq(String.valueOf(entry.getKey()), String.valueOf(entry.getValue()));
                }
            }
        }
    }

    public abstract boolean d(String str, JSONObject jSONObject, Map<String, Object> map);

    public double dq(int i, String str, int i2) {
        if (i2 == 1) {
            return BigDecimal.valueOf(Double.parseDouble(dq(i, str))).setScale(2, RoundingMode.HALF_UP).doubleValue();
        }
        if (i2 == 3) {
            return BigDecimal.valueOf(Double.parseDouble(d(i, str))).setScale(2, RoundingMode.HALF_UP).doubleValue();
        }
        if (i2 == 2) {
            return BigDecimal.valueOf(Double.parseDouble(ox(i, str))).setScale(2, RoundingMode.HALF_UP).doubleValue();
        }
        return 0.0d;
    }

    public String dq(double[] dArr) {
        double d2 = dArr[0];
        return d2 != 0.0d ? new BigDecimal(dArr[1] / d2).setScale(2, RoundingMode.HALF_UP).toString() : "-1.0";
    }

    public abstract Map<String, String> dq();

    public abstract JSONObject dq(com.bytedance.msdk.core.no.p pVar);

    public void dq(double d2, double d3, String str, String str2) {
        if (this.f1000d == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        dq(str, "_last_post_cpm_", str2, d2);
        dq(str, "_last_bidding_cpm_", str2, d3);
    }

    public void dq(int i, String str, int i2, double d2) {
        if (i2 == 1) {
            dq(i, str, d2);
        } else if (i2 == 3) {
            d(i, str, d2);
        } else if (i2 == 2) {
            ox(i, str, d2);
        }
    }

    public void dq(String str) {
        for (int ox = this.f1000d.ox(tn.x("label_size_", str)); ox > 0; ox--) {
            try {
                String dq = dq(str, ox);
                this.f1000d.iw(dq);
                dq().remove(dq);
            } catch (Throwable th) {
                com.bytedance.msdk.dq.s.ox.p("CalculateLabelValueImpl", "clearFromSpByRit,ignore:" + th.toString());
            }
        }
    }

    public abstract void dq(String str, int i, String str2);

    public abstract void dq(String str, String str2);

    public void dq(String str, String str2, String str3, double d2) {
        String c2 = awf.c(str, str2);
        this.f1000d.dq(c2, str3 + "_" + d2);
    }

    public void dq(String str, JSONObject jSONObject, Map<String, Object> map) {
        if (!com.bytedance.msdk.core.dq.d().by() || TextUtils.isEmpty(str) || jSONObject == null) {
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        if (d(str, jSONObject2, map == null ? new HashMap<>() : map)) {
            try {
                jSONObject.putOpt(TTDownloadField.TT_LABEL, jSONObject2);
                if (map == null || map.get("cost_time") == null) {
                    return;
                }
                jSONObject.put("uvalueExcTime", map.get("cost_time"));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0120 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0125 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public double[] dq(int i, double d2, double d3, String str, String str2) {
        double d4;
        double d5;
        double d6;
        int i2;
        int i3;
        String c2 = awf.c(str2, "_last_post_cpm_");
        String c3 = awf.c(str2, "_last_load_cpm_");
        String c4 = awf.c(str2, "_last_bidding_cpm_");
        String d7 = this.f1000d.d(c2);
        String d8 = this.f1000d.d(c3);
        String d9 = this.f1000d.d(c4);
        if (!TextUtils.isEmpty(d7)) {
            String[] split = d7.split("_");
            if (split.length == 2) {
                String str3 = split[0];
                if (!TextUtils.isEmpty(str3) && TextUtils.equals(str3, str)) {
                    String str4 = split[1];
                    if (TextUtils.isEmpty(str4)) {
                        str4 = "0";
                    }
                    d4 = BigDecimal.valueOf(Double.parseDouble(str4)).setScale(2, RoundingMode.HALF_UP).doubleValue();
                    if (!TextUtils.isEmpty(d8)) {
                        String[] split2 = d8.split("_");
                        if (split2.length == 2) {
                            String str5 = split2[0];
                            if (!TextUtils.isEmpty(str5) && TextUtils.equals(str5, str)) {
                                String str6 = split2[1];
                                if (TextUtils.isEmpty(str6)) {
                                    str6 = "0";
                                }
                                d5 = BigDecimal.valueOf(Double.parseDouble(str6)).setScale(2, RoundingMode.HALF_UP).doubleValue();
                                if (!TextUtils.isEmpty(d9)) {
                                    String[] split3 = d9.split("_");
                                    if (split3.length == 2) {
                                        String str7 = split3[0];
                                        if (!TextUtils.isEmpty(str7) && TextUtils.equals(str7, str)) {
                                            String str8 = split3[1];
                                            d6 = BigDecimal.valueOf(Double.parseDouble(TextUtils.isEmpty(str8) ? "0" : str8)).setScale(2, RoundingMode.HALF_UP).doubleValue();
                                            if (d2 != 0.0d && d4 == 0.0d && d5 == 0.0d && d3 == 0.0d && d6 == 0.0d) {
                                                return new double[]{0.0d, 0.0d};
                                            }
                                            if (d2 == 0.0d) {
                                                d4 = d2;
                                                i2 = 2;
                                            } else {
                                                i2 = 3;
                                            }
                                            if (d3 == 0.0d) {
                                                d6 = d3;
                                                i3 = 5;
                                            } else {
                                                i3 = 4;
                                            }
                                            if (d4 < d5) {
                                                if (d4 >= d6) {
                                                    d5 = d4;
                                                }
                                                d5 = d6;
                                                i2 = i3;
                                            } else {
                                                if (d5 > d6) {
                                                    i2 = 1;
                                                }
                                                d5 = d6;
                                                i2 = i3;
                                            }
                                            if (i == 3 && i2 == 3) {
                                                i2 = 2;
                                            }
                                            if (i == 3 && i2 == 4) {
                                                i2 = 5;
                                            }
                                            return new double[]{d5, i2};
                                        }
                                    }
                                }
                                d6 = 0.0d;
                                if (d2 != 0.0d) {
                                }
                                if (d2 == 0.0d) {
                                }
                                if (d3 == 0.0d) {
                                }
                                if (d4 < d5) {
                                }
                                if (i == 3) {
                                    i2 = 2;
                                }
                                if (i == 3) {
                                    i2 = 5;
                                }
                                return new double[]{d5, i2};
                            }
                        }
                    }
                    d5 = 0.0d;
                    if (!TextUtils.isEmpty(d9)) {
                    }
                    d6 = 0.0d;
                    if (d2 != 0.0d) {
                    }
                    if (d2 == 0.0d) {
                    }
                    if (d3 == 0.0d) {
                    }
                    if (d4 < d5) {
                    }
                    if (i == 3) {
                    }
                    if (i == 3) {
                    }
                    return new double[]{d5, i2};
                }
            }
        }
        d4 = 0.0d;
        if (!TextUtils.isEmpty(d8)) {
        }
        d5 = 0.0d;
        if (!TextUtils.isEmpty(d9)) {
        }
        d6 = 0.0d;
        if (d2 != 0.0d) {
        }
        if (d2 == 0.0d) {
        }
        if (d3 == 0.0d) {
        }
        if (d4 < d5) {
        }
        if (i == 3) {
        }
        if (i == 3) {
        }
        return new double[]{d5, i2};
    }

    public void ox() {
        this.dq.put("0", "a");
        this.dq.put("1", "b");
        this.dq.put("2", "c");
        this.dq.put("3", ada.COLUMN_DOMAIN);
        this.dq.put("4", "e");
        this.dq.put("5", "f");
        this.dq.put("6", "g");
        this.dq.put("7", "h");
        this.dq.put("8", "i");
        this.dq.put("9", "j");
        this.dq.put(".", ada.COLUMN_KEY);
    }
}
