package com.bytedance.msdk.core.d;

import android.os.Build;
import android.text.TextUtils;
import com.bytedance.msdk.ia.bl;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import g.awf;
import g.tn;
import j$.time.Instant;
import j$.time.Period;
import j$.time.ZoneId;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class dq {
    private static final bl dq = bl.dq("tt_user_live_day_time", com.bytedance.msdk.core.dq.getContext());

    /* renamed from: d, reason: collision with root package name */
    private static final SimpleDateFormat f849d = new SimpleDateFormat("yyyy-MM-dd");
    private static final Calendar ox = Calendar.getInstance();

    public static int d() {
        if (com.bytedance.msdk.core.dq.d().er()) {
            return dq.d("user_live_times", 0);
        }
        return -1;
    }

    public static int d(String str) {
        if (!com.bytedance.msdk.core.dq.d().er() || str == null) {
            return -1;
        }
        return kk(dq.d(d(str, "_dislike_count_")));
    }

    private static String d(String str, String str2) {
        return TextUtils.isEmpty(str) ? str2 : awf.c(str, str2);
    }

    private static int dq(long j, long j2) {
        return Build.VERSION.SDK_INT >= 26 ? Period.between(Instant.ofEpochMilli(j).atZone(ZoneId.systemDefault()).f(), Instant.ofEpochMilli(j2).atZone(ZoneId.systemDefault()).f()).getDays() : (int) ((j2 - j) / AdBaseConstants.DEFAULT_DELAY_TIMESTAMP);
    }

    private static String dq(String str, int i) {
        return str + "_" + i;
    }

    private static String dq(Date date, int i) {
        if (date == null) {
            return null;
        }
        Calendar calendar = ox;
        calendar.setTime(date);
        calendar.add(5, i);
        return f849d.format(calendar.getTime());
    }

    public static void dq() {
        com.bytedance.msdk.dq.s.ox.d("AdLoadDynamicParamHandler", "recordUserLiveDay start => enableDynamicPolicy:" + com.bytedance.msdk.core.dq.d().er());
        if (com.bytedance.msdk.core.dq.d().er()) {
            long currentTimeMillis = System.currentTimeMillis();
            String mn = mn();
            com.bytedance.msdk.dq.s.ox.d("AdLoadDynamicParamHandler", "当前日期(key)：".concat(String.valueOf(mn)));
            bl blVar = dq;
            if (blVar.s(mn)) {
                com.bytedance.msdk.dq.s.ox.d("AdLoadDynamicParamHandler", "key=" + mn + "，同一天，不再重新记录");
                return;
            }
            if (TextUtils.isEmpty(blVar.d("start_index"))) {
                blVar.dq("start_index", mn);
                com.bytedance.msdk.dq.s.ox.d("AdLoadDynamicParamHandler", "START_INDEX=".concat(String.valueOf(mn)));
            }
            blVar.dq(mn, true);
            blVar.dq("user_live_times", blVar.d("user_live_times", 0) + 1);
            String d2 = blVar.d("start_index");
            if (TextUtils.equals(d2, mn)) {
                com.bytedance.msdk.dq.s.ox.d("AdLoadDynamicParamHandler", tn.r("startDay:", d2, ",key=", mn, "，同一天，不处理"));
            } else {
                try {
                    SimpleDateFormat simpleDateFormat = f849d;
                    Date parse = simpleDateFormat.parse(d2);
                    Date parse2 = simpleDateFormat.parse(mn);
                    if (parse2 == null) {
                        parse2 = new Date();
                    }
                    if (parse != null) {
                        int dq2 = dq(parse.getTime(), parse2.getTime());
                        int xz = com.bytedance.msdk.core.dq.d().xz();
                        if (xz - dq2 < 0) {
                            int i = dq2 - xz;
                            String dq3 = dq(parse, i);
                            if (!TextUtils.isEmpty(dq3)) {
                                blVar.dq("start_index", dq3);
                                dq(d2, parse, i);
                            }
                            com.bytedance.msdk.dq.s.ox.d("AdLoadDynamicParamHandler", "old-startIndex:" + d2 + ",diff=" + i + ",new-startIndex:" + dq3);
                        }
                    }
                } catch (ParseException e2) {
                    com.bytedance.msdk.dq.s.ox.p("AdLoadDynamicParamHandler", "计算生成日期出错：" + e2.getMessage());
                }
            }
            com.bytedance.msdk.dq.s.ox.d("AdLoadDynamicParamHandler", "recordUserLiveDay方法，执行耗时：" + (System.currentTimeMillis() - currentTimeMillis) + "ms");
        }
    }

    public static void dq(String str) {
        if (!com.bytedance.msdk.core.dq.d().er() || str == null) {
            return;
        }
        dq(str, "_dislike_count_");
    }

    private static void dq(String str, String str2) {
        String d2 = d(str, str2);
        String mn = mn();
        bl blVar = dq;
        String d3 = blVar.d(d2);
        com.bytedance.msdk.dq.s.ox.d("AdLoadDynamicParamHandler", "saveToSpByAction key:" + d2 + ",old value:" + d3);
        int i = 1;
        if (TextUtils.isEmpty(d3)) {
            blVar.dq(d2, dq(mn, 1));
            com.bytedance.msdk.dq.s.ox.d("AdLoadDynamicParamHandler", "saveToSpByAction 首次记录 key:" + d2 + "，new value：" + dq(mn, 1));
            return;
        }
        String[] split = d3.split("_");
        if (split.length == 2) {
            String str3 = split[0];
            if (!TextUtils.isEmpty(str3) && TextUtils.equals(mn, str3)) {
                i = 1 + Integer.parseInt(split[1]);
                mn = str3;
            }
            d3 = dq(mn, i);
        }
        com.bytedance.msdk.dq.s.ox.d("AdLoadDynamicParamHandler", "saveToSpByAction key:" + d2 + "，new value：" + d3);
        blVar.dq(d2, d3);
    }

    private static void dq(String str, Date date, int i) {
        if (i == 1) {
            bl blVar = dq;
            if (blVar.s(str)) {
                blVar.dq("user_live_times", Math.max(blVar.ox("user_live_times") - 1, 0));
            }
            blVar.iw(str);
            return;
        }
        int i2 = 0;
        while (i2 < i) {
            i2++;
            String dq2 = dq(date, i2);
            bl blVar2 = dq;
            if (blVar2.s(dq2)) {
                blVar2.dq("user_live_times", Math.max(blVar2.ox("user_live_times") - 1, 0));
            }
            blVar2.iw(dq2);
        }
    }

    public static void dq(List<com.bytedance.msdk.d.s> list, com.bytedance.msdk.core.no.d dVar) {
        if (!com.bytedance.msdk.core.dq.d().er() || list == null || dVar == null) {
            return;
        }
        for (com.bytedance.msdk.d.s sVar : list) {
            if (sVar != null) {
                sVar.dq().put(MediationConstant.KEY_GM_PRIME_RIT, dVar.c());
            }
        }
    }

    public static long ia(String str) {
        if (!com.bytedance.msdk.core.dq.d().er() || str == null) {
            return -1L;
        }
        String d2 = d(str, "_show_current_time_");
        String d3 = d(str, "_show_last_time_");
        bl blVar = dq;
        if (!TextUtils.equals(blVar.d("_show_gap_time_day"), mn())) {
            return 0L;
        }
        if (blVar.p(d3) == 0) {
            return 0L;
        }
        return Math.round((blVar.p(d2) - r5) / 1000);
    }

    public static int iw(String str) {
        if (!com.bytedance.msdk.core.dq.d().er() || str == null) {
            return -1;
        }
        return kk(dq.d(d(str, "_click_count_")));
    }

    public static long iw() {
        if (!com.bytedance.msdk.core.dq.d().er()) {
            return -1L;
        }
        float s = com.bytedance.msdk.core.d.no().s() / 60000.0f;
        if (s <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || s >= 1.0f) {
            return Math.round(s);
        }
        return 1L;
    }

    private static int kk(String str) {
        String str2;
        if (str == null) {
            return 0;
        }
        String[] split = str.split("_");
        if (split.length != 2 || (str2 = split[1]) == null) {
            return 0;
        }
        return Integer.parseInt(str2);
    }

    private static String mn() {
        return f849d.format(new Date());
    }

    public static void mn(String str) {
        if (!com.bytedance.msdk.core.dq.d().er() || str == null) {
            return;
        }
        String d2 = d(str, "_show_current_time_");
        String d3 = d(str, "_show_last_time_");
        bl blVar = dq;
        String d4 = blVar.d("_show_gap_time_day");
        String mn = mn();
        StringBuilder o = tn.o("recordSameDayTwoAdIntervalTime curKey:", d2, ",lastKey :", d3, ",today:");
        o.append(mn);
        o.append(",recordDate:");
        o.append(d4);
        com.bytedance.msdk.dq.s.ox.d("AdLoadDynamicParamHandler", o.toString());
        if (TextUtils.equals(d4, mn)) {
            blVar.dq(d3, blVar.p(d2));
            blVar.dq(d2, System.currentTimeMillis());
        } else {
            blVar.dq(d3, 0L);
            blVar.dq(d2, System.currentTimeMillis());
            blVar.dq("_show_gap_time_day", mn);
        }
    }

    public static void ox() {
        com.bytedance.msdk.dq.s.ox.d("AdLoadDynamicParamHandler", "recordSameDaySdkStartTimes start => enableDynamicPolicy:" + com.bytedance.msdk.core.dq.d().er());
        if (com.bytedance.msdk.core.dq.d().er()) {
            dq((String) null, "tt_sdk_start_count_");
        }
    }

    public static void ox(String str) {
        if (!com.bytedance.msdk.core.dq.d().er() || str == null) {
            return;
        }
        dq(str, "_show_count_");
    }

    public static int p() {
        if (com.bytedance.msdk.core.dq.d().er()) {
            return kk(dq.d("tt_sdk_start_count_"));
        }
        return -1;
    }

    public static int p(String str) {
        if (!com.bytedance.msdk.core.dq.d().er() || str == null) {
            return -1;
        }
        return kk(dq.d(d(str, "_show_count_")));
    }

    public static int s() {
        if (com.bytedance.msdk.core.dq.d().er()) {
            return dq(com.bytedance.msdk.core.d.no().ox(), System.currentTimeMillis());
        }
        return -1;
    }

    public static void s(String str) {
        if (!com.bytedance.msdk.core.dq.d().er() || str == null) {
            return;
        }
        dq(str, "_click_count_");
    }
}
