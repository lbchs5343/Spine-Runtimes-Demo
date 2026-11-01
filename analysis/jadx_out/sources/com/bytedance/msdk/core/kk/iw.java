package com.bytedance.msdk.core.kk;

import g.awf;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public class iw {
    public static String d(long j) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(j));
    }

    public static long dq(long j) {
        Date date = new Date();
        return dq((j < 3600000 ? date.getMinutes() <= 30 ? new Date(date.getYear(), date.getMonth(), date.getDate(), date.getHours(), 0, 0) : new Date(date.getYear(), date.getMonth(), date.getDate(), date.getHours(), 30, 0) : new Date(date.getYear(), date.getMonth(), date.getDate(), date.getHours(), 0, 0)).getTime(), j);
    }

    private static long dq(long j, long j2) {
        Date date = new Date(j2 + j);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        long time = date.getTime();
        StringBuilder l = awf.l(j, "old time ", " new time = ");
        l.append(simpleDateFormat.format(date));
        l.append(" 毫秒 = ");
        l.append(time);
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_IntervalEffectiveTime", l.toString());
        return time;
    }
}
